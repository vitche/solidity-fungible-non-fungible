# Claim: Fungible Equivalent for the Non-Fungible Token

|                       | **TAGS**: BlockChain, NFT, fungible token, non-fungible token, ERC-20, ERC-721, Solidity, IP ownership, IP LEDGER |
|-----------------------|-------------------------------------------------------------------------------------------------------------------|
| **Authors**:          | Andrew Mikhailov ([andrew@ipledger.uk](mailto:andrew@ipledger.uk))                                                |
|                       | Natalia Riazanova ([nataliia.riazanova@ipledger.uk](mailto:nataliia.riazanova@ipledger.uk))                       |
| **Publication date**: | 17 March, 2023.                                                                                                   |
| **PDF download**:     | [Fungible Equivalent for the Non-Fungible Token.pdf](https://github.com/ipledger/solidity-fungible-non-fungible/blob/main/Fungible%20Equivalent%20for%20the%20Non-Fungible%20Token.pdf)        |
| **Source code**:      | [FungibleNonFungible.sol](./contracts/FungibleNonFungible.sol)                                                    |

## Description: Combining fungible and non-fungible token standards to build a fungible equivalent for the non-fungible token
An important technical flow is of providing the ability to collectively possess and control the non-fungible token record.
This includes but is not limited to ERC-721 tokens. For other token standards including tokens in other block-chains, same principles apply.

For example, it is possible to build a flow of selling a non-fungible token record to a group of people.
Other operations on tokens imply.

To provide such ability of collective possession and control, we implement a contract which is compatible with the fungible 
token standard (for example, but not limited to ERC-20).
While deploying this contract, besides standard fungible token parameters,
we provide the ability of this newly created contract to take ownership of the  
given existing non-fungible token record (like ERC-721).
So, the new fungible token becomes the owner of the non-fungible token record and 
therefore the non-fungible token record is not more independently operational
but instead exists as a part of the composite object (within the fungible token).

Therefore, the deployed fungible token represents a collective fungible equivalent
of the given non-fungible token record. 

This enables selling the non-fungible token to a group of people by-parts as if it was a fungible token.
Other operations on tokens imply.

Remains the question, how we can restore the original non-fungible token, which is owned by the fungible token, when necessary?
To accomplish that, the fungible contract implements a rule, by which, we can release (detach) the non-fungible token record from the fungible token and destruct the fungible equivalent token.
Such action can be performed by an entity, which owns 100% of the fungible token liquidity therefore prooving that the 
non-fungible token is exclusively owned.

## Explaining the contradiction between fungible and non-fungible objects while being combined 

### Is there a contradiction between fungible and non-fungible objects?
In general, fungible and non-fungible objects are two distinct categories and there is no contradiction between them.

Fungible objects are items that are interchangeable with other items of the same kind and have equal value. For example, a dollar bill is fungible because one dollar bill can be exchanged for another dollar bill of equal value without any loss or difference in value. Other examples of fungible objects include commodities like gold, silver, and oil.

On the other hand, non-fungible objects are unique items that cannot be exchanged with other items of the same kind because they have a distinct value or identity. For example, a painting by a famous artist is a non-fungible object because it is unique and has a specific value that cannot be replicated by any other painting. Other examples of non-fungible objects include collectibles like rare coins, stamps, and sports memorabilia.

Therefore, there is no inherent contradiction between fungible and non-fungible objects. They are simply different categories of objects with distinct characteristics and uses.

### What if we split the possession rights on the non-fungible object?
Splitting possession rights on a non-fungible object is possible, but it would typically involve dividing the ownership or control of specific aspects of the object rather than creating fungibility. For example, two individuals might share possession rights of a painting, with one person owning the physical object and the other person owning the copyright or reproduction rights.

However, even in cases where possession rights are split, the object remains non-fungible because the ownership rights or control over specific aspects of the object are unique to each individual and cannot be exchanged for an identical set of rights or control over another object.

Therefore, splitting possession rights on a non-fungible object does not necessarily create fungibility, but rather creates a unique ownership or control arrangement that is specific to the individuals involved.

### But what if we speak about the token which is not the object itself, but instead is the representation of the possession rights?
If we are talking about a token that represents possession rights of a non-fungible object, such as a non-fungible token (NFT), then the situation becomes a bit more complicated.

In the case of an NFT, the token represents ownership or control rights over a specific non-fungible object, such as a digital artwork or a collectible. 
The object remains non-fungible, but the ownership or control rights over the object can be transferred through the exchange of the NFT.

### So, when we implement a contract for fungible NFT token possession - what do we get?
When we implement a contract for a fungible non-fungible token (NFT) possession, we create a digital asset that can be exchanged for other tokens of equal value, but that represents ownership or control rights over a specific non-fungible object.

This means that the contract would define the specific ownership or control rights that are being represented by the token, and would establish rules for how those rights can be transferred or exchanged through the token. The token would be interchangeable with other tokens of equal value, allowing for easy transfer of ownership or control rights over the non-fungible object.

### So, the NFT token is not the same as the non-fungible object it represents, but it is only the possession rights representation and therefore cannot be considered non-fungible?
It is important to distinguish between:
- The NFT token as a representation of the possession rights;
- The non-fungible object which is represented by the NFT token.

A non-fungible token (NFT) is a digital asset that represents ownership or control rights over a specific non-fungible object, such as a digital artwork or a collectible. The token itself is a fungible object, as it can be exchanged for other tokens of equal value.

## Technical / practical implications 
The technical / practical implications of our work is that 
the technical flow described affects any actions related to non-fungible token operations in the real world.

It's important to note that while NFTs have gained popularity as a means of representing ownership or control rights over non-fungible objects, they are still a relatively new and rapidly evolving technology. The legal and practical implications of NFT ownership and transfer are still being worked out, and it is important for individuals involved in NFT transactions to seek legal advice and guidance to ensure that their rights are protected.
