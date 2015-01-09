// Project 03
// Will Varalla

// instances of segment
Segment arm = new Segment(300,200,-90,100);
Segment hand = new Segment(300,200,90,50);
//Segment foot = new Segment(500,200,100,60);
//Segment arm2 = new Segment(400,300,-90,100);

// Instances of Skeleton
Skeleton mySkeleton = new Skeleton(300,200);

void setup() {
  size(800,600);
  background(240,240,240);
  
  
//  arm.weight = 10;
//  arm.setPenColor (255,0,0);
//  
//  hand.weight = 10;
//  hand.setPenColor(0,0,255);
//  
//  foot.weight=15;
//  hand.setPenColor(96,240,125);
  
}

void draw() {
  background(240,240,240);
  
  mySkeleton.act();
  
//  arm.drawLine();
//  arm.turn(1);
//  
//  hand.goTo(arm.getEndX(), arm.getEndY());
//  hand.drawLine();
//  hand.turn(2);
//  
//  foot.goTo(hand.getEndX(), hand.getEndY());
//  foot.drawLine();
//  foot.turn(5);
//  strokeWeight(2);
//  ellipse(hand.getEndX(), hand.getEndY(), 30,30);
//  
//  arm2.goTo(foot.getEndX(), foot.getEndY());
//  arm2.drawLine();
//  arm2.turn(14);
  
  
  
} // end draw function
