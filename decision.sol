// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract DecisionMaking { 
    uint256 public num; 
 
    function setNumber(uint256 _num) public { 
        num = _num; 
    } 
 
    function check() public view returns (string memory)  { 
        if(num % 2 == 0) { 
            return string.concat("The number entered number is even."); 
       } 
        return string(abi.encodePacked("The number entered number is odd.")); 
    } 
} 