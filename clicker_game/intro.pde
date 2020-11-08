void intro() {
  introDraw();
}

void introDraw() {
  background(#5e6b5d);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(pixel);
  textSize(80);
  text("The Clicker Game", 550, 200);
  if (mouseX > width/3 - 100 && mouseX < width/3 + 100 && mouseY > height*2/3 - 50 && mouseY < height*2/3 + 50 && mode == intro) { 
    TICK.play();
    strokeWeight(1); 
    fill(#F2D073);
  } else {
    strokeWeight(2); 
    fill(#EDBD37);
  }
  introReleased();
  rectMode(CENTER);
  rect(width/3, height*2/3, 200, 100, 20);
  fill(0);
  textFont(pix);
  textSize(45);
  text("HITME!", width/3, height*2/3);
  if (mouseX  > width*2/3 - 100 && mouseX < width*2/3 + 100 && mouseY > height*2/3 - 50 && mouseY < height*2/3 + 50 && mode == intro) { 
    TICK.play();
    strokeWeight(1); 
    fill(#F2D073);
  } else {
    strokeWeight(2); 
    fill(#EDBD37);
  }
  introsReleased();
  rect(width*2/3, height*2/3, 200, 100, 20);
  fill(0);
  textSize(40);
  text("OPTIONS", width*2/3, height*2/3);
}

void introClicks() {
  if (mouseX > width/3 - 100 && mouseX < width/3 + 100 && mouseY > height*2/3 - 50 && mouseY < height*2/3 + 50) {
    mode = game;
    //x and y location
    x = random(d + 1, width - d - 1); 
    y = random(d + 1, height - d - 1); 
    lives = 3;
    score = 0;
    vx = 2; 
    vy = -2;
    THEME.play();
    THEME.rewind();
  } else if (mouseX > width*2/3 - 100 && mouseX < width*2/3 + 100 && mouseY > height*2/3 - 100 && mouseY < height*2/3 + 100) {
    mode = options;
  }
}

void introReleased() {
  if (pmouseX > width/3 - 100 && pmouseX < width/3 + 100 && pmouseY > height*2/3 - 50 && pmouseY < height*2/3 + 50 && mouseX < width/3 - 100 || mouseX > width/3 + 100 && mouseY < height*2/3 - 50 || mouseY > height*2/3 + 50 && mode == intro) {
    TICK.rewind();
  } else {
  }
}

void introsReleased() {
  if (pmouseX > width*2/3 - 100 && pmouseX < width*2/3 + 100 && pmouseY > height*2/3 - 50 && pmouseY < height*2/3 + 50 && mouseX < width*2/3 - 100 || mouseX > width*2/3 + 100 && mouseY < height*2/3 - 50 || mouseY > height*2/3 + 50 && mode == intro) {
    TICK.rewind();
  } else {
  }
}
