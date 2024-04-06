// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract Maths { 
    uint256 public num1; 
    uint256 public num2; 
    uint256 public result; 
 
    function setNumber(uint256 _num1, uint256 _num2) public { 
        num1 = _num1; 
        num2 = _num2; 
    } 
     function add() public returns (uint256)  { 
        result = num1 + num2; 
        return result; 
    } 
 
    function divide() public returns (uint256)  { 
        require(num2 != 0, "Oops! Can't divide a number by 0."); 
        result = num1 / num2; 
        return result; 
    } 
}