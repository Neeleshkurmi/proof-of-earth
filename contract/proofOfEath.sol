// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProofOfEarth {

    // Mapping of user addresses to their Earth proof
    mapping(address => uint256) public earthProofs;

    // Event to log when a user proves their Earth presence
    event ProofAdded(address indexed user, uint256 proofId);

    // Core Function 1: Users can submit their proof (e.g., location, evidence)
    function submitProof(uint256 proofId) public {
        earthProofs[msg.sender] = proofId;
        emit ProofAdded(msg.sender, proofId);
    }

    // Core Function 2: Retrieve a user's proof by address
    function getProof(address user) public view returns (uint256) {
        return earthProofs[user];
    }

    // Core Function 3: Verifies if a user has a valid proof (simple check for proofId)
    function verifyProof(address user) public view returns (bool) {
        return earthProofs[user] > 0;
    }
}
