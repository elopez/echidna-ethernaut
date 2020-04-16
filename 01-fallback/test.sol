pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Fallback {
  constructor() Fallback() public payable { }

  function echidna_test_owner() public returns (bool) {
    return owner == msg.sender;
  }

  function echidna_test_balance() public returns (bool) {
    return address(this).balance >= 1000;
  }
}
