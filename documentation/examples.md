# Examples for using FungibleNonFungible

The FungibleNonFungible contract allows creating a fungible ERC20 token that represents collective ownership of an underlying non-fungible ERC721 token. This enables new use cases like:

## Selling fractional ownership of an NFT

1. Alice mints an NFT representing ownership of a digital artwork.

2. Alice deploys a FungibleNonFungible contract, passing in the NFT contract address and token ID. This transfers ownership of the NFT to the FungibleNonFungible contract.

3. Alice mints 10000 tokens in the FungibleNonFungible contract.

4. Alice sells the tokens to 10 people, giving each person 1000 tokens (10% ownership of the NFT).

5. The buyers can now trade their tokens freely on an exchange. The tokens represent their fractional ownership in the underlying NFT.

## Crowdfunding to purchase an expensive NFT

1. Bob wants to purchase an NFT that costs 100 ETH.

2. Bob deploys a FungibleNonFungible contract with 10000 tokens.

3. Bob sells the tokens to thousands of people to raise 100 ETH. Each token represents fractional ownership.

4. Once Bob raises enough funds, he uses the contract to purchase the NFT. The NFT is now collectively owned by all the fractional token holders.

## Managing shared IP ownership

1. A company mints an NFT representing ownership of an intellectual property asset.

2. It transfers the NFT to a FungibleNonFungible contract and mints tokens.

3. The company distributes tokens to shareholders based on ownership percentages.

4. The tokens can be freely traded by shareholders, while the company maintains overall ownership of the IP asset.

5. The company can use voting mechanisms built on the tokens to allow collective control of the IP by shareholders.


## Startup's distributed equity

1. A startup company mints an NFT to represent their portfolio of intellectual property assets.

2. They transfer the NFT to a FungibleNonFungible contract and mint equity tokens.

3. The equity tokens are sold to investors to raise funds for the startup. Each token represents fractional ownership of the underlying IP portfolio NFT.

4. As the startup grows, the value of the IP assets increases, increasing the value of the equity tokens.

5. The equity tokens can be freely traded by investors, enabling liquidity while maintaining collective ownership of the core IP assets.

## Issuing licenses for IP assets

1. A company mints an NFT representing ownership of an intellectual property asset, like a patent.

2. It transfers the NFT to a FungibleNonFungible contract and mints tokens.

3. The company can now issue licenses to use the IP asset to other parties by minting new tokens and transferring them.

4. For an exclusive license, the company mints and transfers a portion of the total tokens, for example 50%. The licensee now owns 50% of the fractional NFT.

5. For a non-exclusive license, the company mints a small number of tokens, for example 1%, and transfers them to the licensee.

6. The company can issue multiple non-exclusive licenses by minting and transferring more tokens. No single licensee ever owns a majority of tokens.

7. If an exclusive license expires, the company can burn the licensee's tokens to revoke the license. For non-exclusive licenses, the company can simply let the tokens remain.

8. The fungible tokens enable liquid secondary markets for the licenses. Licensees can freely trade their tokens.

9. If the company sells all its tokens, it transfers full ownership and control of the IP asset. If not, it maintains overall ownership and ability to manage licensing.

## Redeeming fractional tokens for sole ownership

1. After a period of shared ownership, one fractional token holder buys out all the other holders.

2. Because they now own 100% of the tokens, they can use `restoreOwnership` to transfer the NFT back to their sole control and burn the fractional token contract.

