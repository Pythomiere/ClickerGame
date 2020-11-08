void gameover() {
  THEME.pause();
  GAMEOVER.play();
  if (highscore < score) {
    highscore = score;
  }
  background(#F07F79);
  textSize(60);
  text("Your Score: " + score, width/2, height/3);
  text("Hightest Score: " + highscore, width/2, height/2);
  strokeWeight(2);
  fill(#C65656);
  rect(width/2, height*4/5, 110, 60, 20);
  textSize(30);
  fill(#3E3D3B);
  text("Quit", width/2, height*4/5 - 2);
  gameoverReleased();
  if (mouseX < width/2 + 55 && mouseX > width/2 - 55 && mouseY < height*4/5 + 30 && mouseY > height*4/5 - 30 && mode == gameover) {
    TICK.play();
  }
}

void gameoverClicks() {
  if (mouseX < width/2 + 55 && mouseX > width/2 - 55 && mouseY < height*4/5 + 30 && mouseY > height*4/5 - 30 && mode == gameover) {
    exit();
  }
  mode = intro;
}

void gameoverReleased() {
  if (mouseX < width/2 + 55 && mouseX > width/2 - 55 && mouseY < height*4/5 + 30 && mouseY > height*4/5 - 30 && mode == gameover) {
    strokeWeight(1);
    fill(#E87070);
    rect(width/2, height*4/5, 110, 60, 20);
    textSize(30);
    fill(#3E3D3B);
    text("Quit", width/2, height*4/5 - 2);
  }
}
