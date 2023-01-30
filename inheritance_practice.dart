abstract class Movable{
  void moveUp();
  void moveDown();
  void moveLeft();
  void moveRight();
}

class MovablePoint implements Movable{
  int? x;
  int? y;
  int? xSpeed;
  int? ySpeed;

  MovablePoint({int? x, int? y, int? xSpeed, int? ySpeed}){
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  @override
  void moveDown() {
    // TODO: implement moveDown
    print("Moving Down....");
  }

  @override
  void moveLeft() {
    // TODO: implement moveLeft
    print("Moving Left....");
  }

  @override
  void moveRight() {
    // TODO: implement moveRight
    print("Moving Right....");
  }

  @override
  void moveUp() {
    // TODO: implement moveUp
    print("Moving Up....");
  }
}

class MovableCircle extends MovablePoint implements Movable{
  int? radius;
  late MovablePoint center; 

  MovableCircle({int? radius, required MovablePoint center}){
    this.radius = radius;
    this.center = center;
  }
}

void main(){
  Movable m1 = new MovablePoint(x: 5,y: 6,xSpeed: 10,ySpeed: 15);
  print(m1);
  m1.moveLeft();
}