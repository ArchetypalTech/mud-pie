import { ethers } from "ethers";

async function verifyAccount() {
    // Connect to your local Fluent node
    const provider = new ethers.JsonRpcProvider('http://127.0.0.1:8545');
    
    // Use one of the funded accounts (let's use the first one)
    const privateKey = "0x4bbbf85ce3377467afe5d46f804f221813b2bb87f24d81f60f1fcdbf7cbf4356";
    const wallet = new ethers.Wallet(privateKey, provider);
    
    // First verify the address matches what we expect
    console.log("Wallet address:", wallet.address);
    // Should show: 0x14dC79964da2C08b23698B3D3cc7Ca32193d9955
    
    // Check the balance
    const balance = await provider.getBalance(wallet.address);
    console.log("Balance:", ethers.formatEther(balance), "ETH");
    
    // Create a test transaction
    const tx = {
        to: "0x70997970C51812dc3A010C7d01b50e0d17dc79C8", // Another address from our list
        value: ethers.parseEther("1.0") // Send 1 ETH
    };
    
    try {
        console.log("Sending 1 ETH...");
        const transaction = await wallet.sendTransaction(tx);
        console.log("Transaction hash:", transaction.hash);
        
        // Wait for transaction to be mined
        const receipt = await transaction.wait();
        console.log("Transaction confirmed in block:", receipt?.blockNumber);
        
        // Verify new balance
        const newBalance = await provider.getBalance(wallet.address);
        console.log("New balance:", ethers.formatEther(newBalance), "ETH");
        
        return "Verification successful!";
    } catch (error) {
        console.error("Error during verification:", error);
        return "Verification failed!";
    }
}

// Execute the verification
verifyAccount().then(console.log).catch(console.error);