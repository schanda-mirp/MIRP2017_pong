void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void collisionBall()
{
  
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