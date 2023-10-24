// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EncapFunctions {
    function someFouncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256 _x, uint256 _y, uint _z, address _a, bool _b, string memory _c) {
        _x = x;
        _y = y;
        _z = z;
        _a = a;
        _b = b;
        _c = c;
    }

    function CallFunc() external pure returns (uint _x, uint _y, uint _z, address _a, bool _b, string memory _c){
        return someFouncWithManyInputs(1,2,3,address(0),true,"hello everyone!!!");
    }

    function someFounWithKeyValues () external pure returns (uint _x, uint _y, address _a, bool _b,string memory _c){
        return someFouncWithManyInputs({a:address(0), b:true, c:"Hello Everyone", x:2,y:34,z:4});
    }
    
}
