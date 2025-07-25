const hre = require("hardhat");

async function main() {
  const RentSure = await hre.ethers.getContractFactory("RentSure");
  const rentSure = await RentSure.deploy();
  await rentSure.waitForDeployment();

  console.log(`RentSure deployed to: ${await rentSure.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
