const { expect } = require("chai");
const hre = require("hardhat");

describe("CoinCoin42 contract", () => {
  let Token;
  let coincoinToken;
  let owner;
  let addr1;
  let addr2;
  let tokencap = 42000000;
  let tokenblockreward = 50;

  beforeEach(async function () {
    Token = await hre.ethers.getContractFactory("CoinCoin42");
    [owner, addr1, addr2] = await hre.ethers.getSigners();

    coincoinToken = await Token.deploy(tokencap, tokenblockreward);
  });
});
