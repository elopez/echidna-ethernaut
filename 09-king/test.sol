pragma solidity ^0.5.0;

import 'contract.sol';

contract KingOfReverts {
  constructor() public payable {}

  function() external payable {
    revert();
  }

  function pwn() public {
    Test(0x1337).get_king().transfer(10);
  }
}

contract Test {
  King k;

  constructor() public payable {
    k = (new King).value(1)();

    // hint echidna
    (new KingOfReverts).value(20)();
  }

  function echidna_test_owner() public returns (bool) {
    address(k).call("");
    return address(this) == k._king();
  }

  function get_king() public returns (address payable) {
    return address(k);
  }

  // we will receive some eth from the contract
  // if someone else becomes king
  function() external payable { }
}
