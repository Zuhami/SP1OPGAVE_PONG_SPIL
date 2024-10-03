void resetGame() {
  // Reset the ball to the center
  ball.x = width / 2;
  ball.y = 10;
  ball.speedX = 5;  //  Initial speed
  ball.speedY = 5;

  // Reset paddle positions
  Player1.x = width/2;
  Player1.y = 480;


  // Reset scores
  score[0] = 0;  // Player 1's score
}
