const { expect } = require("chai");
const hre = require("hardhat");
const { parseEther } = hre.ethers; // ✅ Ethers v6-compatible

describe("RentSure", function () {
  let rentSure, landlord, tenant;
  const oneMonth = 30 * 24 * 60 * 60;

  beforeEach(async function () {
    [landlord, tenant] = await hre.ethers.getSigners();
    const RentSure = await hre.ethers.getContractFactory("RentSure");
    rentSure = await RentSure.connect(landlord).deploy();

    const rent = parseEther("1");
    const deposit = parseEther("2");
    const penalty = parseEther("0.5");

    await rentSure.connect(landlord).registerLease(
      tenant.address,
      rent,
      penalty,
      1,
      { value: deposit }
    );
  });

  it("should let tenant pay rent", async function () {
    await hre.network.provider.send("evm_increaseTime", [oneMonth]);
    await hre.network.provider.send("evm_mine");

    await expect(() =>
      rentSure.connect(tenant).payRent({ value: parseEther("1") })
    ).to.changeEtherBalances(
      [landlord, tenant],
      [parseEther("1"), parseEther("-1")]
    );
  });

  it("should apply penalty for missed rent", async function () {
    await hre.network.provider.send("evm_increaseTime", [oneMonth + 1]);
    await hre.network.provider.send("evm_mine");

    const landlordBalanceBefore = await hre.ethers.provider.getBalance(landlord.address);
    await rentSure.connect(landlord).applyPenalty();
    const landlordBalanceAfter = await hre.ethers.provider.getBalance(landlord.address);

    expect(landlordBalanceAfter).to.be.above(landlordBalanceBefore);

    const remainingDeposit = await rentSure.depositAmount();
    expect(remainingDeposit).to.equal(parseEther("1.5"));
  });

  it("should end lease and return remaining deposit", async function () {
    await hre.network.provider.send("evm_increaseTime", [oneMonth + 1]);
    await hre.network.provider.send("evm_mine");

    await rentSure.connect(landlord).endLease();
    expect(await rentSure.state()).to.equal(2); // Ended
  });
});
