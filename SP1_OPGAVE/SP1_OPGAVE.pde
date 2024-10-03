// Declaring objects for the player paddle and the ball
Paddle Player1;
Ball ball;

// Variable to store the ball's previous y-coordinate position
float previousY;

// Array to store the score of the player (currently only one score element)
int[] score = {1};

void setup() {
  
  size(500, 500);

  
  rectMode(CENTER);

  // Initializing the paddle object at the center bottom of the screen (x: width/2, y: 480), with width 80 and speed 7
  Player1 = new Paddle(width/2, 480, 80, 7);

  // Initializing the ball object at the top center of the screen (x: width/2, y: 10) with a diameter of 20
  ball = new Ball(width/2, 10, 20);

  // Set the previous y-coordinate of the ball to the middle of the screen initially
  previousY = height/2;
}

void draw() {
  // Clear the screen with a black background
  background(0);

  // Draw a rectangle at the center of the window (used as a divider in the game)
  rect(height/2, width/2, 500, 3);

  // Move and display the ball
  ball.move();
  ball.show();

  // Move and display the paddle
  Player1.move();
  Player1.show();

  // Check if the ball crosses the middle of the screen (moving down) and update the score
  if (ball.y > height/2 && previousY <= height / 2) {
    score[0] = 1 + score[0];  // Increment the score
  }

  // Reset the game if the ball goes below the bottom of the screen
  if (ball.y > 500) {
    resetGame();
  }

  // Display the score on the screen
  displayScore();
}
  // Display the score on the screen
void displayScore() {
  
  fill(255);

 
  textSize(32);

  // Loop through the score array and display the score on the screen
  for (int i = 0; i < score.length; i++) {
    text("Score " + ": " + score[i], 200 + (i * 10), 50);
  }
}

// Function to control paddle movement using the 'a' and 'd' keys
void keyPressed() {
 
  if (key == 'a')
    Player1.LEFT = true;


  if (key == 'd')
    Player1.RIGHT = true;
}

// Function to stop paddle movement when keys are released
void keyReleased() {
  
  if (key == 'a') {
    Player1.LEFT = false;
  }


  if (key == 'd') {
    Player1.RIGHT = false;
  }
}
