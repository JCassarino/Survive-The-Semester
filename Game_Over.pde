void endGame(){  
  
// If one of the player's stats falls to 0, the game will end. Depending on which stat falls to 0, you'll get a different loss message.
if(playerHealth <=0 || playerGrades <= 0 || playerWallet <= 0){
rectMode(CENTER);
fill(#FF5050, 127);
rect(width/2, height/2, 1550, 650, 28);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 1500, 600, 28);
fill(255);
textAlign(CENTER);
  textSize(35);
if(playerHealth <= 0){text("You couldn't keep up with the stress of college, and didn't prioritize your own health.", width/2, (height/2)-17);}
if(playerHealth <= 0){text("Your body isn't at its best, and you're forced to end your semester early.", width/2, (height/2)+17);}

if(playerGrades <= 0){text("You let your grades slip and couldn't quite catch up.", width/2, (height/2)-17);}
if(playerGrades <= 0){text("Your grades are too low and you've been forced to drop out.", width/2, (height/2)+17);}

if(playerWallet <= 0){text("You've made some poor financial decisions and ran out of money.", width/2, (height/2)-17);}
if(playerWallet <= 0){text("You can no longer afford to attend college.", width/2, (height/2)+17);}
}

// If the player's grades are below 60, they fail the semester.
if((playerGrades/10) < 60 && playerGrades > 0 && playerHealth > 0 && week == 15){
rectMode(CENTER);
fill(#FF5050, 127);
rect(width/2, height/2, 1550, 650, 28);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 1500, 600, 28);
textSize(35);
textAlign(CENTER);
fill(255);
text("You've reached the end of the semester, but your grades weren't high enough.", width/2, (height/2)-17);
  text("You failed your classes, and are forced to redo your first semester.", width/2, (height/2)+17);
}

// If the player's grades are at 60 or above, they pass the semester.
if((playerGrades/10) >= 60 && playerHealth > 0 && playerWallet > 0){
  fill(#82F074, 127);
  rectMode(CENTER);
  rect(width/2, height/2, 1550, 650, 28);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 1500, 600, 28);
textSize(35);
textAlign(CENTER);
fill(255);
text("You maintained your good grades and managed to pass your first semester!", width/2, (height/2)-17);
  text("Congratulations!", width/2, (height/2)+17);
}
// Moving the stat bars to be visible at the end screen
    rectMode(CENTER);
  statBarX = (width/2) - 725;
 healthBarY = 235;
 walletBarY = 285;
 gradeBarY = 335;
  statBars();

}
