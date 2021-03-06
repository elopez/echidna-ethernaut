pragma solidity ^0.5.0;

import 'contract.sol';

contract BusyLoop {
  function() payable external {
    assert(false);
  }
}

contract Test is Denial {
  BusyLoop bl;

  constructor() public payable {
    // hint echidna it can use this contract addr
    bl = new BusyLoop();
  }

  function echidna_test_balance() public returns (bool) {
    uint startBalance = owner.balance;
    withdraw();
    uint endBalance = owner.balance;
    return startBalance < endBalance;
  }
}
