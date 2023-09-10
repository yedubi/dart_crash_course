import 'dart:collection';

void main(List<String> args) {
  final person = Person(age: 12);
  print(person.description);
  print(person.description);
  print(person.description);
  person.name = 'we';
  print(person.name);

  late final resolvedVar = getResolved('111');
  int counter = 1;
  final finalResolvedVar = resolvedVar;
  print(finalResolvedVar);

  Person p1 = Person(age: 22);
  Person p2 = Person(age: 23);
  Family family = Family(
    members: [
      p1,
      p2,
    ],
  );
  print(family.count);

  print(printIt());

  print('counter: ${counter++}');
  print(counter);
}

String getResolved([String? name, int age = 1]) {
  print('age: $age');
  print("call getResolved");
  return 'Resolved value';
}

dynamic printIt() {}

class Person {
  late String description = _getDescription();
  final int age;
  String? name;

  Person({
    required this.age,
  }) {
    print('Call constructor');
  }
}

class Family {
  final Iterable<Person> members;
  late int count = getCount();

  Family({required this.members}) {}

  int getCount() {
    print("getCount");
    return members.length;
  }
}

String _getDescription() {
  print("getDescription");
  return 'Description';
}
