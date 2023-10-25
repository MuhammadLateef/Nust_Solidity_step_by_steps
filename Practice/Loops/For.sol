// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// For Loop:
// ● The for loop is a compact and commonly used loop when the number of iterations is
// known in advance.
// ● It consists of three parts: initialization, condition, and iteration statement.
// ● The loop continues executing as long as the condition is true.

/*
syntex :
 
 for(initialization; condition; increment){
    code to be executed;
    }
*/
contract Forloop {
    uint256[] public numberTable;

    function table(uint256 num) public {
        uint256 temp = num;
        for (uint256 i = 1; i <= 10; i++) {
            numberTable.push(num);
            num += temp;
        }
    }

    function get() public view returns (uint256[] memory) {
        return numberTable;
    }

    function rset() public {
        delete numberTable;
    }

    //Exercise: fixed sized array seperate the positive number into new dynamic Array
    // int256[10] public arr = [-9, 8, 7, -2, 1,-6,7,-8,3];
    // int256[] public positarr;

    // function positIntiger() public {
    //     for (uint256 i = 0; i < arr.length; i++) {
    //         if (arr[i] >= 0) {
    //             positarr.push(arr[i]);
    //         }
    //     }
    // }

    // function getPosit() public view returns (int256[] memory) {
    //     return positarr;
    // }

    int256[6] public arr = [-6, 5, -4, 3, -2, 1];
    int256[] public positarr;

    function postiInteger() public {
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] > 0) {
                positarr.push(arr[i]);
            }
        }
    }

    function getposit() public view returns (int256[] memory) {
        return positarr;
    }

    //    Exercise: factorial of number

    function creatFact(uint256 n) public pure returns (uint256) {
        uint256 factValue = 1;
        if (n == 0) {
            factValue = 1;
            return factValue;
        }
      
        for (uint256 i = 1; i <= n; i++) {
            factValue = factValue*i;
        }

        return factValue;
    }

}
