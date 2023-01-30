abstract class Shape{
  void area();
  void perimeter();

  void printName(){
    print("This is shape class");
  }
}

class Rectangle extends Shape{
  int? dim1;
  int? dim2;

  @override
  void area() {
    int area = dim1!*dim2!;
    // TODO: implement area
    print("Area of Rectangle: $area");
  }

  @override
  void perimeter() {
    // TODO: implement perimeter
    int pm = 2*(dim1! + dim2!);
    print("Perimeter of Rectangle: $pm");
  }

  Rectangle(int? dim1, int? dim2){
    this.dim1 = dim1;
    this.dim2 = dim2;
  }
}

void main(){
  Rectangle rc = new Rectangle(20,20);
  rc.area();
  rc.perimeter();
  Circle c = new Circle(20);
  c.area();
  c.perimeter();
  c.printName();
}

//notice the difference between 'extends' and 'implements' keyword
class Circle implements Shape{
  int? r;

  @override
  void area() {
    // TODO: implement area
    double area = 3.14*r!*r!;
    print("Area of the circle is: $area"); 
  }

  @override
  void perimeter() {
    // TODO: implement perimeter
    double pm = 2*3.14*r!;
    print("Perimeter of the circle is: $pm");
  }

  @override
  void printName() {
    // TODO: implement printName
    print("I am the Circle class");
  }

  Circle(int? r){
    this.r = r;
  }

}