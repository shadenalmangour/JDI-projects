// the pseudocode for website logic as comments in your JS file:
//1.The basic idea from these website is to play with computer 
//2.The user select onefrom all buttons which are: (paper, rock and sciessor)
//3.The computer selection will be selected randomly from the same selections of the user
//4.The fuction play will compare the value of the player button and the value generated randomly as computer selection
//5.The result will be shown accroading the selections of both parties he rock breaks the scissors (by breaking it), 
//the paper defeating the rock (by covering it), and the scissors defeats the paper (by cutting it).

$(document).ready(function() {

    //hide all the results in rsult div
    $(".test").hide();
    
    $(".buttons").on("mouseenter",function(){
        $(this).addClass("fae");
    });
     $(".buttons").on("mouseleave",function(){
         $(this).removeClass("fae");
     });
        
    

  ///////////////////////////////////////////////////////////////////////
  //this function is for generate random image from the array accroading to the value 
   function comuterSelect() {
    var images = ["rock", "paper", "scissors"];
    var x;
    x=images[Math.floor(Math.random()*images.length)]; 
   // console.log("computer selection",x);  
   //set attribute and value
    if(x==="paper"){$("#randimg").attr("src","images/paper-h.png")}
    else if(x==="rock"){$("#randimg").attr("src","images/rock-h.png")}
    else if(x==="scissors"){$("#randimg").attr("src","images/scissors.png")}
    return x; 
}
///////////////////////////////////////////////////////////////////////
var audio = $("#audio")[0];
  
    $("#btn-paper").click(function(){
		audio.play();
        var value1=$(this).val(); 
        // console.log("user",value1);
        //  console.log (play(value1,comuterSelect()));
        compareValues(value1,comuterSelect());
      
    });

    $("#btn-rock").click(function(){
        audio.play();
         var value2=$(this).val(); 
        //  console.log("user2",value2);
        //  console.log (play(value2,comuterSelect()));
        compareValues(value2,comuterSelect());
         
    });

    $("#btn-scissor").click(function(){
        audio.play();
        var  value3=$(this).val();
         //console.log("user3",value3);
         //console.log(play(value3,comuterSelect()))
         compareValues (value3,comuterSelect());
    });
    

////////////////////////////////////////////////////////////////////////
//this function is for compare the value of the both selection the user and the computer and display the result
function compareValues (userSelection, computerSelection){
    
    $(".test").hide();
    if(userSelection === 'rock') {
    
        if(computerSelection === 'rock') {
            console.log('Tie');
            $("#tie").show("slow");
           

        } else if (computerSelection === 'paper') {
            console.log( 'computer is the winner ');
            $("#lose").show();
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
        

    }////the end of the play function
 
});//end of ready
