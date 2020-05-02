pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is AlienCodex {
  function calc_offset_zero(uint b) public returns (uint) {
    // "codex" is probably in the first 10 slots
    b = b % 10;
    return uint(-1) - uint(keccak256(abi.encodePacked(b))) + 1;
  }

  function echidna_test_owner() public returns (bool) {
    return owner() == msg.sender;
  }
}
