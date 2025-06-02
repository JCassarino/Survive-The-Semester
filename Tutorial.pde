void tutorialP1(){
int startX = (width/2)+width/4;
int startY = 910;

// Drawing the button & the first tutorial Image
rectMode(CENTER);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 1800, 700, 28);
imageMode(CENTER);
  bStroke+=bPulse;
if(bStroke == 10){bPulse = -bPulse;}
if(bStroke == 1){bPulse = -bPulse;}
textFont(font);
    rectMode(CENTER);
  fill(#7BF273);
  stroke(#115514);
  strokeWeight(bStroke);
  rect(startX, startY, 220, 100);
  textAlign(CENTER);
  textSize(35);
  fill(255);
text("Got It!", startX, startY+15);
textSize(60);
  if(mouseX >= startX-105 && mouseX <= startX+105 && mouseY >= startY-45 && mouseY <= startY+45 && mousePressed){tutorialP1 = false;  tutorialP2 = true;}
image(tutorialPage1, width/2, 500);
image(exampleBars, (width/2)+547, 444);
}

void tutorialP2(){
int startX = (width/2)-width/4;
int startY = 910;

// Drawing the button & the second tutorial Image
rectMode(CENTER);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 1800, 700, 28);
imageMode(CENTER);
  bStroke+=bPulse;
if(bStroke == 10){bPulse = -bPulse;}
if(bStroke == 1){bPulse = -bPulse;}
textFont(font);
    rectMode(CENTER);
  fill(#7BF273);
  stroke(#115514);
  strokeWeight(bStroke);
  rect(startX, startY, 220, 100);
  textAlign(CENTER);
  textSize(35);
  fill(255);
text("Got It!", startX, startY+15);
textSize(60);
  if(mouseX >= startX-105 && mouseX <= startX+105 && mouseY >= startY-45 && mouseY <= startY+45 && mousePressed){tutorialP2 = false; gameStarted = true;  week+=1;}
  image(tutorialPage2, width/2, 515);
}
  
  
  
