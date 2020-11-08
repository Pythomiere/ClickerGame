void pausescreen() {
  THEME.pause();
  fill(0); 
  text("Pause", width/2, height/2, 30);
  strokeWeight(1);
  stroke(#4D7142);
  fill(#72AA62);
  rect(1055, 25, 40, 40, 20);
  textSize(30);
  fill(#93D67F);
  text("II", 1055, 23);
}

void pauseClicks() {
  if (mouseX > 1035 && mouseX < 1075 && mouseY < 45 && mouseY > 5 && mode == pause ) {
    mode = game;
    THEME.play();
  }
}
