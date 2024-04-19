// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// modules
import {LSP8Mintable} from "@lukso/lsp8-contracts/contracts/presets/LSP8Mintable.sol";

// constnats
import {_LSP8_TOKENID_FORMAT_NUMBER} from "@lukso/lsp8-contracts/contracts/LSP8Constants.sol";
import {_LSP4_TOKEN_TYPE_NFT} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

contract YourCollectionName is LSP8Mintable {
    constructor(
        string memory name,
        string memory ticker,
        address newOwner
    )
        LSP8Mintable(
            name, // NFT collection name
            ticker, // NFT collection ticker
            newOwner, // owner of the NFT contract (the address that controls it, sets metadata, can transfer the ownership of the contract)
            _LSP4_TOKEN_TYPE_NFT, // type of the token is an NFT
            _LSP8_TOKENID_FORMAT_NUMBER // format of each `tokenId`s is number (represented as bytes32)
        )
    {}

    // Any other desirable functions
}
