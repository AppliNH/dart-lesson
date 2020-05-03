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

class Mammal {
  void breathe() {
    print("Breathe in... breathe out...");
  }
}

mixin Agility {
  // "mixin" can provide properties and methods to share, but you have less of a strong connection.
  // It's quite a utility function provider.
  var speed = 10;

  void run() {
    print("Runnin' at $speed km/h");
  }

}

class Person extends Mammal with Agility { 
  // "extends" allows you to call "breathe" for a Person. This is inheritance.
  // You only can inherit of a single class
  // But you can use link multiple mixins

  String name;
  int age;

  Person(this.name, this.age);

  @override
  void breathe() { // You can also override the breathe method :)
    print("I'm human ! \n");
    super.breathe();
  }

}