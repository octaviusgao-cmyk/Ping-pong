void game() {
  //paddles
  background(court);
  stroke(blue);
  fill(white);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  image(phoenix, leftx + 70, lefty, 150, 150);
  image(edgeworth, rightx - 70, righty, 150, 150);

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
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
  if (wkey == true) lefty = lefty - 9;
  if (skey == true) lefty = lefty + 9;

  if (AI == false) {
    if (upkey == true) righty = righty - 9;
    if (downkey == true) righty = righty + 9;
  } else {
    if (ballx > width/2) {
      if (bally > righty) {
        righty = righty + 10;
      } else if (bally < righty) {
        righty = righty - 10;
      }
    }
  }
  //ball
  circle(ballx, bally, balld);


  if (bally < balld/2 || bally > width-balld/2) {
    vy = vy * -1;
  }

  if (leftscore == 5) {
    mode = gameover;
  } else if (rightscore == 5) {
    mode = gameover;
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


void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(255);
  } else {
    stroke(red);
    strokeWeight(3);
  }
}


void gameClicks() {
  mode = pause;
  
}
