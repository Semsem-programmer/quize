
import 'dart:math';

class Randoms {
  static getRandomIntFromTo(int start, int end) => Random().nextInt(end + 1);

  static getRandomFromList(List items) => items[Random().nextInt(items.length)];

}