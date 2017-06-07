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
  updatePaddlePositions();
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  // Display Scores
  
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
  rect(0+paddleWidth ,leftPaddle, paddleWidth, paddleLength);
  
  fill(paddleColor);
  rectMode(CENTER);
  rect(displayWidth- paddleWidth,rightPaddle, paddleWidth, paddleLength);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}