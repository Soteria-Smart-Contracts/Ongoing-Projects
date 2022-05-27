// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

//ERC20 import (for Interfacing)
import "StandardERC20.sol";

contract AGPD {
    address Zero = address(0);

    //Activity
    

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
    mapping(address => ActivityHistory) Tracking;

    function EnterActivity(uint256 ActivityType, uint256 Minutes) public returns(uint256 TokensMinted, bool success){
        require(ActivityType <= 7 && ActivityType >= 1, "Activity Type is not valid");
        require(Minutes >= 1);
        if(ActivityType == 1){
            //Walking
            TokensMinted = Minutes * 3;
        }
        else if(ActivityType == 2){
            //Running
            TokensMinted = Minutes * 6;
        }
        else if(ActivityType == 3){
            //Cycling
            TokensMinted = Minutes * 5;
        }
        else if(ActivityType == 4){
            //Swimming
            TokensMinted = Minutes * 5;
        }
        else if(ActivityType == 5){
            //Gym Workout
            TokensMinted = Minutes * 5;
        }
        else if(ActivityType == 6){
            //Team Sports
            TokensMinted = Minutes * 6;
        }
        else if(ActivityType == 7){
            //Other
            TokensMinted = Minutes * 7;
        }

    }


    




}

