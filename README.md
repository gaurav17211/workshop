# Daily Login Rewards Smart Contract

## Overview
The **DailyLoginRewards** smart contract rewards users with a fixed amount of Ether for logging in daily. It tracks login streaks and updates rewards accordingly.

## Features
- Users can log in once every 24 hours to maintain their streak.
- Rewards increase for each consecutive login.
- Streak resets if a user misses a day.
- Users can check their current streak and rewards.

## Contract Functions

### `login()`
- Allows users to log in.
- If logged in within 24 hours, the streak increases.
- If more than 24 hours have passed, the streak resets.
- Rewards are credited to the user.

### `getStreak(address user) → uint256`
- Returns the current streak of the given user.

### `getRewards(address user) → uint256`
- Returns the total rewards earned by the given user.

## Deployment
- The contract can be deployed on any Ethereum-compatible blockchain.
- Use Remix, Hardhat, or Truffle for deployment.
- Ensure enough Ether is available to distribute rewards.

## Interaction
- Users can call `login()` using a Web3 wallet like MetaMask.
- Use Ethers.js or Web3.js to interact programmatically.

## Example Web3 Script
```javascript
const contract = new ethers.Contract(contractAddress, contractABI, signer);
await contract.login();
```

## Notes
- The contract does not automatically distribute real Ether; a reward system needs manual funding.
- This contract does not include withdrawal functionality.

## License
This project is open-source and can be modified as needed.

## Contract Address : 0x87BCf21a89418A586c6D449192461b19214ce2F9
