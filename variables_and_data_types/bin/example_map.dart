import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final map = {
    'name': 'name',
    'age': 1,
  };

  print(map['name']);
  print(map.keys);
  print(map.values);
  map.putIfAbsent('height', () => 175);

  for (final entry in map.entries) {
    print('${entry.key} ${entry.value} ');
  }
}
