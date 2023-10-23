// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 
//     if/else if/else statement:
// ● The if/else if/else statement allows the program to make decisions among several
// options.
// ● It checks multiple conditions in a sequence and executes the block of code associated
// with the first true condition.
// ● If none of the conditions are true, the code within the else block (if present) is executed

contract IfElseStatement {
    function checkNumber (uint256 _number) public pure returns(string memory) {
        if(_number >10) {
            return "the Input Number is Greater then 10 .";
        }
        else if(_number==10) {
            return "The Input Number is Equal to 10 .";
        }
        else {
            return "The Number is Smaller then 10 . ";
        }
    } 
}

// Task : Design a Solidity contract named IntegerChecker that takes integers (both +ve and -ve
// numbers) as input and recommends the data type (uint, int) as output.

contract IntegerChecker {
    function InputNumber (int256 _number) public pure returns (string memory) {
        if(_number>=0) {
            return "uint (+ve)";
        } 
        else{
            return "int (-ve)";
        }
    }
}