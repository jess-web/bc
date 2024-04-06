// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract GetLoan{ 
    // no use, use get or set to interact with other contract 
    function TakeLoan(uint256) external  payable { 
        GiveLoan loan = new GiveLoan(350); 
    } 
} 
 
contract GiveLoan{ 
    uint public money; 
 
    constructor (uint _amount) public { 
        money = _amount; 
    } 
} 