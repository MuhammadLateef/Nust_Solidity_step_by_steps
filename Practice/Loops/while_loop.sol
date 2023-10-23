// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// While Loop :
// ● The 'while' loop stands as a foundational loop in Solidity, serving to iteratively
// execute a designated block of code contingent upon a specified condition's validity.
// ● It is commonly used when the number of iterations is unknown beforehand.

contract While_loop {
    /* 
    syntex of while loop
     while(condition){
     code to executed
     }

    */

    // Here ‘while’ is a keyword followed by condition in ‘( )’. The piece of code needs to be
    // repeated as long as condition is satisfied, comes in the ‘{ }’.
    // ● The loop first checks the condition. If it evaluates to true, the code inside the loop is
    // executed.
    // ● After each iteration, the condition is checked again until it becomes false, at which
    // point the loop terminates

    uint256[] public arr;

    function NaturalNum(uint256 max) public returns (uint256[] memory) {
        uint256 i = 1;
        while (i <= max) {
            arr.push(i);
            i++;
        }
        return arr;
    }

    // exercise:

    function calculatedSumAverage(uint256[5] memory number)
        public
        pure
        returns (uint256 sum)
    {
        uint256 totalSum = 0;
        uint256 i = 0;
        while (i < number.length) {
            totalSum += number[i];
            i++;
        }
        return sum = totalSum;
    }

    // exercise : returns the average

    function calculatedAverge(uint256[] memory number)
        public
        pure
        returns (uint256 average)
    {
        uint256 totalSum = 0;
        uint256 i = 0;
        while (i < number.length) {
            totalSum = totalSum + number[i];
            average = totalSum / number[i];
            i++;
        }

        return average;
    }

    // Exercise : Fibonacci series: 0 1 1 2 3 5 8 13 24 .....

    function Fibonacci_series(uint256 n)
        public
        pure
        returns (uint256[] memory)
    {
        uint256[] memory fibonacciSeries = new uint256[](n);
        if (n >= 1) {
            fibonacciSeries[0] = 0;
        }
        if (n >= 2) {
            fibonacciSeries[1] = 1;
        }
        uint i = 2;
        while(i<n) {
            fibonacciSeries[i] = fibonacciSeries[i-1] + fibonacciSeries[i-2];
            i++;
        }
        // for(uint i = 2;i < n; i++){
        //     fibonacciSeries[i] = fibonacciSeries[i-1] + fibonacciSeries[i-2];
        // }
 
        return fibonacciSeries;
    }
}
