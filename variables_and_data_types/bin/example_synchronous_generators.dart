import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = getNames();
  print(names.length);

  for (final name in names) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  yield ('Foo');
  yield ('Bar');
  yield ('Buz');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  yield ('Buzz');
  yield ('Buzzz');
}
