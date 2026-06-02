void gameover() {
  if (leftscore ==5) {
    phoenixwin.play();
    background(court);
    fill(red);
    textSize(70);
    text("PHOENIX WRIGHT...WINS", 450, 200);
    image(left, 300, 500, 500, 500);
    image(rightlose, 600, 500, 500, 500);
  } else if (rightscore == 5) {
    mileswin.play();
    background(court);
    fill(red);
    textSize(70);
    text("MILES EDGEWORTH... WINS", 450, 200);
    image(right, 600, 500, 500, 500);
    image(leftlose, 300, 500, 500, 500);
  }
}

void gameoverClicks() {
  mode = intro;
  leftscore = 0;
  rightscore = 0;
}
