pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Building {
  uint constant LOOP_SZ = 5;
  bool[LOOP_SZ][] isLastFloor_impls;
  mapping (uint => uint) isLastFloor_map;
  mapping (uint => uint) isLastFloor_n;
  uint private used;
  Elevator lift;

  constructor() public {
    lift = new Elevator();
  }

  function pwn(uint x) public {
    lift.goTo(x);
  }

  function isLastFloor_value(bool[LOOP_SZ] memory _isLastFloor_impl) public {
    isLastFloor_impls.push(_isLastFloor_impl);
  }

  function isLastFloor_init(uint x) private {
    assert(isLastFloor_impls.length > used);
    isLastFloor_map[x] = used + 1;
    used = used + 1;
  }

  function isLastFloor(uint x) public returns (bool) {
    if (isLastFloor_map[x] == 0)
      isLastFloor_init(x);

    uint r = isLastFloor_n[x];
    isLastFloor_n[x] = (r + 1) % LOOP_SZ;
    return isLastFloor_impls[isLastFloor_map[x] - 1][r];
  }

  function echidna_test_floor() public returns (bool) {
    return !lift.top();
  }
}
