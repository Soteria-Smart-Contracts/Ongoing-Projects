pragma solidity ^0.8.4;

contract ArrayTest{
  uint16[] public Array;


  function IndexArray() public returns(uint256){
    uint16 index;
    while(index <= 1000){
      Array.push(index);
      index++;
    }
    return(Array.length);
  }
}