class Paddle {
  //declaring my variables
  int x, y, w, h;
  int speed;
  boolean LEFT, RIGHT;
  //constructor
  Paddle(int tmpX, int tmpY, int tmpWidth, int tmpHeight) {
    this.x = tmpX;
    this.y = tmpY;
    this.w = tmpWidth;
    this.h = tmpHeight;
    this.speed = 7;
    LEFT= false;
    RIGHT= false;
  }
  //showing the paddle
  void show() {
    fill(255);
    rect(x, y, w, h);
  }

  // movement of the paddle
  void move() {
    if ( x > 45) {
      if (LEFT == true) {
        x -= speed;
      }
    }
    if ( x < 455) {
      if (RIGHT == true) {
        x += speed;
      }
    }
  }
}
