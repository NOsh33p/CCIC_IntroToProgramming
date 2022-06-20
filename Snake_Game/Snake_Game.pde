snake s;

void setup(){
  size(400,400);
  s = new snake();
  background(0);
}


void draw(){
  background(0);
  s.drawSnake();
  s.moveSnake();
  s.changeDirection(keyCode);
}
