// Importing sound for music/sound effects
import processing.sound.*;
SoundFile file;

// Player variables
float playerX = 910;
float playerY = 950;
int playerDelta = 8;
boolean left;
boolean right;
boolean moving;
int playerHealth = 500;
int playerWallet = 500;
int playerGrades = 500;
PImage playerStand;
PImage playerMoveRight;
PImage playerMoveLeft;
int statBarX = 1700;
int healthBarY = 25;
int walletBarY = 75;
int gradeBarY = 125;

// Drop variables
int gradeDropNum = 5;
int healthDropNum = 10;
int walletDropNum = 5;
int totalDropNum = gradeDropNum + healthDropNum + walletDropNum;
float[] negDropDelta = new float[totalDropNum];
float[] posDropDelta = new float[totalDropNum];

// Grades
float[] posGradeDropX = new float[gradeDropNum];
float[] posGradeDropY = new float[gradeDropNum];
float[] negGradeDropX = new float[gradeDropNum];
float[] negGradeDropY = new float[gradeDropNum];
PImage posGradeDrop;
PImage negGradeDrop;

// Health
float[] posHealthDropX = new float[healthDropNum];
float[] posHealthDropY = new float[healthDropNum];
float[] negHealthDropX = new float[healthDropNum];
float[] negHealthDropY = new float[healthDropNum];
PImage posHealthDrop;
PImage negHealthDrop;

// Wallet
float[] posWalletDropX = new float[walletDropNum];
float[] posWalletDropY = new float[walletDropNum];
float[] negWalletDropX = new float[walletDropNum];
float[] negWalletDropY = new float[walletDropNum];
PImage posWalletDrop;
PImage negWalletDrop;

// Variables to control the status of the game
boolean startScreen = true;
boolean gameStarted;
boolean gameOver;
boolean gameTutorial;
int week = 0;

// Cloud/backdrop variables
PImage bg;
final int cloudNum = 7;
float[] cloudX = new float[cloudNum];
float[] cloudY = new float[cloudNum];
float[] cloudXDelta = new float[cloudNum];
float[] theta = new float[30];

// Start screen/tutorial variables
int bStroke = 1;
int bPulse = 1;
PImage tutorialPage1;
PImage exampleBars;
PImage tutorialPage2;
  boolean tutorialP1;
  boolean tutorialP2;

// Font
PFont font; 

// Sizing the canvas
void setup() {size(1920, 1000);

// Loading sound files
file = new SoundFile(this, "TitleBGM.mp3");
file.loop();

// Loading the font
font = loadFont("ErasITC-Bold-48.vlw");

// Loading the images we're using 
bg = loadImage("UMBCBG.png");
playerStand = loadImage("playerstand.png");
playerMoveRight = loadImage("playermoveright.png");
playerMoveLeft = loadImage("playermoveleft.png");
posGradeDrop = loadImage("aplus.png");
negGradeDrop = loadImage("fminus.png");
posHealthDrop = loadImage("waterbottle.png");
negHealthDrop = loadImage("thermometer.png");
posWalletDrop = loadImage("dollar.png");
negWalletDrop = loadImage("parkingticket.png");
tutorialPage1 = loadImage("tutorialp1.png");
exampleBars = loadImage("examplebars.png");
tutorialPage2 = loadImage("tutorialp2.png");
// For loops that we only need to run once

// X & Y positions of clouds
for(int i = 0; i < cloudNum; i++){cloudY[i] = random(50, 225);  cloudX[i] = 100 + i*random(275, 300);  cloudXDelta[i] = 2;}

// Rotating the sun
for(int i = 0; i < 30; i++){theta[i] = 0 + i*12;}

// Deltas can be universal, we don't need individual deltas for each drop type
for(int i = 0; i < totalDropNum; i++){
negDropDelta[i] = random(5,10);  posDropDelta[i] = random(4,8);  
negDropDelta[totalDropNum-1] = 6;  posDropDelta[totalDropNum-1] = 5;}

// Declaring intiial positions of grade related drops & setting the trigger condition for the weekly resets
for(int i = 0; i < gradeDropNum; i++){
posGradeDropX[i] = random(60, 1850);  negGradeDropX[i] = random(60, 1850);  
posGradeDropY[i] = -100 - i*150;  negGradeDropY[i] = -200 - i*150;}
negGradeDropY[gradeDropNum-1] = -100 - (totalDropNum-1)*150;
posGradeDropY[gradeDropNum-1] = -100 - (totalDropNum-1)*150;

// Declaring intiial positions of health related drops
for(int i = 0; i < healthDropNum; i++){
posHealthDropX[i] = random(60, 1850);  negHealthDropX[i] = random(60, 1850);  
posHealthDropY[i] = -250 - i*150;  negHealthDropY[i] = -350 - i*150;}

// Declaring intiial positions of wallet related drops
for(int i = 0; i < walletDropNum; i++){
posWalletDropX[i] = random(60, 1850);  negWalletDropX[i] = random(60, 1850);  
posWalletDropY[i] = -500 - i*150;  negWalletDropY[i] = -600 - i*150;}

}
void draw() {
  
// The strartup screen will be there until the the player presses start, at which point we will stop calling the startScreen function and call the game functions instead.
if (gameStarted == true) {tutorialP1 = false;  backDrop();  playerFunc();  drops();  statBars();} 
if (startScreen == true){startScreen();}

// Tutorial conditions
if (tutorialP1 == true){startScreen = false;  backDrop(); tutorialP1();}
if (tutorialP2 == true){startScreen = false;  backDrop(); tutorialP2();}
// Game over conditions
if (gameOver == true) {gameStarted = false;  backDrop();  endGame();}

// Defining cloud variables through a for loop
for(int i = 0; i < cloudNum; i++){cloudX[i]+=cloudXDelta[i];}

}
