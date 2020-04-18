void conditions() {
  var a = 2;
  var b = 3;
  var c = 4;

  if (a > b) {
    c = 5;
  } else {
    c = 0;
  }

  print(c);

  var town = "Santa Cruz";

  switch (town) {
    case "Santa Cruz":
      print("Oh nice town");
      break;

    case "Strasbourg":
      print("Pretty nice town too !");
      break;

    default:
      print("Don't know this town");
      break;
  }
}
