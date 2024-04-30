// contracts/CoinCoin.sol
// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract CoinCoin42 is ERC20Capped {
    address payable public owner;
    uint256 public blockReward;
    constructor(uint256 cap, uint256 reward) ERC20("CoinCoin42", "COCO") ERC20Capped(cap * (10**decimals())) {
        owner = payable(msg.sender);
        _mint(owner, 21000000 * (10**decimals()));
        blockReward = reward * (10**decimals());
    }

    function _mintMinerReward() internal {
      _mint(block.coinbase, blockReward);
    }

    function _update(address from, address to, uint256 value) internal virtual override{
        if(from != address(0) && to != block.coinbase && block.coinbase != address(0) && ERC20.totalSupply() + blockReward <= cap()) {
            _mintMinerReward();
        }
        super._update(from, to, value);
    }

    function setBlockReward(uint256 reward) public onlyOwner {
      blockReward = reward * (10**decimals());
    }

    function burn(address account, uint256 value) public onlyOwner {
        _burn(account, value);
    }

    modifier onlyOwner {
      require(msg.sender == owner, "Only the owner can call this function");
      _;
    }
}
