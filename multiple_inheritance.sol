// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract A { 
    string internal x; 
    string a = "Hey " ; 
    string b = "there"; 
 
    function getA() external{ 
        x = string(abi.encodePacked(a, b)); 
    } 
} 
 
contract B is A { 
    string public y; 
    string c = "harshal!"; 
 
    function getB() external payable returns ( 
    string memory){ 
        y = string(abi.encodePacked(x, c)); 
    } 
} 
 
contract C is B { 
    function getC() external view returns( 
    string memory){ 
        return y; 
    } 
} 
 
contract caller { 
 
    C cc = new C(); 
 
    function testInheritance( 
    ) public returns ( 
    string memory) { 
        cc.getA(); 
        cc.getB(); 
        return cc.getC(); 
    } 
}