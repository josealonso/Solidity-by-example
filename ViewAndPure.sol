// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ViewAndPure {
    uint public x = 1;

    // Promise not to modify the state.
    function addToX(uint y) public view returns (uint) {
        //  x = x + 2;      // Compilation error, because the expression (potentially) modifies the state.
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        // uint z = x + 2;      // Compilation error, because the expression (potentially) reads from the state.
        return i + j;
    }
}

