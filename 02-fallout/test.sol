pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is Fallout {
  function echidna_test_owner() public returns (bool) {
    return owner == address(0) || owner == msg.sender;
  }
}
