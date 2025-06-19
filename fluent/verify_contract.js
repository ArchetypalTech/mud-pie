#!/usr/bin/env node

const axios = require('axios');
const fs = require('fs');

// Contract details
const contractAddress = '0x303cc4647F0e21B9FB990f888e5a72ea03F25578';
const contractName = 'GreetingWithWorld';
const compilerVersion = 'v0.8.24+commit.e11b9ed9';
const constructorArguments = '0000000000000000000000008acc65b00246321351f54315b1d96c30209edc95'; // ABI-encoded address

// Read source files
const greetingWithWorldSource = fs.readFileSync('./contracts/GreetingWithWorld.sol', 'utf8');
const iFluentGreetingSource = fs.readFileSync('./contracts/IFluentGreeting.sol', 'utf8');

// Create flattened source code (combine all imports into one file)
const flattenedSourceCode = `// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IFluentGreeting {
    function greeting() external view returns (string memory);
}

contract GreetingWithWorld {
    IFluentGreeting public fluentGreetingContract;

    constructor(address _fluentGreetingContractAddress) {
        fluentGreetingContract = IFluentGreeting(
            _fluentGreetingContractAddress
        );
    }

    function getGreeting() external view returns (string memory) {
        string memory greeting = fluentGreetingContract.greeting();

        // Concatenate the returned greeting with " World"
        return string(abi.encodePacked(greeting, " World"));
    }
}`;

// Verification request (Etherscan-compatible API format)
const verificationData = {
    module: 'contract',
    action: 'verifysourcecode',
    contractaddress: contractAddress,
    contractname: contractName,
    compilerversion: compilerVersion,
    optimizationUsed: '1',
    runs: '200',
    sourceCode: flattenedSourceCode,
    constructorArguments: constructorArguments,
    evmversion: 'default',
    codeformat: 'solidity-single-file'
};

async function verifyContract() {
    try {
        console.log('Verifying contract on BlockScout...');
        console.log('Contract Address:', contractAddress);
        console.log('Contract Name:', contractName);
        console.log('Compiler Version:', compilerVersion);
        console.log('Constructor Arguments:', constructorArguments);
        
        const response = await axios.post(
        'https://blockscout.dev.gblend.xyz/api',
        new URLSearchParams(verificationData),
        {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            timeout: 60000
        }
    );
    
    console.log('\nVerification Response:');
    console.log('Status:', response.status);
    console.log('Data:', JSON.stringify(response.data, null, 2));
    
    if (response.data && response.data.message) {
        console.log('\nVerification Status:', response.data.message);
    }
    
    } catch (error) {
        console.error('Verification failed:');
        if (error.response) {
        console.error('Status:', error.response.status);
        console.error('Data:', JSON.stringify(error.response.data, null, 2));
        } else {
        console.error('Error:', error.message);
        }
    }
}

verifyContract();