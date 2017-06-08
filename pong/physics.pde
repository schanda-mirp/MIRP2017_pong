void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  
  collisionBall();
  
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void collisionBall()
{
  if (ballY <  ballRadius )                                            //collision with the upper screen
     {ballY= 0 + ballRadius;
     ballVy*= -1;}
  else if (ballY > displayHeight - ballRadius )                        //collision with the lower screen
     {ballY= displayHeight- ballRadius;
     ballVy*= -1;}
     
  if (ballX < paddleWidth  && ballY>  leftPaddle - paddleLength/2 && ballY < leftPaddle + paddleLength/2 )                          //collision with the left paddle
    {
     
     
          ballX= paddleWidth + ballRadius;
         ballVy= BALL_VELOCITY*(ballY - leftPaddle)/buffer;
          ballVx*=-1;
        
    }
  else if (ballX < 0 )
      {leftLose();}
  else if (ballX > displayWidth- paddleWidth && ballY>  rightPaddle - paddleLength/2 && ballY< rightPaddle + paddleLength/2 )       //collision with the right paddle
    {
     
        
          ballX= displayWidth -paddleWidth - ballRadius;
        //  ballVy=BALL_VELOCITY;
          ballVy= BALL_VELOCITY*(ballY - rightPaddle)/buffer;
          ballVx*=-1;
       
        
        
      //ballX= displayWidth -paddleWidth - ballRadius;
      //ballVx*= -1;
    }
  else if (ballX > displayWidth)
      rightLose();
 /* else if (ballX > displayWidth)
      rightLose();*/
 /* if (ballX < 0 + ballRadius )
     {ballX= 0 + ballRadius;
     ballVx*= -1;}
  else if (ballX > displayWidth - ballRadius )
     {ballX= displayWidth- ballRadius;
     ballVx*= -1;} */
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
  if (left_up )  
     leftPaddle -= PADDLE_VELOCITY;
  else if (left_down)   
     leftPaddle += PADDLE_VELOCITY;
  if (right_up)      
     rightPaddle -= PADDLE_VELOCITY;
  else if (right_down)    
     rightPaddle += PADDLE_VELOCITY;
     
  if(leftPaddle < 0)
    leftPaddle = leftPaddle/2;
    
  else if(leftPaddle > displayHeight)
    leftPaddle =2*displayHeight - leftPaddle ;
    
  if(rightPaddle < 0)
    rightPaddle = rightPaddle/2;
    
  else if(rightPaddle > displayHeight)
    rightPaddle =2*displayHeight - rightPaddle ;
}