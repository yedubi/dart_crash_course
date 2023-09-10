import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  addToArrayWrong();
  addToArrayRight();
  // addToMapWrong();
  addToMapRight();
}

void addToArrayWrong() {
  final names1 = ['Foo1', 'Bar1', 'Buz1'];
  final names2 = ['Foo2', 'Bar2', 'Buz3'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo1', 'Bar1', 'Buz1', 'Foo1'];
  final names2 = ['Foo2', 'Bar2', 'Buz3'];
  final allNamesRight = [...names1, ...names2];
  final allNamesAnotherWay = [...names1]..addAll(names2);
  final nameSet = {...allNamesAnotherWay};
  print(names1);
  print(names2);
  print(allNamesRight);
  print(allNamesAnotherWay);
  print(nameSet);
}

void addToMapWrong() {
  const map = {
    'name': 'Foo',
    'age': 1,
  };

  final result = map;
  result.addAll({'weight': 100});
}

void addToMapRight() {
  const map = {
    'name': 'Foo',
    'age': 1,
  };
  final result = {...map}..addAll({'weight': 100});
  print(result);
}
