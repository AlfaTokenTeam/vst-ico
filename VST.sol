pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract VST is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function VST(address _owner)  UpgradeableToken(_owner) {
    name = "VST";
    symbol = "VST";
    totalSupply = 2000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}