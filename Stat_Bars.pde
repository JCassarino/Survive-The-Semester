void statBars(){
  
  // Drawing the stat bars
  rectMode(CORNER);
  stroke(0); 
  strokeWeight(1);
 fill(255);
rect(statBarX, healthBarY, 200, 25);
rect(statBarX, walletBarY, 200, 25);
rect(statBarX, gradeBarY, 200, 25);
textSize(20);
textAlign(LEFT);
fill(0);
text("Health", statBarX, healthBarY-5);
text("Money", statBarX, walletBarY-5);
text("Grades", statBarX, gradeBarY-5);

fill(255, 0, 0, 127);
rect(statBarX, healthBarY, playerHealth/5, 25);

fill(0, 255, 0, 127);
rect(statBarX, walletBarY, playerWallet/5, 25);

fill(0, 0, 255, 127);
rect(statBarX, gradeBarY, playerGrades/5, 25);

// Condition for ending the game
if(playerHealth <=0 || playerGrades <= 0 || playerWallet <= 0){gameOver = true;}

// Limits the stat bar variables so they don't go past
playerHealth = constrain(playerHealth, 0, 1000);
playerWallet = constrain(playerWallet, 0, 1000);
playerGrades = constrain(playerGrades, 0, 1000);
}
