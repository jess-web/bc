pragma solidity ^0.5.17; 
 
interface A { 
    function getResult()  external view returns(uint); 
} 
 
contract B is A { 
    function getResult() external view returns (uint) { 
        uint a = 200; 
        uint b = 100; 
        uint result = a - b; 
        return result; 
    } 
} 