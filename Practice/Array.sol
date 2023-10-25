// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
Arrays: two types
        1- Fixed-sized arrays
        Example: 
                 uint[8] array1;
                 byte[5] array2;
                 address[100] array3;
                 int[2] array4;       
        2- Dynamic -sized arrays
        Example: 
                uint[] array5;
                bytes[] array6; also write
                bytes arrau6;
                address[] array7;
                int[] array8;
*/

// 1) length:
contract FArray{
    uint[4] public arr;
    function fixedArray() public view returns (uint) {
        return arr.length;
    }

//  2) Push :
   int[] public Darr;
   function Dynfunc(int _x) public {
    Darr.push(_x);
   }
//    3) Pop : remove last element of the array.

function upop() public{
    Darr.pop();
}
// 4) Delete: by deleting the elements in an array it cannot effect the length of array 
uint[6] public arr6 = [1,2,3,4,5,6];
   function udelete(uint _index) public{
    delete arr6[_index];
   }
   function udelete1() public{
    delete arr6;
   }

 // 5) Returing An Array: 
    // memory keyword and calldata keyword must be used in returns type for an array 
//    1. For a fixed-sized array, We must mention the length of the array as well. 
    uint[2] public arr1 = [5,6];
    function get1() public view returns (uint[2] memory) {
        return arr1;
    }
//  2. For dynamic arrays, length of the array will not be mentioned.
    uint[] public arr2;
    function get2() public view returns (uint[] memory) {
        return arr2;
    }
// 6 Returning & Giving Value To Element Of An Array..
    // Returning Element of an array 
    uint[3] public arr3 = [23,45,56];
    function getElement(uint _i) public view returns (uint) {
        return arr3[_i];
    }

    //Giving value to an element of an array..
    uint[5] public arr4;
    function give(uint _i ,uint value) public {
        arr[_i] = value;
    }
}