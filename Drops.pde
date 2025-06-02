void drops(){
  imageMode(CORNER);
// Grade drops
  for(int i = 0; i < gradeDropNum; i++){

// Pixel art for grade drops
image(negGradeDrop, negGradeDropX[i], negGradeDropY[i]);
image(posGradeDrop, posGradeDropX[i], posGradeDropY[i]);

// Drop deltas
negGradeDropY[i] += negDropDelta[i];
posGradeDropY[i] += posDropDelta[i];

// If player collides with a negative grade drop, they lose grade points
if(playerY-27 >= negGradeDropY[i] && playerY-27 <= negGradeDropY[i]+100 && playerX-50 >= negGradeDropX[i] && playerX-50 <= negGradeDropX[i]+100){negGradeDropX[i]=3000;  playerGrades-=150;}
if(playerY-27 >= negGradeDropY[i] && playerY-27 <= negGradeDropY[i]+100 && playerX+50 >= negGradeDropX[i] && playerX+50 <= negGradeDropX[i]+100){negGradeDropX[i]=3000;  playerGrades-=150;}
if(playerY+27 >= negGradeDropY[i] && playerY+27 <= negGradeDropY[i]+100 && playerX-50 >= negGradeDropX[i] && playerX-50 <= negGradeDropX[i]+100){negGradeDropX[i]=3000;  playerGrades-=150;}
if(playerY+27 >= negGradeDropY[i] && playerY+27 <= negGradeDropY[i]+100 && playerX+50 >= negGradeDropX[i] && playerX+50 <= negGradeDropX[i]+100){negGradeDropX[i]=3000;  playerGrades-=150;}
  
// If player collides with a positive grade drop, they gain grade points
if(playerY-27 >= posGradeDropY[i] && playerY-27 <= posGradeDropY[i]+100 && playerX-50 >= posGradeDropX[i] && playerX-50 <= posGradeDropX[i]+100){posGradeDropX[i]=3000;  playerGrades+=100;}
if(playerY-27 >= posGradeDropY[i] && playerY-27 <= posGradeDropY[i]+100 && playerX+50 >= posGradeDropX[i] && playerX+50 <= posGradeDropX[i]+100){posGradeDropX[i]=3000;  playerGrades+=100;}
if(playerY+27 >= posGradeDropY[i] && playerY+27 <= posGradeDropY[i]+100 && playerX-50 >= posGradeDropX[i] && playerX-50 <= posGradeDropX[i]+100){posGradeDropX[i]=3000;  playerGrades+=100;}
if(playerY+27 >= posGradeDropY[i] && playerY+27 <= posGradeDropY[i]+100 && playerX+50 >= posGradeDropX[i] && playerX+50 <= posGradeDropX[i]+100){posGradeDropX[i]=3000;  playerGrades+=100;}

// Sending the drops off of the screen if they reach the bottom
if(posGradeDropY[i] >= 1000){posGradeDropX[i] = 3000;}
if(negGradeDropY[i] >= 1000){negGradeDropX[i] = 3000;}

// Trigger condition for weekly reset - checks if the final drops have been collected or hit the bottom of the screen.
if(negGradeDropX[gradeDropNum-1] == 3000 && posGradeDropX[gradeDropNum-1] == 3000){weekReset();}
if(negGradeDropX[gradeDropNum-1] == 3000 && posGradeDropX[gradeDropNum-1] == 3000 && week == 15){gameOver = true;}
}

// Health drops
  for(int i = 0; i < healthDropNum; i++){
    
// Pixel art for health drops
image(negHealthDrop, negHealthDropX[i], negHealthDropY[i]);
image(posHealthDrop, posHealthDropX[i], posHealthDropY[i]);
  
// Health drop deltas
negHealthDropY[i] += negDropDelta[i];
posHealthDropY[i] += posDropDelta[i];

// If player collides with a negative health drop, they lose health points
if(playerY-27 >= negHealthDropY[i] && playerY-27 <= negHealthDropY[i]+100 && playerX-50 >= negHealthDropX[i] && playerX-50 <= negHealthDropX[i]+100){negHealthDropX[i]=3000;  playerHealth-=150;}
if(playerY-27 >= negHealthDropY[i] && playerY-27 <= negHealthDropY[i]+100 && playerX+50 >= negHealthDropX[i] && playerX+50 <= negHealthDropX[i]+100){negHealthDropX[i]=3000;  playerHealth-=150;}
if(playerY+27 >= negHealthDropY[i] && playerY+27 <= negHealthDropY[i]+100 && playerX-50 >= negHealthDropX[i] && playerX-50 <= negHealthDropX[i]+100){negHealthDropX[i]=3000;  playerHealth-=150;}
if(playerY+27 >= negHealthDropY[i] && playerY+27 <= negHealthDropY[i]+100 && playerX+50 >= negHealthDropX[i] && playerX+50 <= negHealthDropX[i]+100){negHealthDropX[i]=3000;  playerHealth-=150;}
  
// If player collides with a positive health drop, they gain health points
if(playerY-27 >= posHealthDropY[i] && playerY-27 <= posHealthDropY[i]+100 && playerX-50 >= posHealthDropX[i] && playerX-50 <= posHealthDropX[i]+100){posHealthDropX[i]=3000;  playerHealth+=50;}
if(playerY-27 >= posHealthDropY[i] && playerY-27 <= posHealthDropY[i]+100 && playerX+50 >= posHealthDropX[i] && playerX+50 <= posHealthDropX[i]+100){posHealthDropX[i]=3000;  playerHealth+=50;}
if(playerY+27 >= posHealthDropY[i] && playerY+27 <= posHealthDropY[i]+100 && playerX-50 >= posHealthDropX[i] && playerX-50 <= posHealthDropX[i]+100){posHealthDropX[i]=3000;  playerHealth+=50;}
if(playerY+27 >= posHealthDropY[i] && playerY+27 <= posHealthDropY[i]+100 && playerX+50 >= posHealthDropX[i] && playerX+50 <= posHealthDropX[i]+100){posHealthDropX[i]=3000;  playerHealth+=50;}

// Sending the drops off of the screen if they reach the bottom
if(posHealthDropY[i] >= 1000){posHealthDropX[i] = 3000;}
if(negHealthDropY[i] >= 1000){negHealthDropX[i] = 3000;}

}
// Wallet drop
  for(int i = 0; i < walletDropNum; i++){

    // Pixel art for wallet drops
image(negWalletDrop, negWalletDropX[i], negWalletDropY[i]);
image(posWalletDrop, posWalletDropX[i], posWalletDropY[i]);
  
// Wallet drop deltas
negWalletDropY[i] += negDropDelta[i];
posWalletDropY[i] += posDropDelta[i];

// If player collides with a negative wallet drop, they lose wallet points
if(playerY-27 >= negWalletDropY[i] && playerY-27 <= negWalletDropY[i]+100 && playerX-50 >= negWalletDropX[i] && playerX-50 <= negWalletDropX[i]+100){negWalletDropX[i]=3000;  playerWallet-=150;}
if(playerY-27 >= negWalletDropY[i] && playerY-27 <= negWalletDropY[i]+100 && playerX+50 >= negWalletDropX[i] && playerX+50 <= negWalletDropX[i]+100){negWalletDropX[i]=3000;  playerWallet-=150;}
if(playerY+27 >= negWalletDropY[i] && playerY+27 <= negWalletDropY[i]+100 && playerX-50 >= negWalletDropX[i] && playerX-50 <= negWalletDropX[i]+100){negWalletDropX[i]=3000;  playerWallet-=150;}
if(playerY+27 >= negWalletDropY[i] && playerY+27 <= negWalletDropY[i]+100 && playerX+50 >= negWalletDropX[i] && playerX+50 <= negWalletDropX[i]+100){negWalletDropX[i]=3000;  playerWallet-=150;}
  
// If player collides with a positive wallet drop, they gain wallet points
if(playerY-27 >= posWalletDropY[i] && playerY-27 <= posWalletDropY[i]+100 && playerX-50 >= posWalletDropX[i] && playerX-50 <= posWalletDropX[i]+100){posWalletDropX[i]=3000;  playerWallet+=50;}
if(playerY-27 >= posWalletDropY[i] && playerY-27 <= posWalletDropY[i]+100 && playerX+50 >= posWalletDropX[i] && playerX+50 <= posWalletDropX[i]+100){posWalletDropX[i]=3000;  playerWallet+=50;}
if(playerY+27 >= posWalletDropY[i] && playerY+27 <= posWalletDropY[i]+100 && playerX-50 >= posWalletDropX[i] && playerX-50 <= posWalletDropX[i]+100){posWalletDropX[i]=3000;  playerWallet+=50;}
if(playerY+27 >= posWalletDropY[i] && playerY+27 <= posWalletDropY[i]+100 && playerX+50 >= posWalletDropX[i] && playerX+50 <= posWalletDropX[i]+100){posWalletDropX[i]=3000;  playerWallet+=50;}

// Sending the drops off of the screen if they reach the bottom
if(posWalletDropY[i] >= 1000){posWalletDropX[i] = 3000;}
if(negWalletDropY[i] >= 1000){negWalletDropX[i] = 3000;}

}

}
