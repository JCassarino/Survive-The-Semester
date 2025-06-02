void playerFunc(){

rectMode(CENTER);
fill(0, 0, 255, 255);

// Changing the image used for the player depending on their state of movement.
imageMode(CENTER);
if (moving == false){image(playerStand, playerX, playerY);}
if (moving == true && (negGradeDropX[gradeDropNum-1] != 3000 || posGradeDropX[gradeDropNum-1] != 3000)){playerHealth += 1;}
if (moving == false && (negGradeDropX[gradeDropNum-1] != 3000 || posGradeDropX[gradeDropNum-1] != 3000)){playerGrades-=1;}
movePlayer();
}

// Moving the player left and right using booleans
void keyPressed(){  if (key == 'a'){moving = true;  left = true;}  if (key== 'd'){moving = true;  right = true;}}
void keyReleased(){  if (key == 'a'){moving = false;  left = false;}  if (key== 'd'){moving = false;  right = false;}}
void movePlayer(){  
if (left == true && right == false){playerX -= playerDelta;  image(playerMoveLeft, playerX, playerY);}  
if (right == true && left == false){playerX += playerDelta;  image(playerMoveRight, playerX, playerY);}
if (right == true && left == true){moving = false;}
playerX = constrain(playerX, 50, 1870);}
