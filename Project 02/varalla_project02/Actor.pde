// Will Varalla
// Actor Class


class Actor {
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0;
  int size = 50;
  int wid = 50;
  int hei = 50;
  int dx = 0;
  int dy = 0;
  
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    
  }
  
  public Actor () {
    
  }
  
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  }
  
  void move() {
    x = x + dx;
    y = y + dy;
  }
  
  void moveMike() {
    x = x + dx;
  }
  
  void goTo(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  void bounceEdge() {
    if (x > width || x < 0) {
      dx = dx * -1;
    }
    if (y > height || y < 0) {
      dy = dy * -1;
    }
  }
  
  void setDX(int xVel) {
    dx = xVel;
  }
  
    void setDY(int yVel) {
      
    dy = yVel;
  }
  
  void drawRect() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }
  
  void drawEllipse() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, wid, hei);
  }
  
  void drawTriangle() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x + wid, y, x + (wid/2), y - hei);
  }
  
  public boolean isTouching(Actor a) {
    boolean xTouch = ((x < a.x+a.wid) && (x > a.x));
    boolean yTouch = ((y < a.y+a.hei) && (y > a.y));
    if (xTouch && yTouch) {
      return true;
    }
    else {
      return false;
    }
  }
  
  public void bounceActorHorizontal(Actor a) {
    if (isTouching(a)) {
      stop();
    }
  }
}

