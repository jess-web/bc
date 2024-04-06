// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.24; 
 
contract PrimeNumber { 
    function checkIsPrimeNumber (int256 number) public pure returns (string 
memory) { 
        if (number <= 1) { 
            return "Not Prime"; 
        } 
 
        for (int256 i = 2; i <= number/2; ++i) { 
            if (number % i == 0) { 
                return "Not Prime"; 
            } 
        } 
 
        return "Is Prime"; 
    } 
} 
 