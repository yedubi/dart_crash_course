import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final person = Person(firstName: 'Foo', lastName: 'Bar');
  person.age = 12;
  print(person.fullName);
  print(person.age);
}

class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';
  int _age = 0;
  int get age => _age;
  set age(int newAge) => _age = newAge;

  Person({required this.firstName, required this.lastName});
}
