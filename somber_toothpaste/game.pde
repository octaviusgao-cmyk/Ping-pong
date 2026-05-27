void game() {
  //paddles
  background(0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (timer < 0) {

  }
  //scoreboard
  textSize(50);
  fill(21, 60, 47);
  text(leftscore, width/4, 100);
  fill(28, 40, 50);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 800);
  timer = timer - 1;

  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  //scoring
  if (ballx < 0) {
    rightscore = rightscore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  if (ballx > 900) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }


  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  //ball
  circle(ballx, bally, balld);


  if (bally < balld/2 || bally > width-balld/2) {
    vy = vy * -1;
  }


  //paddle limit
  if (lefty > 700) {
    lefty = 700;
  }
  if (lefty < 200) {
    lefty = 200;
  }
  if (righty > 700) {
    righty = 700;
  }
  if (righty < 200) {
    righty = 200;
  }
}


void gameClicks() {
}
