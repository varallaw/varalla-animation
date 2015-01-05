// Will Varalla
// Snowball class


class SnowBall extends Actor {
  public SnowBall() {
    super();
    x = random(0, width);
    y = random(0, height);
    size = (int)random(20, 40);
    fillBlue = 255;
    fillRed = 255;
    fillGreen = 255;
    dy = (int)random(5, 10);
  }
  
  public void drawBall() {
    fill(fillRed, fillGreen, fillBlue);
    stroke(penRed, penGreen, penBlue);
    ellipse(x, y, size, size);
  }
  
  public void act() {
    drawBall();
    move();
    if (y > height) {
      y = -20;
      dy = (int)random(1, 10);
      x = (int)random(0, width);
    }
  }
  
}
