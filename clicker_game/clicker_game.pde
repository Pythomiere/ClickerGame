import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// mode framework
int mode; 
final int intro = 0; 
final int game = 1;
final int pause = 2; 
final int gameover = 3;
final int options = 4;

// target variables
float x, y, d;
float vx, vy; //target velocity'
int score, lives, highscore;

// sound variables
Minim minim;
AudioPlayer THEME, COIN, BUMP, GAMEOVER, GAMESTART, TADA, TICK, DING;

PFont pixel;
PFont pix;

// slider
float sliderY;
float thickness;
float lx; 
float ly; 
float ll; 

// Images 
PImage Pause;
PImage source; 

PImage joker; 
PImage rog;
PImage term;

void setup() {
  size(1080, 675);
  mode = intro;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = intro;

  // color initialization
  d = 100;
  vx = 2; 
  vy = -2;
  score = 0;
  lives = 3; 
  highscore = 0;
  pixel = createFont("Pixel.ttf", 200);
  pix = createFont("Pix.ttf", 200);

  // minim
  minim = new Minim(this);
  THEME = minim.loadFile("looop.mp3");
  COIN = minim.loadFile("boop.mp3");
  BUMP = minim.loadFile("nope.mp3");
  GAMEOVER = minim.loadFile("gameover.mp3");
  GAMESTART = minim.loadFile("woosh.mp3");
  TADA = minim.loadFile("tada.mp3");
  TICK = minim.loadFile("tick.mp3");
  DING = minim.loadFile("ding.mp3");

  //silder
  thickness = 0;
  lx = 150;
  ly = 120; 
  ll = 400;
  sliderY = d + ly;

  //images 
  source = loadImage("source.png");
  Pause = loadImage("pause.png");
  term = loadImage("rog.png");
  joker = loadImage("Joker.png");
  rog = loadImage("rog.png");
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) { 
    game();
  } else if (mode == pause) {
    pausescreen();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
