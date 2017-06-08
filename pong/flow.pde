void rightLose() {
  leftScore+=1;
  gamePause();
  ballX= displayWidth/2;
  ballY= displayHeight/2;
  ballVx= - BALL_VELOCITY;
  ballVy=  0;
}

void leftLose() {
  rightScore+=1;
  gamePause();
  ballX= displayWidth/2;
  ballY= displayHeight/2;
  ballVx=  BALL_VELOCITY;
  ballVy=  0;
}
 
void gamePause()
{
  delay(2000);
}