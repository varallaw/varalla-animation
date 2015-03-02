class Eagle extends Actor {
  
  
  
  // defining function
  
  void drawEagle(int x, int y, int s) {
    
    // body
    fill(77,77,56);
    ellipse(x,y,180);
    
    // right arm
    fill(77,77,56);
    triangle(x+20,y,x+40,y,x+20,y-40);
    
    // left arm
    fill(77,77,56);
    triangle(x-20,y,x-40,y,x-20,y-40);
    
    // nose
    fill(195,198,26);
    triangle(x-4,y-1,x+4,y-1,x,y-8);
    
    // right eye
    fill(255,255,255);
    ellipse(x+10,y+27,.4*s,.4*s);
    
    // left eye
    fill(255,255,255);
    ellipse(x-10,y+27,.4*s,.4*s);
    
    // right pupil
    fill(0,0,0);
    ellipse(x+10,y+27,.15*s,.15*s);
    
    // left pupil
    fill(0,0,0);
    ellipse(x-10,y+27,.15*s,.15*s);
    
    // right eye glint
    fill(255,255,255);
    ellipse(x+12,y+27,.08*s,.08*s);
    
    // left eye glint
    fill(255,255,255);
    ellipse(x-12,y+27,.08*s,.08*s);
    
  }
}


// all I had time to finish
