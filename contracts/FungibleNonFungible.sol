// SPDX-License-Identifier: IPLedger

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract FungibleNonFungible is ERC20, IERC721Receiver {

    address private _erc721Contract;

    uint256 private _erc721TokenId;

    event OwnershipTaken(address indexed newOwner, address indexed erc721Contract, uint256 indexed tokenId);
    event OwnershipRestored(address indexed previousOwner, address indexed erc721Contract, uint256 indexed tokenId);

    constructor(string memory name_, string memory symbol_, address erc721Contract_, uint256 tokenId_) ERC20(name_, symbol_) {
        _takeOwnership(erc721Contract_, tokenId_);
    }

    function _takeOwnership(address erc721Contract, uint256 tokenId) private {

        IERC721 erc721 = IERC721(erc721Contract);
        require(erc721.ownerOf(tokenId) == msg.sender, "Not owner of ERC721 token");

        // Transfer ownership of the ERC721 token to this contract
        _erc721Contract = erc721Contract;
        _erc721TokenId = tokenId;
        erc721.safeTransferFrom(msg.sender, address(this), tokenId);

        emit OwnershipTaken(msg.sender, erc721Contract, tokenId);
    }

    function restoreOwnership() public {

        require(balanceOf(msg.sender) == totalSupply(), "Must own 100% of ERC20 tokens");

        // Transfer ownership of the ERC721 token back to the original owner
        IERC721 erc721 = IERC721(_erc721Contract);
        erc721.safeTransferFrom(address(this), msg.sender, _erc721TokenId);

        emit OwnershipRestored(msg.sender, _erc721Contract, _erc721TokenId);

        // Destroy the contract and transfer any remaining funds to the contract owner
        selfdestruct(payable(msg.sender));
    }

    function onERC721Received(address, address, uint256, bytes memory) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
