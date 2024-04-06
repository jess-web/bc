// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract FunctionOverloading { 
    function getSum(uint x, uint y) public pure returns (uint256) { 
        return x + y; 
    } 
    
    function getSum(uint x, uint y, uint z) public pure returns (uint256) { 
        return x + y + z; 
    } 
}