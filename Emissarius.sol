
//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.8.0;

// @dev I am importing the Ownable.sol contract to restrict access and provide a layer of protection and design
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol"; 

// @dev I am using the SpeedBump.sol file to further enhance design and security 

import "./SpeedBump.sol";

///@dev I am importing the SafeMath master library from github to prevent overflows and underflows
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";

/// @title Emissarius 
/// @author Gabrielle E. Hibbert
/// @notice this is still in development and may need more work
contract Emissarius { 
    using SafeMath for uint256;
    /// @param I want to create a digital avatar of the end-user. Specifications will include name, DOB, nationality, and blood type. 
    /// @dev Emissarius will represent a new account that can be then transferred or utilized on another platform. In this example the creation
    /// of an Emissarius is the first step in creating a valid SSI.
    struct DigIdentity {
        address ownerAddress; // address is the current place occupied by end-user
        string name; // name is the name of the end-user 
        string birthDate; // the birthdate is need as one step of the verification process 
        string nationality; // a nationality is need to additionally verify the end-user 
        string bloodType; // @dev I did not want to include biometric data but I could not think of another way to verify the end-user
    }

    // This will be a type for a provisional Emissarius record. 
    struct registeredEmissarius { 
        bytes32 name; // name for the provisional Emissarius.
    }
    // @param I need to make sure that governmental officials will know who owns this account so I added the public parameter.
    // @param this stores a "digital identity" struct for each possible address. 
    address public governmentOfficial; 
    // This declares a state variable that stores a registered Emissarius record for each address.
    mapping(address => DigIdentity) public DigIdentities;
    // @param I am going to creat a dynamic array of Case structs. 
    registeredEmissarius[] public registeredEmissariuses;
    // @param give the individual the ability to register their digital identity case.
    // This can only be called by the 'government official". 
    // require is used to make sure the right address is called.
    function registerEmissarius(address) public view { 
        require( 
            msg.sender == governmentOfficial,
            "Only governmentOfficial can give the right to register."
        );
    }
    
    // the next function will actually register the person with their identification material 
    function registerDigIdentity(string memory _name, string memory _birthDate, string memory _nationality, string memory _bloodType) public view 
    { 
        DigIdentity ( 
            { ownerAddress: msg.sender, 
            name: _name, 
            birthDate: _birthDate,
            nationality: _nationality,
            bloodType: _bloodType
        });
    }
    


}



