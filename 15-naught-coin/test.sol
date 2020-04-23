pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is NaughtCoin {
  address constant player = address(0x10000);

  constructor() NaughtCoin(player) public {}

  function echidna_test_balance() public returns (bool) {
    return balanceOf(player) == INITIAL_SUPPLY;
  }
}
