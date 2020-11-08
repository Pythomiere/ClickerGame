void options() {
  background(#b7b1a5);
  fill(#929BA7);
  circle(width/3, height/3, 250);
  circle(width*5.87/10, height/3, 250);
  circle(width*8.4/10, height/3, 250);
  imageMode(CENTER);
  image(source, width*8.4/10, height/3, 230, 230);
  image(joker, width*5.87/10, height/3 + 10, 200, 200);
  image(rog, width/3, height/3, 200, 200);
  optionsDraw();
}

void optionsDraw() {
  strokeWeight(4);
  line(lx, ly, lx, ly + ll);
  stroke(#676666);
  fill(#929BA7);
  circle(lx, sliderY, d);
  strokeWeight(2);
  stroke(#454545);
  fill(#a29988);
  if (mouseX > width*5/6 - 55 && mouseX < width*5/6 + 55 && mouseY > height*5/6  - 30 && mouseY < height*5/6 + 30 && mode == options) {
    fill(#A09C88);
    strokeWeight(1);
  }
  rect(width*5/6, height*5/6, 110, 60, 20);
  textSize(30);
  fill(#EDDDB1);
  text("Back", width*5/6, height*5/6 - 3);
  strokeWeight(2);
  image(term, lx, sliderY, d*0.9, d*0.9);
}

void controlSlider() {
  if (mouseX > lx - 20 && mouseX < lx + 20 && mouseY > ly && mouseY < ly + ll && mode == options) {
    sliderY = mouseY;
    d = sliderY*0.5;
  }
}

void mouseDragged() {
  controlSlider();
}

void mousePressed() {
  controlSlider();
}

void optionsRealeased() {
  controlSlider();
}

void optionsClicks() {
  if (mouseX > width*5/6 - 55 && mouseX < width*5/6 + 55 && mouseY > height*5/6  - 30 && mouseY < height*5/6 + 30 && mode == options) {
    mode = intro;
  }
  if (dist(mouseX, mouseY, width/3, height/3) < 125 && mode == options) { 
    term = loadImage("rog.png");
    image(term, lx, sliderY, d - 5, (d - 5)*0.55);
  } else if (dist(mouseX, mouseY, width*5.87/10, height/3) < 125 && mode == options) { 
    image(term, lx, sliderY, d - 40, d - 40);
    term = loadImage("Joker.png");
  } else if (dist(mouseX, mouseY, width*8.4/10, height/3) < 125 && mode == options) { 
    term = loadImage("source.png");
    image(term, lx, sliderY, d - 10, d - 10);
  }
}
