import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['foo', 'bar', 'buzz'];

//lazy populated, when taking value
  final iterableNames = names.map((name) {
    print('mapping');
    return name.toUpperCase();
  });

  final item = iterableNames.take(1).first;
}
