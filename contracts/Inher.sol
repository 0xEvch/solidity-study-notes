// SPDX-License-Identifier: MIT

import {Initial} from "./Initial.sol";

pragma solidity ^0.8.19;

contract Inher is Initial {

    /**
     * @notice Override function
     */
    function isOverride() public pure override  returns (string memory) {
        return "Overrided!";
    }
    
    /**
     * @notice Call internal funtion from a child
     */
    function callInternal() public pure returns(string memory){
        return isInternal();
    }

    /**
     * @notice Call it through this from a child contract (it's not visible by default)
     */
    function externalToPublic() public view returns(string memory){
        return this.isExternal();
    }
}
