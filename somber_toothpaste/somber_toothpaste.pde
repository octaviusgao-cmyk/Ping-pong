//snaaake
//audiocut.io

int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//entity variables
float vx, vy;
float x1, y2, d;
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld;

//keyboard variables

boolean wkey, skey, upkey, downkey;



void setup() {
  background(0);
  
  size(900, 900);
  mode = game;
  
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
  
  vx = random(-5, 5);
  vy = random(-5, 5);
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
