import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];

  final combined = CombinedIterableView([one, two, three]);
  one.add(5);
  print(combined);
  testConbinedListView();
}

void testConbinedListView() {
  //ConbinedListView is view of list of lists and is unmodifiable

  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];

  final combined = CombinedListView([one, two, three]);
  one.add(4);
  print(combined);
}

void testConbinedMap() {}
