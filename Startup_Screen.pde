void startScreen(){
int startX = width-200;
int startY = 100;

// Making the border of the buttons pulse
bStroke+=bPulse;
if(bStroke == 10){bPulse = -bPulse;}
if(bStroke == 1){bPulse = -bPulse;}

// Loading background
  backDrop();
  
// Drawing the button & making it clickable
textFont(font);
    rectMode(CENTER);
  fill(#7BF273);
  stroke(#115514);
  strokeWeight(bStroke);
  rect(startX, startY, 220, 100);
  textAlign(CENTER);
  textSize(35);
  fill(255);
text("Begin", startX, startY-15);
text("Your", startX, startY+15);
text("Adventure!", startX, startY+39);
textSize(60);
  if(mouseX >= startX-105 && mouseX <= startX+105 && mouseY >= startY-45 && mouseY <= startY+45 && mousePressed){tutorialP1 = true;}
}
