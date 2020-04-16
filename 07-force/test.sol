pragma solidity ^0.5.0;

import 'contract.sol';

contract Test {
  Force t;

  constructor() public payable {
    t = new Force();
  }

  function boom() public {
    address payable a = address(uint160(address(t)));
    selfdestruct(a);
  }

  function echidna_test_balance() public returns (bool) {
    return address(t).balance == 0;
  }
}
