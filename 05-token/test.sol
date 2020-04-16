pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Token {
  constructor() Token(20) public { }

  function echidna_test_balance() public returns (bool) {
    return balances[msg.sender] <= 20;
  }
}
