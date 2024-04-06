// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract PureFunction { 
    function addMod() public pure returns (uint256)  { 
        return addmod(4, 5, 3); 
    } 
 
    function mulMod() public pure returns (uint256)  { 
        return mulmod(4, 5, 3); 
    } 
} 