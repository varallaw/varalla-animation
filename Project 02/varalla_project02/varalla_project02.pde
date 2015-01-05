// Will Varalla
// Actor Class: Project 02
// Main Class



SnowBall snow [] = new SnowBall[5];

Mike mike = new Mike(300, 280);
Actor ground = new Actor(0, 300);

void setup() {
  size(600, 400);
  background(0, 0, 0);
  
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new SnowBall();
  }
  
  //set mike's values
  mike.setColor(255, 255, 255);
  mike.setPenColor(0, 0, 0);
  mike.wid = 100;
  mike.hei = 100;
  mike.setDX(5);
  mike.setDY(5);
  mike.size = 185;

  //set ground values
  ground.setColor(70, 240, 80);
  ground.wid = 600;
  ground.hei = 100;
  
}

void draw() {
  background(0, 80, 255);
  
  ground.drawRect();
  
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        mike.dx = -10;
        mike.moveMike();
      }
      if (keyCode == RIGHT) {
        mike.dx = 10;
        mike.moveMike();
      }
    }
  }

  mike.drawMike();
  for (int i = 0; i < snow.length; i++) {
    snow[i].act();
    snow[i].bounceActorHorizontal(mike);
  } 
}


