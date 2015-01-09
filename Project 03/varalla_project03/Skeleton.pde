// Skeleton Class
// Extends Actor

class Skeleton extends Actor {
  // Fields for Skeleton
  // body
  Segment body;
  
  // left side
  Segment luleg;
  Segment llowleg;
  Segment lshoulder;
  Segment luarm;
  Segment llowarm;
  Segment ruleg;
  Segment rlowleg;
  Segment rshoulder;
  Segment ruarm;
  Segment rlowarm;
  Segment head;

  public Skeleton(float xPos, float yPos) {
    super(xPos,yPos);
    // Initialize Segments
    body = new Segment(xPos,yPos,-90,100);
    body.weight=10;
    body.setPenColor(0,0,0);
    
    head = new Segment(xPos,yPos,270,40);
    head.weight=10;
    head.setPenColor(0,0,0);
    
    luleg=new Segment(xPos,yPos,45,50);
    luleg.weight=10;
    luleg.setPenColor(0,0,255);
    
    llowleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 50);
    llowleg.weight=10;
    llowleg.setPenColor(0,255,0);
    
    lshoulder = new Segment(body.getEndX(), body.getEndY(), 0,30);
    lshoulder.weight=10;
    lshoulder.setPenColor(0,0,255);
    
    luarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(),45,55);
    luarm.weight=10;
    luarm.setPenColor(0,255,0);
    
    llowarm=new Segment(luarm.getEndX(), luarm.getEndY(),90,40);
    llowarm.weight=10;
    llowarm.setPenColor(255,0,0);
    
    ruleg=new Segment(xPos,yPos,-215,50);
    ruleg.weight=10;
    ruleg.setPenColor(0,0,255);
    
    rlowleg = new Segment(ruleg.getEndX(), ruleg.getEndY(), 90, 50);
    rlowleg.weight=10;
    rlowleg.setPenColor(0,255,0); 
    
    rshoulder = new Segment(body.getEndX(), body.getEndY(), 180,30);
    rshoulder.weight=10;
    rshoulder.setPenColor(0,0,255);
    
    ruarm = new Segment(rshoulder.getEndX(), rshoulder.getEndY(),135,55);
    ruarm.weight=10;
    ruarm.setPenColor(0,255,0);
    
    rlowarm=new Segment(ruarm.getEndX(), ruarm.getEndY(),90,40);
    rlowarm.weight=10;
    rlowarm.setPenColor(255,0,0);
    
  }
    
    
  
  
  
  public void drawFrame() {
    // Call Segment.drawLine() for al the body parts
    body.drawLine();
    luleg.drawLine();
    llowleg.goTo(luleg.getEndX(), luleg.getEndY());
    llowleg.drawLine();
    
    lshoulder.goTo(body.getEndX(), body.getEndY());
    lshoulder.drawLine();
    
    head.goTo(body.getEndX(), body.getEndY());
    head.drawLine();
    ellipse(head.getEndX(), head.getEndY(), 30,30);
    
    luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
    luarm.drawLine();
    
    llowarm.goTo(luarm.getEndX(), luarm.getEndY());
    llowarm.drawLine();
    
    ruleg.drawLine();
    rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
    rlowleg.drawLine();
    
    rshoulder.goTo(body.getEndX(), body.getEndY());
    rshoulder.drawLine();
    
    ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
    ruarm.drawLine();
    
    rlowarm.goTo(ruarm.getEndX(), ruarm.getEndY());
    rlowarm.drawLine();
    
    if (keyPressed) {
      if (key == 'g') {
        body.turn(1);
      }
      if (key == 'f') {
        body.turn(-1);
      }
  }
  
  
  if (keyPressed) {
      if (key == 'c') {
        luleg.turn(1);
      }
      if (key == 'v') {
        luleg.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 'z') {
        ruleg.turn(1);
      }
      if (key == 'x') {
        ruleg.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 'b') {
        rlowleg.turn(1);
      }
      if (key == 'n') {
        rlowleg.turn(-1);
      }
  }
  
   if (keyPressed) {
      if (key == 'm') {
        llowleg.turn(1);
      }
      if (key == ',') {
        llowleg.turn(-1);
      }
  }
  
   if (keyPressed) {
      if (key == 'h') {
        lshoulder.turn(1);
      }
      if (key == 'j') {
        lshoulder.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 's') {
        rshoulder.turn(1);
      }
      if (key == 'd') {
        rshoulder.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 'e') {
        ruarm.turn(1);
      }
      if (key == 'r') {
        ruarm.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 't') {
        luarm.turn(1);
      }
      if (key == 'y') {
        luarm.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 'q') {
        rlowarm.turn(1);
      }
      if (key == 'w') {
        rlowarm.turn(-1);
      }
  }
  
  if (keyPressed) {
      if (key == 'u') {
        llowarm.turn(1);
      }
      if (key == 'i') {
        llowarm.turn(-1);
      }
  }
  
   if (keyPressed) {
      if (key == '5') {
        head.turn(1);
      }
      if (key == '4') {
        head.turn(-1);
      }
  }
  
  
  
  
  
  
  
  
  
  }
  
  // act() function - all the movements / activities for Skeleton
  public void act() {
    drawFrame();
//    luleg.turn(1);
  }
  
} // end Skeleton
  
