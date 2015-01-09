// Segment Class
// Will extend actor

class Segment extends Actor {
  float len; // length
  float weight = 5; // thickness
  
  // Constructors
  public Segment(float x, float y) {
    // Call the super
    super(x,y);
  }
  
  public Segment(float x, float y, float d, float s) {
    super(x,y);
    direction = d;
    len = s;    
  }
  
  public Segment() {
  
  }
  
  
  // Draw Line Function - the math
  public void drawLine() {
   // Calculate the end points
  float x2 = x + len * cos(radians(direction));
 float y2 = y + len * sin(radians(direction));
stroke(penRed, penGreen,penBlue);
strokeWeight(weight);
line(x,y,x2,y2);
    
  }
  
  public float getEndX() {
    float x2 = x + len*cos(radians(direction));
    return x2;
  }
  
  public float getEndY() {
    float y2 = y +len*sin(radians(direction));
    return y2;
  }
  
  
}
