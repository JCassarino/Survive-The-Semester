void backDrop(){
  background(#95D2FA);
   noStroke();
fill(#FAD762);
circle(0, 0, 400);
translate(0, 0);

// Rotation of the sun and the rays aorund it 
for(int i = 0; i < 30; i++){
pushMatrix();
rotate(radians(theta[i]));
translate(300, 0);
ellipse(0, 0, 125, 15);
popMatrix();
theta[i] += 0.3;
}

// Clouds move to the right and reappear on the left at a new Y position
for(int i = 0; i < cloudNum; i++){
  noStroke();
  rectMode(CORNER);
  fill(255);
  rect(cloudX[i], cloudY[i], 200, 50, 28);
  circle(cloudX[i]+125, cloudY[i], 100);
  circle(cloudX[i]+75, cloudY[i], 60);
  
  if(cloudX[i] >= width){cloudX[i] = -200;  cloudY[i] = random(50, 350);}
imageMode(CORNER);
image(bg, 0, 290);
}
}
