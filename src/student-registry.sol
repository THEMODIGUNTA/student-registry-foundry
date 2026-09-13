//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract studentRegiter {
    struct Admin {
        string name;
        string roolNumber;
        string skills;
        string isGraduated;
    }

    Admin[] admin;
    mapping(string => string) public roolNumberToString;

    function studentDetailsRegister(
        string memory _name,
        string memory _roolNumber,
        string memory _skills,
        string memory _isGraduated
    ) public {
        admin.push(Admin(_name, _roolNumber, _skills, _isGraduated));
        roolNumberToString[_roolNumber] = _name;
    }

    function review() public view returns (Admin[] memory) {
        return admin;
    }
}
