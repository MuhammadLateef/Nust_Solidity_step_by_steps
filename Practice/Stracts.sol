// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
struct Student {
    string Name;
    uint256 rollNo;
    uint256 age;
}

contract Structs_contract {
    Student public students; // Deceleration of students variable type Student;

    // To assign the values in struct there are different methods we are looking someone

    // Method: 1  creating a storage struct reference within a function.....
    function initStudent1() public {
        Student storage _students = students; //Asign a copy of students STRUCT
        _students.Name = "Muhammad Latif Kharmangi.....";
        _students.rollNo = 2035;
        _students.age = 22;
    }

    //Method: 2 Directly refers to a struct state variable
    function initStudent2() public {
        students.Name = "Mazahir Hussain";
        students.rollNo = 2015;
        students.age = 23;
    }

    //Method: 3 Using a struct constructor
    function initStudent3() public {
        students = Student("Arif Hussain", 2004, 23);
    }

    //Method: 4 Assigning values using key value pairs

    function initStudent4() public {
        students = Student({age: 23, rollNo: 2018, Name: "Saqlian Abbas"});
    }
}

// 2) 3 ways have been used here to initialize struct here. Highlight them

struct Voter {
    string Name;
    address _address;
    bool hasVoted;
}

contract VotingSystem {
    Voter[] public voters;

    function voter1(string memory _Name, address _add) public {
        voters.push(Voter(_Name, _add, false));
    }

    function voter2(
        string memory _Name,
        address _add,
        bool _hasVoted
    ) public {
        voters.push(Voter({Name: _Name, _address: _add, hasVoted: _hasVoted}));
    }

    function voter3(string memory _Name, address _add) public {
        Voter memory voter;
        voter.Name = _Name;
        voter._address = _add;
        voter.hasVoted = false;
        voters.push(voter);
    }

    function get(uint256 _index)
        public
        view
        returns (
            string memory Name,
            address _address,
            bool hasVoted
        )
    {
        Voter storage voter = voters[_index];
        return (voter.Name, voter._address, voter.hasVoted);
    }

    function toggleHash(uint256 _index) public {
        Voter storage voter = voters[_index];
        voter.hasVoted = !voter.hasVoted;
    }
}
