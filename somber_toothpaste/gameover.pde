void gameover() {
  if (leftscore > rightscore) {
    background(court);
    fill(red);
    textSize(70);
    text("PHOENIX WRIGHT...WINS", 450, 200);
    image(left, 300, 500, 500, 500);
    image(rightlose, 600, 500, 500, 500);
    
  } else {
  } background(court);
    fill(red);
    textSize(30);
    text("MILES EDGEWORTH... WINS", 450, 200);
    image(right, 600, 500, 500, 500);
    image()
}

void gameoverClicks() {
}
