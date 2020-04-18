// Loop from 0 to 100 which only prints odd numbers
import 'dart:ffi';

void exercice1() {
  for (var x = 0; x < 100; x++) {
    if (x % 2 != 0) {
      print(x);
    }
  }
}

// Convert Celsius to Fahrenheit
double exercice2(double temp) {
  return temp + 32;
}

// Check if the person has the right to drink alcohol
bool exercice3(int age) {
  if (age >= 18) {
    print("Ok you can drink some alcohol, but carefully please");
    return true;
  } else {
    print("Sorry you can't drink alcohol");
    return false;
  }
}

// Map String, bool with boys and girls, only display girls
void exercice4(Map<String, bool> theMap) {
  print("I'll only print girls from the given map !");
  theMap.forEach((key, value) => {
        if (value == true) {print(value)}
      });
}
