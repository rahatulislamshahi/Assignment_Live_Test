
abstract class Vehicle {
  int _speed = 0;

  void setSpeed(int speed) {
    _speed = speed;
    print("Speed Is: $_speed");
  }

  void move();
}

class Car extends Vehicle {
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

void main() {
  Car myCar = Car();
  myCar.setSpeed(69);
  myCar.move();
}
