// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BooleanOperations {
    bool public _bool = true;
    function logicalNot() public view returns (bool) {
        return !_bool;
    }
    function logicalAnd() public view returns (bool) {
        return _bool&&!_bool;
    }
    function logicalOr() public view returns (bool) {
        return _bool||!_bool;
    }
    function logicalEquality() public view returns (bool) {
        return _bool==!_bool;
    }
    function logicalInEquility() public view returns (bool) {
        return _bool!=!_bool;
    }
}


contract ANDGate {
    bool public _bool1 = false;
    function Equality() public view returns (bool) {
        return _bool1==_bool1;
    }
    function logicalNot() public view returns (bool) {
        return _bool1==!_bool1;
    }
    function logicalNot1() public view returns (bool) {
        return !_bool1==_bool1;
    }
    function logicalAND() public view returns (bool) {
        return !_bool1&&!_bool1;
    }
}