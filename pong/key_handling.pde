void keyPressed() {
  if (key == LEFT_UP)       left_up = true;
  if (key == LEFT_DOWN)     left_down = true;
  if (key == RIGHT_UP)      right_up = true;
  if (key == RIGHT_DOWN)    right_down = true;
  if (key == RESET)        {reset = true; gameState = 0;}
  if (key == PAUSE)        {pause = true; gameState = 2;}
  if (key == START)        {start = true; gameState = 1;}
  if (key == HELP)         {help = true; gameState = 3;}
  if (key == PLAY)         {play = true; gameState = 1;}
}

void keyReleased() {
  if (key == LEFT_UP)       left_up = false;
  if (key == LEFT_DOWN)     left_down = false;
  if (key == RIGHT_UP)      right_up = false;
  if (key == RIGHT_DOWN)    right_down = false;
  if (key == RESET)         reset = false;
  if (key == PAUSE)         pause = false;
  if (key == START)         start = false;
  if (key == HELP)          help = false;
  if (key == PLAY)          play = true;
}