void weekReset(){

statBarX = (width/2)-100;
healthBarY = 425;
walletBarY = 475;
gradeBarY = 525;
int startX = width/2;
int startY = 850;
rectMode(CENTER);
fill(127, 127, 127, 230);
stroke(0);
strokeWeight(1);
rect(width/2, 500, 700, 400, 28);
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
text("You made it through week " + week + "!", width/2, 350);

// Text at the bottom of the weekly summary is unique to each week
if( week == 1){text("Your first week wasn't very hard,", width/2, 600);  text(" week 2 is where it ramps up.", width/2, 650);}
if( week == 2){text("Your first few assignments are done,", width/2, 600);  text("your first quiz is next week!", width/2, 650);}
if( week == 3){text("Make sure to study!", width/2, 600);}
if( week == 4){text("You're doing great!", width/2, 600);  text("Keep it up!", width/2, 650);}
if( week == 5){text("It's homecoming week!", width/2, 600);}
if( week == 6){text("It's time...", width/2, 600);  text("Start studying for midterms!", width/2, 650);}
if( week == 7){text("Midterms this week...", width/2, 600);  text("Good luck!", width/2, 650);}
if( week == 8){text("Midterms are over!", width/2, 600);  text("Great Job!", width/2, 650);}
if( week == 9){text("", width/2, 600);  text("", width/2, 650);}
if( week == 10){text("Stay sharp...", width/2, 600);  text("Finals are in 4 weeks!", width/2, 650);}
if( week == 11){text("Keep it Up!", width/2, 600);}
if( week == 12){text("Only 2 more weeks...", width/2, 600);}
if( week == 13){text("It's time..", width/2, 600);  text("Start studying for finals!", width/2, 650);}
if( week == 14){text("Finals this week...", width/2, 600);  text("Good luck!", width/2, 650);}

text("Start", startX, startY-15);
text("Week", startX, startY+15);
text(week+1, startX, startY+45);
textSize(60);

// When the "begin next week" button is pressed, the week int is increased by one and the stat bars are moved back
  if(mouseX >= startX-105 && mouseX <= startX+105 && mouseY >= startY-45 && mouseY <= startY+45 && mousePressed){ week+=1;  statBarX = 1700;  healthBarY = 25;  walletBarY = 75;  gradeBarY = 125;
  
// Re-randomizing the deltas
 for(int i = 0; i < totalDropNum; i++){negDropDelta[i] = random(5,10);  posDropDelta[i] = random(4,8);}
 
// Resetting grade drops
 for(int i = 0; i < gradeDropNum; i++){posGradeDropX[i] = random(60, 1850);  negGradeDropX[i] = random(60, 1850);  posGradeDropY[i] = -100 - i*150;  negGradeDropY[i] = -200 - i*150;}

// Resetting health drops
 for(int i = 0; i < healthDropNum; i++){posHealthDropX[i] = random(60, 1850);  negHealthDropX[i] = random(60, 1850);  posHealthDropY[i] = -250 - i*150;  negHealthDropY[i] = -350 - i*150;}

// Resetting wallet drops
 for(int i = 0; i < walletDropNum; i++){posWalletDropX[i] = random(60, 1850);  negWalletDropX[i] = random(60, 1850);  posWalletDropY[i] = -100 - i*500;  negWalletDropY[i] = -600 - i*150;}
 
// Setting positions for the weekly reset trigger
 negGradeDropY[gradeDropNum-1] = -100 - (totalDropNum-1)*150;
posGradeDropY[gradeDropNum-1] = -100 - (totalDropNum-1)*150;}
}
