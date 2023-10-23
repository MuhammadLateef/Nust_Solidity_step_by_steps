// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Do-While Loop:
// ● The do-while loop is similar to the while loop, but it guarantees that the code block is
// executed at least once, even if the condition is initially false.
// ● The condition is checked at the end of the loop.

/*
Syntex of do while loop
do {
    code to be executed
  }
    white(condition);
    
*/
contract do_while_loop {
    function iterate(uint256 cond) public pure returns (uint256) {
        uint256 i;
        uint256 iteration;
        do {
            iteration++;
            i++;
        } while (i < cond);
        //If you input the value of 'cond' as 0, the condition will be false
        //on the first try, however you will notice that the loop still runs once
        return iteration;
    }

    // Exercise:
    uint[] public arr;

    function ODDnum(uint max) public {
        uint i = 1;
        while (i <= max) {
            if (i % 2 != 0)
                arr.push(i);
                i++;
        }
    }

    function get() public view returns (uint[] memory){
        return arr;
    }
}
