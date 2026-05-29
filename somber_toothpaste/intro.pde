void intro() {
  background(darkBlue);
  
  fill(pink);
  textSize(40);
  text("The Court... of Law", 450, 100);
  
  image(phoenix, 450, 300, 300, 300);
  
  fill(pink);
  stroke(red);
  tactile(100, 600, 350, 115);
  rect(100, 600, 350, 115);
  fill(blue);
  text("Argue with yourself", 270, 670);
  
  fill(blue);
  stroke(red);
  tactile(500, 600, 350, 115);
  rect(500, 600, 350, 115);
  fill(pink);
  text("Argue with another", 670, 670);
  
}

void introClicks() {
  if (mouseX > 100 && mouseX < 450 && mouseY > 600 && mouseY < 715) {
    mode = game;
    AI = true;
  }
  if (mouseX > 500 && mouseX < 850 && mouseY > 600 && mouseY < 715) {
    mode = game;
    AI = false;
  }
}
