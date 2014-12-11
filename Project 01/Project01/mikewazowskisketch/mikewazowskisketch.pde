// Will Varalla
// Project Mike Wazowski

void setup() {
  size(600,400); // canvas size
  background(255,255,255); // black background
  drawMike(300,150,185);
}
// define function
void drawMike(int x, int y, int s) {
  
  
  // left leg
      fill(0,255,0);
      strokeWeight(2);
      quad(x+30,y+20,x+30,y+180,x+50,y+180,x+50,y+20);
      
    // right leg
      fill(0,255,0);
      strokeWeight(2);
      quad(x-30,y+20,x-30,y+180,x-50,y+180,x-50,y+20);
  
  
// left arm
      stroke(0,255,0);
      strokeWeight(9);
      line(x+80,y-8,x+130,y+100);
      
  // right arm
      stroke(0,255,0);
      strokeWeight(9);
      line(x-80,y-8,x-130,y+100);
  
  
  
  // horn 1 (on left)
    stroke(0,0,0);
    strokeWeight(1);
    fill(243,245,188);
    triangle(x-28,y-84,x-43,y-98,x-53,y-73);
    
  // horn 2 (on right)
    fill(243,245,188);
    triangle(x+28,y-84,x+43,y-98,x+53,y-73);
  
  // body/head
    fill(0,255,0);
    ellipse(x,y,1*s, 1*s);
    
  // eyebrow
    fill(29,206,21);
    ellipse(x,y-35,.4*s,.51*s);
    
  // eyebrow pt. 2
    fill(19,183,11);
    ellipse(x,y-35,.4*s,.4*s);
    
  // eye socket
    fill(255,255,255);
    ellipse(x+0,y-30,.41*s,.4*s);
    
  // eye Iris
    fill(60,255,90);
    ellipse(x,y-31,.2*s,.2*s);
    
   // eye pupil
    fill(0,0,0);
    ellipse(x,y-31,.1*s,.1*s);
    
    // eye glint
    fill(255,255,255);
    ellipse(x-3,y-35,.04*s,.04*s);
    
    
    // upper mouth
      strokeWeight(3);
      fill(0,255,0);
      arc(x,y+42,.41*s,.2*s,0,PI);
      

      
   
    
      
      
    
    
 
    
    
  
  
  
  
}


