import { network } from "hardhat";

async function main() {
  const { ethers } = await network.connect();

  const guestbook = await ethers.deployContract("Guestbook");

  await guestbook.waitForDeployment();

  console.log("Guestbook deployed to:", await guestbook.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});