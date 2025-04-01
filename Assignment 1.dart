// Abstract class (blueprint for vehicles)
abstract class Vehicle {
  int _speed = 0; // Private speed variable (encapsulation)

  // Abstract method (must be implemented by subclasses)
  void move();

  // Method to set speed
  void setSpeed(int speed) {
    _speed = speed;
  }

  // Getter method to safely access speed
  int get speed => _speed;
}

// Car class (inherits from Vehicle)
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $speed km/h");
  }
}

// Main function (where we actually use the Car class)
void main() {
  Car myCar = Car(); // Creating a car object
  myCar.setSpeed(80); // Setting the car's speed
  myCar.move(); // Calling move() to print the speed
}
