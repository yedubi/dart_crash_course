import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final string = 'bbcwsdatbr';

  var allExceptAbc = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc);

  final list = Iterable.generate(10);
  print(list.where((element) => element % 2 != 0));

  //map comprehension
  final listNames = [
    'Foo',
    'Bar',
    'Buz',
  ];

  final nameAndLenght = {
    for (final name in listNames) name: name.length,
  };

  print(nameAndLenght);
}
