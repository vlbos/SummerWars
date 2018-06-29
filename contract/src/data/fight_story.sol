pragma solidity ^0.4.19;

import "./story.sol";
import "../register.sol";
import "./identity.sol";

contract FightStory is Story {
    function FirstStory() public {
        register = Register(msg.sender);
    }

    Register register;
    bytes32[8] board;

    function info(address _from) public view returns (bytes32[8] info) {
        return board;
    }

    function process(address _from, address _to, uint256 decision) public {
        board[0] = bytes32("1:0");
        Process(_from, _to, "player1 win");
    }

    // Events
    event Process(address indexed _from, address indexed _to, string _result);
}