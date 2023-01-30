class Vehicle{
  late String color;
  late String model;

  void showColor([String? color]){
    print("Vehicle color is $color");
  }

  void showModel([String? model]){
    print("Vehicle model is $model");
  }

  Vehicle({required String color, required String model}){
    this.color = color;
    this.model = model;
  }
}

class Car extends Vehicle{
  Car(String color, String model) : super(color: color, model: model);
}

void main(){
  Car car = new Car('Red', '2010');
  print(car.model);
  car.showModel('2022');
}