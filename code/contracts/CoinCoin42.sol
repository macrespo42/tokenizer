// contracts/CoinCoin.sol
// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contract/token/ERC20/ERC20.sol";

contract CoinCoin42 is ERC20 {
    constructor(uint256 initialSupply) ERC20("CoinCoin42", "COCO") {
        _mint(msg.sender, initialSupply);
    }
}
