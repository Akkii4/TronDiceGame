pragma solidity ^0.4.20;


contract DiceGame{

   
    event DiceResult(uint256 value);

    uint256 public participant1_count;
    uint256 participant1_amount;
    uint256 participant1_diceresult;
    address participant1_address;
    address owner;


    function placeBet( uint256 _diceresult) payable public returns (bool success){


        participant1_count +=1;

        if(participant1_count == 1){

            participant1_diceresult = _diceresult;
            participant1_amount = msg.value;
            participant1_address = msg.sender;
            emit DiceResult(999); // Play still going on

        }

        if(participant1_count == 2){

            if(participant1_diceresult == _diceresult){
                msg.sender.transfer( msg.value);
                participant1_address.transfer(participant1_amount);
                emit DiceResult(0); // Draw
            }

            if(participant1_diceresult > _diceresult){
               participant1_address.transfer(address(this).balance);
                emit DiceResult(1); //participant1 wins
            }

            if(participant1_diceresult < _diceresult){
               msg.sender.transfer(address(this).balance);
                emit DiceResult(2); //participant2 wins
            }

            participant1_amount = 0;
            participant1_count = 0;
            participant1_diceresult = 0;
            participant1_address = 0x0;

        }
        return true;

    }


}