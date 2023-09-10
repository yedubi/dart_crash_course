import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final map = {
    'name': 'name',
    'age': 1,
  };

  map.addAll(
    {
      'phone': '111-222-333',
    },
  );

  final readOnlyList = UnmodifiableMapView(map);
  readOnlyList['name'] = 'qwe';
}
