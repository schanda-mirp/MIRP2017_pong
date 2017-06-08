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
  // Update Ball Velocity and Resolve Collisions
  
  // Update Ball and Paddle Positions
  updateBallPosition();
  updatePaddlePositions();
  
  updateBallVelocity();
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  // Display Scores
  displayScores();
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
}

void displayScores() {
  //text("Left",  100, 100);
  text(leftScore, 100, 200);
  //text("Right", displayWidth - 100, 100);
  text(rightScore, displayWidth - 100, 200);
  // Display Left and Right player Scores
}