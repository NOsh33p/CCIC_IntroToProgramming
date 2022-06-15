/**
float x = .0;
void setup(){
  size(400,400);
  background(0);
}

void draw(){
  circle(224, y , 220);
  changeY();
}
int y = 300;
int yspeed = 3;

void changeY() {
  if(y < 0) {
    yspeed = 3;
  }
  if(y>400) {
    yspeed = -3;
  }
  y=y+yspeed;
}
*/

void setup(){
 size(1000,1000);
 background(255);
 fill(204, 102, 0);
 circle(500,500,500);
 noFill();
 quad(257,251,343,229,167,330,383,330);
}

void lion_face(int x, int y){

}
 

  
  

  
