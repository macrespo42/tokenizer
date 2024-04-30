async function main() {
  const CoinCoin = await ethers.getContractFactory("CoinCoin42");
  const CoinCoinContract = await CoinCoin.deploy(42000000, 50);
  console.log(CoinCoinContract);
  console.log("Contract deployed to address:", CoinCoinContract.address);
}
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    process.exit(1);
  });
