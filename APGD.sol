// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

//ERC20 import (for Interfacing)
import "StandardERC20.sol";

contract AGPD {
    address Zero = address(0);


    function SendToken() public returns(bool success){
        Token(Zero).transferFrom(Zero, Zero, 1);
    }


    




}

