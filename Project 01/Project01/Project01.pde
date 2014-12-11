// Will Varalla
// Project 01


// Define function
void drawSnowman(int x, int y, int s) {
  // low
  fill(240,240,240); // white ish
  ellipse(x, y+6*s, 11*s, 11*s);
  // mid
  ellipse(x, y, 8*s, 8*s);
  // head
  ellipse(x, y-5*s, 6*s, 6*s);
  // right eye
  fill(255,0,0); //black
  ellipse(x-1*s, y-6*s, 1*s, 1*s);
  // left eye
  fill(255,0,0);
  ellipse(x+1*s, y-6*s, 1*s, 1*s);
  // nose
  fill (250,122,3);
  triangle(x+0*s, y-5*s, x+.5*s, y-4*s, x+3*s, y-4*s);
  // hat
  fill(0,255,0);
  rect(x-1.32*s, y-10.5*s, 3*s, 3*s);
  rect(x-3*s, y-8.5*s, 6*s, 1*s);
  // mouth
  fill(240,240,240);
  arc(x, y-5*s, 4*s, 2*s, 0, PI);
  
}


void setup() {
    size(600,400); // canvas
    background (0,255,232);
    drawSnowman(300,200,10);
    drawSnowman(400,200,5);
    
} // end setup


void draw() {
  background(0,255,255);
drawSnowman(mouseX, mouseY, 5);
}
