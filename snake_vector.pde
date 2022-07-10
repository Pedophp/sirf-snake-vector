Snake snake;

void setup(){
  size(600,600);
  snake = new Snake();
//frameRate(40);

}



void draw(){
  
background(102, 255, 255);
snake.show();
snake.move();
snake.keyPressed();
snake.edgedetect();

}
