// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ifStatements {
    function checkBoolean(uint256 _Number) public pure returns (bool) {
        if(_Number == 0){
            return true;
        }
        else return false;
    }

}

contract AgeVerifier {
    // Task: Age Verifier  if the age is greater then 18 the person eligible to vote..

    function checkEligibility(uint256 age) public pure returns (string memory) {
        if (age>=18) {
            return "the person is eligibal for vote";
        }
        else {
            return "the Person is not eligible for vote";
        }
    }
}