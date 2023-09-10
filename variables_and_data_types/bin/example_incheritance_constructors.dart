import 'dart:math';

import 'package:collection/collection.dart';

import 'example_late.dart';

void main(List<String> args) {
  final mom = Mom();
}

enum Role { mom, dad }

class Person {
  final Role role;

  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}
