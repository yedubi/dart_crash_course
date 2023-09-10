import 'dart:math';

import 'package:collection/collection.dart';

import 'example_late.dart';

void main(List<String> args) {
  const truck = Truck();
  print(truck.kind);
  truck.accelerate();
}

enum VechicleKind {
  car,
  truck,
}

abstract class Vechicle {
  final VechicleKind kind;

  const Vechicle({required this.kind});

  void accelerate() => print('Accelarating');
}

class Car extends Vechicle {
  const Car() : super(kind: VechicleKind.car);
}

class Truck implements Vechicle {
  const Truck();
  @override
  void accelerate() {
    print('Accelarating track');
  }

  @override
  VechicleKind get kind => VechicleKind.truck;
}
