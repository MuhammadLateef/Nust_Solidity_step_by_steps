// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
syntax::
Solidity has ‘function’ syntax as following:
 function function <func Name>(<parameter types>)[public|private|internal|external] [pure|view|payable] [returns(<returns type>)]
  
 */

contract function_contract {
    // Further principles relating to functions:
    // 1) Function can return multiple values
    function manyvalues()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (129, true, 786);
    }

    //2) returns can be named
    function namely()
        public
        pure
        returns (
            uint256 i,
            bool boolean,
            uint256 id
        )
    {
        return (120, true, 2035);
    }

    //3 returns values return assigned to there name..
    function assigned()
        public
        pure
        returns (
            uint256 i,
            bool boolean,
            uint256 id
        )
    {
        i = 2;
        boolean = true;
        id = 2035;
    }

    // 4) use destructuring assignment when calling another function that returns multiple values.
    function destructuringAssignment() public pure returns (uint,bool,uint,uint,uint) {
        (uint i,bool boolean, uint id) = manyvalues();
        //values can be left out.
        (uint x, uint y) = (5,6);
        return (i,boolean,id,x,y);
    }
    // 5) call function with key-values inputs.

    function functionWithManyInputs (uint x,address a,bool b,string memory s) public pure {

    }

    function CallFunctionWithManyKeyValues () public pure {
        functionWithManyInputs({x:12, a:address(0),b:true, s:"some thing"});
    }
}
