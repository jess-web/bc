// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract FallbackFunction { 
    string public calledFallbackFun; 
 
    fallback() external payable  { 
        calledFallbackFun = "I am Fallback Function"; 
    } 
 
    function getBalance() public view returns(uint){ 
        return address(this).balance; 
    } 
 
    receive() external payable {} 
} 
 
contract Sender { 
    function transfer() public payable{ 
        require (msg.value>=2 ether,"Insufficient ether sent"); 
        (bool 
sent,)=payable(0xeF9B26046a2392C956320200eE0818543aA96aB7).call{value:2 
ether}("Transaction Done"); 
        require(sent, "transaction Failed"); 
    } 
 
    function getBalance() public view returns (uint) { 
        return address(this).balance; 
    } 
} 