class Snake {
  PVector pos;
  PVector vel;
  PVector dir;
  int size = 10 ;

Snake() {
    pos = new PVector(width/2, height/2);
    vel = new PVector();

    }

  void show() {
     
    rectMode(CENTER);
    fill(102, 0, 255);
    stroke(102, 0, 255);
    rect(pos.x, pos.y , size-5, size-5);
    
  }

  void direction(float x, float y) {
    vel.x = x;
    vel.y = y;
    println(vel.x);
  }

  void move() {
    vel.mult(size);
    pos.add(vel);
  }

  void keyPressed() {
    if (keyCode == UP) {
      snake.direction(0, -1);
      vel.y = -1;
    } else if (keyCode == DOWN) {
      snake.direction(0, 1);
    } else if (keyCode == RIGHT) {
      snake.direction(1, 0);
    } else if (keyCode == LEFT) {
      snake.direction(-1, 0);
    }
  }

  void edgedetect() { 

    pos.x = constrain(pos.x, (size-5), width-(size-5));
    pos.y = constrain(pos.y, 30+50+(size-5), height-(size-5));
    
  }
  
  
  

  
  /*void box1(){
    stroke(0);
    strokeWeight(5);
    line(30,30+50,30,boxY);  
    line(30,30+50,boxX,30+50);  
    line(boxX,30+50,boxX,boxY);
    line(30,boxY,boxX,boxY);

  }*/
  
}
