// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract PhysicalActivityMonitorGame {
    mapping(address => uint256) public balance;

    struct DailyActivity{
        uint256 steps;
        uint256 calories;
    }
}
