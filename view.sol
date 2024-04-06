// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract GenerateKeccakHash { 
    bytes32 private message; 
 
    function setHash(string memory _message) public { 
        message = keccak256(bytes(_message)); 
 } 
 
    function getHash() public view returns (bytes32) { 
        return message; 
    } 
} 