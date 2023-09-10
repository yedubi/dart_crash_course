import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {}

//parent class could create child instances
class Vechicle {
  const Vechicle();
  factory Vechicle.car() => Car();
  factory Vechicle.track() => Track();

  @override
  String toString() {
    return 'Vechicle of type $runtimeType';
  }
}

class Car extends Vechicle {}

class Track extends Vechicle {}
