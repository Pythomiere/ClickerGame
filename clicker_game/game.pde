void game() {

  strokeWeight(3);
  background(#466c3e);

  // scoreboard
  fill(#68A1E5); 
  rect(105, 55, 200, 100, 20);
  textSize(32);
  fill(#1C292C);
  text("Score: " + score, 107, 33);
  text("Lives: " + lives, 107, 74);

  //pause button 
  imageMode(CENTER);
  strokeWeight(1);
  stroke(#4D7142);
  fill(#72AA62);
  rect(1055, 25, 40, 40, 20);
  textSize(30);
  fill(#93D67F);
  image(Pause, 1058, 25, 25, 29); 

  //display target
  strokeWeight(3);
  stroke(#4b4f4a);
  fill(#929BA7);
  circle(x, y, d);
  image(term, x, y, d*0.9, d*0.9);

  // moving
  x = x +vx; 
  y = y + vy;
  // bouncing
  if (x - d/2 <= 0 || x + d/2 >= width) {
    vx = vx * -1;
    DING.play();
    DING.rewind();
  }
  if (y - d/2 <= 0 || y + d/2 >= height) {
    vy = vy * -1;
    DING.play();
    DING.rewind();
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.05;
    vy = vy * 1.05;
    if (score%10 != 0) {
      COIN.rewind();
      COIN.play();
    } else { 
      TADA.rewind();
      TADA.play();
    }
  } else if (mouseX > 1035 && mouseX < 1075 && mouseY < 45 && mouseY > 5) {
    mode = pause;
  } else {
    lives = lives - 1;
    if (lives > 0) {
      BUMP.rewind();
      BUMP.play();
    } else {
      GAMEOVER.rewind();
      GAMEOVER.play();
    }
  }
  if (lives <= 0) {
    mode = gameover;
  }
}
