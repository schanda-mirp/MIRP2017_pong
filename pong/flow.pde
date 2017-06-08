void rightLose() {
  leftScore+=1;
  delay(2000);
  ballX= displayWidth/2;
  ballY= displayHeight/2;
  ballVx= - BALL_VELOCITY;
  ballVy= 0;
  leftPaddle=displayHeight/2; 
  rightPaddle=displayHeight/2;
}

void leftLose() {
  rightScore+=1;
  delay(2000);
  ballX= displayWidth/2;
  ballY= displayHeight/2;
  ballVx=  BALL_VELOCITY;
  ballVy=  0;
  leftPaddle=displayHeight/2; 
  rightPaddle=displayHeight/2;
}
 


void gameStart()
{
 color pong = color( 50, 200, 70);
 fill (pong);
 text("PONG" , displayWidth/2 - 80 , displayHeight/2 );
 text("To start press 's'" , 0 , 3*displayHeight/4);
 text("For help press 'h'" , displayWidth/2 - 20 , 3*displayHeight/4 + 50);
}

void gamePause()
{ 
  fill(255);
  text("PAUSED!!!", displayWidth/2 - 100 , displayHeight/2 );
  text("To play press 'p'", 10 , 3*displayHeight/4 );
  text("For help press 'h'" , displayWidth/2 - 20 , 3*displayHeight/4 + 50);
}