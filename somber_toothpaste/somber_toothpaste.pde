//snaaake
//audiocut.io

int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//entity variables
float vx, vy, dor;
float x1, y2, d;
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld;

color white = #FEFEFE;
color darkBlue = #112146;
color red = #944430;
color pink = #E48873;
color blue = #2253BB;
color court = #D7C2AD;

PImage phoenix;
PImage edgeworth;
PImage right;
PImage left;
PImage rightlose;
PImage leftlose;

int rightscore, leftscore, timer;
boolean AI;

//keyboard variables

boolean wkey, skey, upkey, downkey;


void setup() {
  background(0);
  
  textAlign(CENTER);
  imageMode(CENTER);
  
  phoenix = loadImage("phoenixwright.png");
  edgeworth = loadImage("PHOTON_SHOT-removebg-preview.png");
  right = loadImage("edgeworth.png");
  left = loadImage("leftwin.png");
  rightlose = loadImage("rightlose1.png");
  leftlose = loadImage("rightlose-removebg-preview.png");
  
  size(900, 900);
  mode = intro;
  
  x1 = height/2;
  
  leftx = 0;
  lefty = height/2;
  leftd = 300;
  
  rightx = width;
  righty = height/2;
  rightd = 300;
  
  //initalize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //initalize keyboard vars
  wkey = skey = upkey = downkey = false;
  
  //initalize score
  rightscore = 0;
  leftscore = 0;
  timer = 100;
  
  vx = random(-5, 5);
  vy = random(-2, 2);
}

void draw() {
   if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error; Mode = " + mode);
  }
}
