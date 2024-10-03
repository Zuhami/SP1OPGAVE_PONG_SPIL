class Ball {
  //declaring my variables
  int x, y, size;
  int speedX, speedY;

  //constuctor
  Ball(int tmpX, int tmpY, int tmpSize) {
    this.x = tmpX;
    this.y = tmpY;
    this.size = tmpSize;
    this.speedY= 6;
    this.speedX= 6;
  }
  //showing the ball
  void show() {
    ellipse(x, y, size, size);
  }

  //movement of the ball
  void move() {
    x+=speedX;
    y+=speedY;

    // top boundaries
    if (y - size / 2 < 0) {
      speedY *= -1;  // Reverse the Y direction
    }

    // Call ballBoundary to handle left and right boundary and for the ball collision
    ballBoundary();
    paddleCollision(Player1);
  }
  // collission between ball and paddle
  boolean paddleCollision(Paddle Player1) {
    // Bottom paddle collision
    if (y + size/2 >= Player1.y &&
      y - size/2 <= Player1.y + Player1.h &&
      x + size/2 >= Player1.x &&
      x - size/2 <= Player1.x + Player1.w) {
      speedY *= -1;// Reverse the direction when it hits
      return true;
    } else {
      return false;
    }
  }
  //bouandarys of the ball so it doesnt go out of the window
  void ballBoundary() {
    // Left and right boundary check
    if (x - size / 2 < 0 || x + size / 2 > width) {
      speedX *= -1;  // Reverse the X direction when it hits the boundary
    }
  }
}
