void enums() {

  var mobilePhone = PhotoFlash.auto;

  switch(mobilePhone) {

    case PhotoFlash.auto:
      print("auto");
      break;
    case PhotoFlash.off:
      print("off");
      break;
    case PhotoFlash.on:
      print("on");
      break;
    default:
      print("meh");
      break;


  }

}

enum PhotoFlash { auto, off, on }
