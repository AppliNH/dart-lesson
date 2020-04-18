void variables() {
  var name = "Thomas"; // Dynamic typing
  print(name);

  String country = "France";
  print(country);

  int age = 22;
  print(age);

  bool somethingBoolean;

  const town = "Strasbourg"; // Constant at compile-time
  final nationality = "French"; // Constant at anytime

  List<String> myStringList = ["Item1", "Item2"];
  List myUntypedList;

  myStringList.add("Item3");
  print(myStringList);
  myStringList.remove("Item2");

  Map myMap = {"Item1": "Book", "Item2": "Pen", "Item3": "Computer"};

  print(myMap["Item3"]);
  myMap.addAll({"Item4": "Ball"});
  myMap["Item5"] = "SecretThing";
  
  myMap.clear();
}
