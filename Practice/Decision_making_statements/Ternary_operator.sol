// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;  

// Ternary Operator (? :)
// ● The ternary operator is a concise and powerful operator in Solidity that allows for
// conditional execution of code based on a specified condition.
// ● It is the only operator in Solidity that takes three operands: a condition, an expression to
// execute if the condition is true, and an expression to execute if the condition is false
// Syntax :
//     condition ? expression_if_true : expression_if_false;

contract ageVeriger {
    function CheckEligibility (uint age) public pure returns (string memory) {
        return ( age >= 18 ? "Eligible for vote" : "Not eligible for vote");
    }
}

// TASK
// Create a Solidity function that takes an integer parameter representing a student's score
// in an exam, and returns (bool, string).
// ● If the score is greater than or equal to 60, return "True."
// ➔ If score is between 80-100, return “Achieved Gade : A”
// ➔ If score is between 60-79, return “Achieved Gade : B”
// ● If the score is less than 60, return "False."
// ➔ If score is between 40-59, return “Achieved Gade : C”
// ➔ For remaining 0-39, return “Better Luck Next Time”.

contract StudentScore {
    function StudentsMarks (uint256 score) public pure  returns (bool,string memory) {
     bool pass = score>=60;
     string memory message = pass ? (score>=80 ? "Achieved grade: A":(score >= 60 ? "Achieved Grade: B":"False")):(score>=40 ? "Achieved Grade: C":"Better Lcuck Next Time");
     return (pass,message);
    }
}
