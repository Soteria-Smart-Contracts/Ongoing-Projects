// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

//ERC20 import (for Interfacing)
import "StandardERC20.sol";

contract AGPD {
    address HealthyEthers = address(0);
    uint256 DailyLimit = 10800000000000000000;

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
    mapping (address => ActivityHistory) public Tracking;
    mapping (address => uint256) public DailyLimitTracker;
    mapping (uint256 => uint256) TypeMultiplier;

    function EnterActivity(uint256 ActivityType, uint256 Minutes) public returns(uint256 TokensMinted, bool success){
        require(ActivityType <= 7 && ActivityType >= 1, "Activity Type is not valid");
        require(Minutes >= 1);
        
        uint256 TokensEarned = TypeMultiplier[ActivityType] * Minutes * 10000000000000000;

        UpdateTrackingMinutes(ActivityType, Minutes);

        ERC20(HealthyEthers).Mint(msg.sender, TokensEarned);




    }








//()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()
//Internal Functions


//()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()
//Internal Functions

    function UpdateTrackingMinutes(uint256 ActivityType, uint256 Minutes) internal {
        require(ActivityType <= 7 && ActivityType >= 1, "Activity Type is not valid");
        require(Minutes >= 1);

        if (ActivityType == 1){
            Tracking[msg.sender].Walking += Minutes;
        }
        else if (ActivityType == 2){
            Tracking[msg.sender].Running += Minutes;
        }
        else if (ActivityType == 3){
            Tracking[msg.sender].Cycling += Minutes;
        }
        else if (ActivityType == 4){
            Tracking[msg.sender].Swimming += Minutes;
        }
        else if (ActivityType == 5){
            Tracking[msg.sender].GymWorkout += Minutes;
        }
        else if (ActivityType == 6){
            Tracking[msg.sender].TeamSports += Minutes;
        }
        else if (ActivityType == 7){
            Tracking[msg.sender].Other += Minutes;
        }
    }


    




}

interface ERC20 {
  function balanceOf(address owner) external view returns (uint256);
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint value) external returns (bool);
  function Mint(address _MintTo, uint256 _MintAmount) external;
  function transfer(address to, uint value) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool); 
  function totalSupply() external view returns (uint);
  function CheckMinter(address AddytoCheck) external view returns(uint);
}
