void oop() {
  var myCar = new Car("Tesla", "Model S", 2018, 5, "black", true);
  myCar.brandNModel();
  
  myCar.drive(152.2);
  print(myCar.km);

  var mustang = new SportsCar("Ford", "Mustang", 2016, 5, "red");

  mustang.brandNModel();

  print(mustang.km);
  print(mustang.isFast);

  mustang.doCoolThing();
  mustang.drive(50.3);

  print(mustang.km);
}

class Car {
  String brand;
  String model;
  int year;
  int doors;
  String color;
  bool isFast;
  double km = 0;

  void brandNModel() {
    print(this.brand + " " + this.model);
  }

  void drive(double distance) {
    if (isFast) {
      print("ok this is going to best fast !");
    } else {
      print("Meh.");
    }
    this.km += distance;
  }

  Car(String brand, String model, int year, int doors, String color,
      bool isFast) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.doors = doors;
    this.color = color;
    this.isFast = isFast;
  }
}

class SportsCar extends Car {
  // Class inheritance
  SportsCar(String brand, String model, int year, int doors, String color)
      : super(brand, model, year, doors, color, true) {}

  doCoolThing() {
    print("Your SportsCar is doing something great ! But you can't see it.");
  }

  @override
  void drive(double distance) {
    // Polymorphism
    print("BRRRRRRRRRRRRRRRRRRRRRRRRR THIS IS INSANE WOOOOH");
    super.drive(distance);
  }
}
