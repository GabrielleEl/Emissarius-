//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.12 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol"; 
import "../contracts/Emissarius.sol";

// This is a test for one of the two functions within the Emissarius contract. This test is for the first function and am expecting 
// the "Only governmentOfficial can give right to register" I have decided to only write two tests as I was unsure what other tests 
// would be needed for this simple smart contract 

contract TestEmissarius { 
    function testRegisterEmissarius() public { 
        Emissarius Emissarius = new Emissarius(); 
        uint expected = governmentOfficial;
        
        assert.equal(returnedId, expected, "Only governmentOfficial can give right to register");
    } 
}
