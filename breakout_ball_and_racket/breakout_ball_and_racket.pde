/**
T created this by doing LOTS of research and watching a bunch
of tutorials for features in processing and java to make the game features.
*/

int gameScreen = 0;

int ballX, ballY;
int ballSize = 20;
int ballCOLOR = color(0);

void setup(){
  size(600,600);
 ballX=width/4;
 ballY=height/5;
}


void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    startScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  }
}
void drawball(){
  fill(ballCOLOR);
  ellipse(ballX,ballY,ballSize,ballSize);
}

//screen stuff

void startScreen() {
  background(0);
  textAlign(CENTER);
  text("Click to start", height/2, width/2);
 
}
float gravity = 1;
float ballspeedvert = 0;
color racketColor = color(0);
float racketWidth = 100;
float racketHeight = 10;
int racketbouncerate = 20;

void gameScreen() {
  background(255);
  drawball();
  apply_gravity();
  keepInScreen();
  drawRacket();
  watchracketbounce();
} 
void drawRacket(){
  fill(racketColor);
  rectMode(CENTER);
  rect(mouseX, mouseY, racketWidth, racketHeight);
  }
  void watchracketbounce(){
     float overhead = mouseY - pmouseY;
  if ((ballX+(ballSize/2) > mouseX-(racketWidth/2)) && (ballX-(ballSize/2) < mouseX+(racketWidth/2))) {
    if (dist(ballX, ballY, ballX, mouseY)<=(ballSize/2)+abs(overhead)) {
      makeBounceBottom(mouseY);
      // racket moving up
      if (overhead<0) {
        ballY+=overhead;
        ballspeedvert+=overhead;
      }
    }
  }
  }
  
float airfriction = 0.001;
float friction = 0.1;
void apply_gravity(){
   ballspeedvert += gravity;
   ballY += ballspeedvert;
   ballspeedvert -= (ballspeedvert * airfriction);
  
}  
void makeBounceBottom(int surface) {
  ballY = surface-(ballSize/2);
  ballspeedvert*=-1;
  ballspeedvert -= (ballspeedvert * friction);
}
void makeBounceTop(int surface) {
  ballY = surface+(ballSize/2);
  ballspeedvert*=-1;
   ballspeedvert -= (ballspeedvert * friction);
}
// keeps the ball in the screen
void keepInScreen() {
  // ball hits floor
  if (ballY+(ballSize/2) > height) { 
    makeBounceBottom(height);
  }
  // ball hits ceiling
  if (ballY-(ballSize/2) < 0) {
    makeBounceTop(0);
  }
}
void gameOverScreen() {

}




public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
}


void startGame() {
  gameScreen=1;
}
