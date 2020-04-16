pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is CoinFlip {
  function echidna_test_flip() public returns (bool) {
    return consecutiveWins < 10;
  }
}
