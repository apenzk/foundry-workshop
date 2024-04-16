//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract DevconPanda is ERC721URIStorage {
    uint256 private _tokenIds;

    constructor() ERC721("DevconPanda", "DCP") {}

    function mint(address user, string memory tokenURI) public returns (uint256) {
        uint256 newItemId = _tokenIds;
        _safeMint(user, newItemId);
        _setTokenURI(newItemId, tokenURI);
        _tokenIds++;
        return newItemId;
    }
}