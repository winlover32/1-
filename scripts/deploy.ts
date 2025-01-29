import hre from "hardhat";

export async function main() {
    console.log('Deploying AnyFlowERC1155...')

    const args = [
        '0xA71a71A71a71a71A71a71a71a71A71a71A71A71a',   // _initialOwner
        'https://token-cdn-domain/{id}.json'
    ] as const;

    const contract = await hre.viem.deployContract("AnyFlowERC1155", args);

    console.log(`Contract AnyFlowERC721 deployed to: ${contract.address}`);
}

main()
    .then(() => process.exit(0));