// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AnyFlowERC1155 is ERC1155, Ownable {
    constructor(
        address _initialOwner,
        string memory uri_
    ) ERC1155(uri_) Ownable(_initialOwner) {}

    /**
     * @dev Creates a `value` amount of tokens of type `id`, and assigns them to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - only the owner can mint tokens
     * - `to` cannot be the zero address.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function mint(
        address to,
        uint256 id,
        uint256 value,
        bytes memory data
    ) public onlyOwner {
        _mint(to, id, value, data);
    }

    // Add additional logic here
}
