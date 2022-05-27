// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

//ERC20 import
import "StandardERC20.sol";

contract PhysicalActivityMonitorGame {
    address Zero = address(0);


    function SendToken() public returns(bool success){
        Token(Zero).transferFrom(Zero, Zero, 1);
    }


    




}

