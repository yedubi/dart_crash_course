import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  //lazy valued, only when try to get value from iterable
  final iterable = Iterable.generate(
    20,
    (i) => getName(i),
  );

  for (final name in iterable.take(2)) {
    print(name);
  }
}

String getName(int i) {
  print('getName called');
  return "Name #$i";
}
