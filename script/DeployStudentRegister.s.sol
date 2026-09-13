// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {Script} from "forge-std/Script.sol";
import {studentRegiter} from "../src/student-registry.sol";

contract DeployStudentRegister is Script {
    function run() external returns (studentRegiter) {
        vm.startBroadcast();
        studentRegiter registerContract = new studentRegiter();
        vm.stopBroadcast();
        return registerContract;
    }
}