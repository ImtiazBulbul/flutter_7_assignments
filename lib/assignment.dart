class Car {
  static int numberOfCars = 0; // Keeps track of created Car objects

  final String brand;
  final String model;
  final int year;
  double milesDriven = 0.0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2018);
  Car car2 = Car("Honda", "Civic", 2020);
  Car car3 = Car("Ford", "Mustang", 2022);

  car1.drive(5000);
  car2.drive(2000);
  car3.drive(1000);

  print("Car 1:");
  print("  Brand: ${car1.getBrand()}");
  print("  Model: ${car1.getModel()}");
  print("  Year: ${car1.getYear()}");
  print("  Miles Driven: ${car1.getMilesDriven()}");
  print("  Age: ${car1.getAge()} years");



  print("\nCar 2:");
  print("  Brand: ${car2.getBrand()}");
  print("  Model: ${car2.getModel()}");
  print("  Year: ${car2.getYear()}");
  print("  Miles Driven: ${car2.getMilesDriven()}");
  print("  Age: ${car2.getAge()} years");

  print("\nCar 3:");
  print("  Brand: ${car3.getBrand()}");
  print("  Model: ${car3.getModel()}");
  print("  Year: ${car3.getYear()}");
  print("  Miles Driven: ${car3.getMilesDriven()}");
  print("  Age: ${car3.getAge()} years");

  print("\nTotal number of Cars Created: ${Car.numberOfCars}");
}
