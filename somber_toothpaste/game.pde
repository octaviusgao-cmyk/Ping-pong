void game() {
  //paddles
  background(0);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  ballx = ballx + vx;
  bally = bally + vy;

  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/7;
    vy = (bally = lefty)/7;
  }
  
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vx = vx * -1;
  }
  

  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  //ball
  circle(ballx, bally, balld);
  
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }
  if (bally < balld/2 || bally > width-balld/2) {
    vy = vy * -1;
  }
  
}
  

void gameClicks() {}
