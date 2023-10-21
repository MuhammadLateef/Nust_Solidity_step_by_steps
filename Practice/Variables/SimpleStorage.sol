// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract SimpleStorage {
    uint public num;
    function input(uint _num) public {
        num = _num;
    }
    function output() public view returns (uint) {
        return num;
    }
}