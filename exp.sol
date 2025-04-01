// pragma solidity ^0.8.0;

contract DailyLoginRewards {
    mapping(address => uint256) public lastLogin;
    mapping(address => uint256) public streak;
    mapping(address => uint256) public rewards;
    
    uint256 public rewardAmount = 1 ether;
    uint256 public dailyResetTime = 1 days;
    
    function login() public {
        uint256 currentTime = block.timestamp;
        
        if (lastLogin[msg.sender] + dailyResetTime >= currentTime) {
            streak[msg.sender] += 1;
        } else {
            streak[msg.sender] = 1;
        }
        
        lastLogin[msg.sender] = currentTime;
        rewards[msg.sender] += rewardAmount;
    }
    
    function getStreak(address user) public view returns (uint256) {
        return streak[user];
    }
    
    function getRewards(address user) public view returns (uint256) {
        return rewards[user];
    }
}
