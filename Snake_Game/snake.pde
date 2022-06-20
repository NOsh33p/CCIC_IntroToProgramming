public class snake{
  int x;
  int y;
  String currentDirection;
  public snake(){ 
    x = 200;
    y= 200;
    currentDirection = "UP";
     }
  public void drawSnake(){
    fill(0,255,0);
    rect(x,y,10,10);
  }
  public void moveSnake(){
   if(currentDirection == "UP"){
    y = y - 1;
   }else if(currentDirection == "RIGHT"){
     x=x+1;
   }else if(currentDirection == "DOWN"){
     y=y+1;
   }else if(currentDirection == "LEFT"){
     x=x-1;
   }
  }
   
 
    public void changeDirection( int keyNum){
      if (keyNum == 38){
        currentDirection = "UP";
      }else if(keyNum == 39){
        currentDirection ="RIGHT";
      }else if(keyNum == 40){
        currentDirection = "DOWN";
      }else if(keyNum == 37){
        currentDirection = "LEFT";
      }
    }     
  }
