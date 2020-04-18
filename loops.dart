void loops() {
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  Map myMap = {"Best": "Dart", "Good": "JavaScript", "Loves": "Leaning"};

  myMap.forEach((key, value) {
    print(key + " : " + value);
  });

  //or

  myMap.forEach((key, value) => print(key + " : " + value));

  var score = 0;

  while (score < 3) {
    print("Score is " + score.toString());
    score++;
  }

  // This (right under) is different
  // However it will first execute the statement without checking the condition first 

  do {
    print("Score is " + score.toString());
    score++;
  }while (score < 3);

}
