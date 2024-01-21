import 'dart:math';

class Captcha {
  static var x = getFourdigit();
  static getFourdigit() {
    int x;
    do {
      x = Random().nextInt(9999);
    } while (x.toString().length != 4);
    return x;
  }

  setx() {
    x = getFourdigit();
  }

  int getx() {
    return x;
  }
}
