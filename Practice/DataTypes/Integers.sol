// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;
contract IntegerVariables {
    //sign integers 
    int8 public int8Var;
    int16 public int16Var;
    int32 public int32Var;
    int64 public int64Var;
    int128 public int128Var;
    int256 public int256Var;
int public minInt8 = type(int8).min;   // -128
int public maxInt8 = type(int8).max;  // 127
    //unsign integers range 0-256
    uint8 public uint8Var;
    uint16 public uint16Var;
    uint32 public uint32Var;
    uint64 public uint64Var;
    uint128 public uint128Var;
    uint256 public uint256Var;

    uint public minUint8 = type(uint8).min;  // 0
    uint public maxUint8 = type(uint8).max; // 255
}