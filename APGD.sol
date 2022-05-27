// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

//ERC20 import (for Interfacing)
import "StandardERC20.sol";

contract AGPD {
    address Ether = address(0);

    constructor(){
        //Deployment Constructors
        TypeMultiplier[1] = 3;
        TypeMultiplier[2] = 6;
        TypeMultiplier[3] = 5;
        TypeMultiplier[4] = 5;
        TypeMultiplier[5] = 3;
        TypeMultiplier[6] = 5;
        TypeMultiplier[7] = 4;
    }

    

    //Struct Declarations
    struct ActivityHistory{
        //In Minutes
        uint256 Walking;
        uint256 Running;
        uint256 Cycling;
        uint256 Swimming;
        uint256 GymWorkout;
        uint256 TeamSports;
        uint256 Other;
    }

    //Activity Types are as such:
    // 1: Walking
    // 2: Running
    // 3: Cycling
    // 4: Swimming
    // 5: Gym Workout
    // 6: Team Sports
    // 7: Other

    //Mapping Declarations
    mapping (address => ActivityHistory) Tracking;
    mapping (uint256 => uint256) TypeMultiplier;

    function EnterActivity(uint256 ActivityType, uint256 Minutes) public returns(uint256 TokensMinted, bool success){
        require(ActivityType <= 7 && ActivityType >= 1, "Activity Type is not valid");
        require(Minutes >= 1);
        
        uint256 TokensEarned = TypeMultiplier[ActivityType] * Minutes;



    }


    




}

