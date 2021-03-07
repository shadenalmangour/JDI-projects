# project#1:  Rock, Paper and Scissor Game
## Overview
This web application is Rock, paper, and scissor game. This game is between two or more parties, in which each player simultaneously choose one of three shapes. These shapes are "rock", "paper", and "scissor". In this game, the player will press one of the buttons according to the shape, while the computer will choose the shape randomly. This game may be for fun or as a means of choice for other purposes, ex: drawing lots.

## wireframes
# ![wireframe](sweethome\src\main\resources\static\images\Mockup.PNG)

## user stories
* As a user, I want to be able to select my choice so that I can play with the computer
* As a user I want to be able to know the selection of the computer so that I can see the computer selection 
* As a user, I want you to show me the result of the game so that I can know who is the winner
* As a user, I want to play with the computer the rock, paper, and scissor game so that I can play it every time and everywhere. 

## technologies
* Command line
* Javascript
* Jquery DOM manipulation
* HTML 
* CSS
* Developer tool
* Font library
* Sound
* Media query

## development process and problem-solving strategy
I have create this game by comparing the value of the user selected button and the value generated randomly as a computer selection.

## future work
In the future, I hope this game will be available online to gaming by two or more players.

## Describtion of the winner
The selection of the shape determines the winner according to the following roles: the rock breaks the scissors (by breaking it), the paper defeating the rock (by covering it), and the scissors defeats the paper (by cutting it).

## Describtion of the favorite functions work
The user will select one button then the value of this button will be compared with the value of the value that is generated randomly as computer selection. The compareValues function has two parameters which are the user selection and the computer selection, it will compare these two values to determine the winner.
  ```javascript
function compareValues (userSelection, computerSelection){
    
    $(".test").hide();
    if(userSelection === 'rock') {
    
        if(computerSelection === 'rock') {
            console.log('Tie');
            $("#tie").show("slow");
           

        } else if (computerSelection === 'paper') {
            console.log( 'computer is the winner ');
            $("#lose").show("slow");
        } else if (computerSelection === 'scissors') {
            console.log( ' you are the winner');
            $("#win").show("slow");
        }

    
        }  else if (userSelection === 'paper') {
            
            if(computerSelection === 'paper') {
                console.log('Tie');
                $("#tie").show("slow");
            } else if (computerSelection === 'rock') {
                console.log('you are the winner');
                $("#win").show("slow");
            } else if (computerSelection === 'scissors') {
                console.log('computer is the winner');
                $("#lose").show("slow");
            }
         }

         else if (userSelection === 'scissors') {
    
            if(computerSelection === 'scissors') {
                console.log('Tie');
                $("#tie").show("slow");
            } else if (computerSelection === 'paper') {
                console.log('you are the winner');
                $("#win").show("slow");
            } else if (computerSelection === 'rock') {
                console.log ('computer is the winner');
                $("#lose").show("slow");
                
          }
        }
    }
 ```
   