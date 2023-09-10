import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['foo', 'bar', 'buzz'];
  final readOnlyList = UnmodifiableListView(names);
  readOnlyList.add('wer');

  final person = Person(
    name: 'Foo',
  );
  person._siblings?.add(Person(
    name: 'Bar',
  ));
}

class Person {
  final String name;
  final List<Person>? _siblings;

//incapsulate list to avoid modification
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Person({required this.name, List<Person>? siblings})
      : _siblings = siblings;
}
