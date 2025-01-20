// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Initial {
    function isPublic() public pure returns (string memory) {
        return "Public";
    }

    function isPrivate() private pure returns (string memory) {
        return "Private";
    }

    /**
     * @notice Call private funtion
     */
    function privateToPublic() public pure returns(string memory){
        return isPrivate();
    }

    function isInternal() internal pure returns (string memory) {
        return "Internal";
    }

    /**
     * @notice Call internal funtion
     */
    function internalToPublic() public pure returns(string memory){
        return isInternal();
    }

    function isExternal() external pure returns (string memory) {
        return "External";
    }

    /**
     * @notice Preparing the function to be overrided
     */
    function isOverride() public pure virtual returns (string memory) {
        return "To override";
    }
}
