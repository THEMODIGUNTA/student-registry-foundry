// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {Test} from "forge-std/Test.sol";
import {studentRegiter} from "../src/student-registry.sol";

contract StudentRegisterTest is Test {
    studentRegiter public registerContract;

    function setUp() public {
        registerContract = new studentRegiter();
    }

    function test_StudentDetailsRegister() public {
        // Calls your studentDetailsRegister function
        registerContract.studentDetailsRegister("Alice", "CS101", "Solidity", "Yes");

        // Tests your mapping: roolNumberToString
        string memory nameFromMapping = registerContract.roolNumberToString("CS101");
        assertEq(nameFromMapping, "Alice");

        // Tests your review function: review()
        studentRegiter.Admin[] memory allStudents = registerContract.review();
        assertEq(allStudents.length, 1);
        assertEq(allStudents[0].name, "Alice");
        assertEq(allStudents[0].roolNumber, "CS101");
        assertEq(allStudents[0].skills, "Solidity");
        assertEq(allStudents[0].isGraduated, "Yes");
    }
}