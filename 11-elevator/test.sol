pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Building {
  Elevator lift;
  constructor() public {
    lift = new Elevator();
  }

  function pwn(uint x) public {
    lift.goTo(x);
  }

  function isLastFloor(uint) public returns (bool) {
    return true;
  }

  function echidna_test_floor() public returns (bool) {
    return !lift.top();
  }
}
