// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Exercise_functions2 {
    function function1(
        string memory Name,
        string memory Gender,
        address addr
    )
        public
        pure
        returns (
            string memory _name,
            string memory _gender,
            address _addr
        )
    {
        _name = Name;
        _gender = Gender;
        _addr = addr;
    }

    function function2()
        external
        pure
        returns (
            string memory _name,
            string memory _gender,
            address _addr
        )
    {
        return function1("Muhammad Latif", "Male", address(0x04aB6B32dFe2093E0317D5546A9d59c8c95e7a82));
    }

    function functionCallbyKeyValues()
        external
        pure
        returns (
            string memory _name,
            string memory _gender,
            address _addr
        )
    {
        return
            function1({
                Name: "latif",
                Gender: "Male",
                addr: address(0x04aB6B32dFe2093E0317D5546A9d59c8c95e7a82)
            });
    }

    //Exersicse: 2
    // a function Input a radius of circule and return the circumference of circle..
    function circumferenceOfCircle (uint256 r) public pure  returns (uint256) {
      uint256 circumference = (2*314*r/100); //3.14
      return circumference;
    }

    //Exercise: 3
    uint public n = 4;
    function add() public{
        n+=2;
    }

    function addPure(uint number) public pure returns(uint) {
        return number;
    }

    function addView() public view returns(uint) {
        return n;
    }
}
