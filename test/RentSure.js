const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("RentSure", function () {
  let rentSure, landlord, tenant;
  const oneMonth = 30 * 24 * 60 * 60;

  beforeEach(async function () {
    [landlord, tenant] = await ethers.getSigners();
    const RentSure = await ethers.getContractFactory("RentSure");
    rentSure = await RentSure.connect(landlord).deploy();

    const rent = ethers.utils.parseEther("1");
    const deposit = ethers.utils.parseEther("2");
    const penalty = ethers.utils.parseEther("0.5");

    await rentSure.connect(landlord).registerLease(
      tenant.address,
      rent,
      penalty,
      1, // 1 month
      { value: deposit }
    );
  });

  it("should let tenant pay rent", async function () {
    await ethers.provider.send("evm_increaseTime", [oneMonth]);
    await ethers.provider.send("evm_mine");

    await expect(() =>
      rentSure.connect(tenant).payRent({ value: ethers.utils.parseEther("1") })
    ).to.changeEtherBalances(
      [landlord, tenant],
      [ethers.utils.parseEther("1"), ethers.utils.parseEther("-1")]
    );
  });

  it("should apply penalty for missed rent", async function () {
    await ethers.provider.send("evm_increaseTime", [oneMonth + 1]);
    await ethers.provider.send("evm_mine");

    const landlordBalanceBefore = await ethers.provider.getBalance(landlord.address);
    await rentSure.connect(landlord).applyPenalty();
    const landlordBalanceAfter = await ethers.provider.getBalance(landlord.address);

    expect(landlordBalanceAfter).to.be.above(landlordBalanceBefore);
    const remainingDeposit = await rentSure.depositAmount();
    expect(remainingDeposit).to.equal(ethers.utils.parseEther("1.5")); // 2 - 0.5
  });

  it("should end lease and return remaining deposit", async function () {
    await ethers.provider.send("evm_increaseTime", [oneMonth + 1]);
    await ethers.provider.send("evm_mine");

    await rentSure.connect(landlord).endLease();
    expect(await rentSure.state()).to.equal(2); // Ended
  });
});
