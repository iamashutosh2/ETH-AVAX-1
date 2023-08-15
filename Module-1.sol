// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ashutosh {
    address public owner;
    uint256 public number = 5;

    event numberUpdated(uint256 newnumber);

    constructor() {
        owner = msg.sender;
    }

    function updatenumber(uint256 newnumber) external {
        // Use require() to validate input
        require(newnumber > 0, "number must be greater than zero");
 
        // Use assert() to check for invariants
        assert(msg.sender == owner);

        // Use revert() to provide custom error message
        if (newnumber > 10) {
            revert("number cannot exceed 100");
        }

        number = newnumber;
        emit numberUpdated(newnumber);
    }
}
