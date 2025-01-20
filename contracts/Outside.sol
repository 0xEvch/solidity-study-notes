// SPDX-License-Identifier: MIT

import {Initial} from "./Initial.sol";
import {Inher} from "./Inher.sol";

pragma solidity ^0.8.19;

contract Outside {

    /**
     * @notice Initialize the address of the smart contract Initial in the variable init
     */
    Initial public init;
    Inher public inher;

    /**
     * @dev Add existed contract adress
     */
    function addInitial(Initial _addr) public {
        init = _addr;
    }
    
    /**
     * @dev Create Initial and Inherited contract
     */
    function createInitialAndInhert() public {
        init = new Initial();
        inher = new Inher();
    }

    function callPublic() public view returns (string memory) {
        return init.isPublic();
    }


    function callExternal() public view returns (string memory) {
        return init.isExternal();
    }

    function callOverride() public view returns (string memory) {
        return init.isOverride();
    }
}

