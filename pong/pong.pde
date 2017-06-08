void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  
  
  drawGameScreen();
}

void drawGameScreen() {
  // Draw background
  background(bgColor);
  textSize(50);
  if (gameState == 0)
     {gameStart();
      resetGame();}
     
  if (gameState == 2)
     {gamePause();}
     
  if (gameState == 4)
     {
       fill(255);
       text("Right player won" , displayWidth/2 - 250, displayHeight/2);
       text("To play again press 'r'", displayWidth/2 - 250, 3*displayHeight/4);
     }
  
   if (gameState == 5)
     {
       fill(255);
       text("Left player won" , displayWidth/2 - 250, displayHeight/2);
       text("To play again press 'r'", displayWidth/2 - 250, 3*displayHeight/4);
     }
  
  if (gameState == 3)
    {
      fill(255);
      textSize(24);
      text("Start game        => 's'", 0, 30);
      textSize(24);
      text("Pause game        => 'Spacebar'", 0,60);
      textSize(24);
      text("Reset game        => 'r'", 0, 90);
      textSize(24);
      text("Left paddle up    => 'q'", 0, 120);
      textSize(24);
      text("Left paddle down  => 'a'", 0, 150);
      textSize(24);
      text("Right paddle up   => 'o'", 0, 180);
      textSize(24);
      text("Right paddle down => 'k'", 0, 210);
    }
  
  if (gameState == 1)
  {// Update Ball and Paddle Positions
    updateBallPosition();
  updatePaddlePositions();
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  // Display Scores
  displayScores();}
}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX, ballY, ballRadius*2, ballRadius*2);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rectMode(CENTER);
  rect(0 ,leftPaddle, paddleWidth, paddleLength);
  
  fill(paddleColor);
  rectMode(CENTER);
  rect(displayWidth,rightPaddle, paddleWidth, paddleLength);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
  leftScore=0; rightScore=0;
  leftPaddle=displayHeight/2; rightPaddle=displayHeight/2;
  ballX=displayWidth/2; ballY=displayHeight/2;
  ballVx=-BALL_VELOCITY; ballVy=0;
}

void displayScores() {
  //text("Left",  100, 100);
  text(leftScore, 100, 200);
  //text("Right", displayWidth - 100, 100);
  text(rightScore, displayWidth - 100, 200);
  // Display Left and Right player Scores
  if (rightScore == 10)
     gameState=4;
  if (leftScore == 10)
     gameState=5;
}