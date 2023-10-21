// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract LocalVariable {
    function getResult () public pure returns (uint) {
        //Initializing local variables
        uint local_variable1 = 5;
        uint local_variable2 = 2;
        uint result = local_variable1 + local_variable2;
        return result;
    }
}