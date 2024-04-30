# Tokenizer

## 42CoinCoin - Design

Initial supply: Send to owner - 21,000,000
Max supply: capped - 42,000,000


## Blockchain platform

I choose [hardhat](https://hardhat.org/) for this project, hardat got all i need to develop smart contract locally
He also handle deployment and testing. I also use remix a bit at the beginning remix provide an online IDE so don't need
to install anything it was practical to make some test at the beginning.


## Token type

ERC-20 token choosen for this project, its a reliable token type run on ethereum blockchain like the famous bitcoin,
bitcoin-cash and ether, Its a fungible token type (each Token be exactly the same type and value of another Token)
its becoming an industry standard and are easy to build and deploy

an Example of another token could be ERC721 who the main difference with ERC-20 is these are non fungible token.
It can be use for NFT for example.


## Deployment

Sepolia Testnet. It's the latest Testnet of ethereum blockchain perfect to deploy our token
without paying real money.
You can find more information on deployment in the deployment directory.

## Project structure

### Code

In the ``code/`` directory you gonna find all the source code of the Token, deployments scripts, configs etc...

### Deployment

All information needed to deploy the token are located in the ``deployment/`` directory

### Documentation

In the ``documentation/`` directory you can find information about the CoinCoin token how it work and how to interact
with it.
