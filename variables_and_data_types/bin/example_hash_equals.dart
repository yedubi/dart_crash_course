import 'package:collection/collection.dart';

void main(List<String> args) {
  final person = Person(age: 10, name: 'Person1');
  final person2 = Person(age: 10, name: 'Person1');
  final person3 = Person(age: 11, name: 'Person1');

  final personSet = {person, person2, person3};
  print(personSet);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person $name age $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}
