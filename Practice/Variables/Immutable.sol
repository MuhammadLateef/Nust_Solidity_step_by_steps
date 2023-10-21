// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract immutableContract {
//     When a state variable is declared as immutable, it can be initialized either at declaration time or
// in the constructor.
    address public immutable ADMIN_Address = 0x04aB6B32dFe2093E0317D5546A9d59c8c95e7a82;
    function getAdminAddress() public view returns (address) {
        return ADMIN_Address;
    }
}