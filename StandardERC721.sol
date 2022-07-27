pragma solidity ^0.8.4;

contract ArrayTest{
  uint256[] public Array;


  function IndexArray() public returns(uint256){
    uint16 index;
    while(index <= 10000){
      Array.push(index);
      index++;
    }
    return(Array.length);
  }
}