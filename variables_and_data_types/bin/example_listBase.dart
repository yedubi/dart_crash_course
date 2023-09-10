import 'dart:collection';
import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['foo', 'bar', 'buzz'];

  const notFound = 'NOT FOUND';

  const defaultValue = '_';

  final mySafeList = SafeList(
    defaultValue: defaultValue,
    absentValue: notFound,
    list: ['a', 'b', 'c'],
  );

  print(mySafeList[4]);
  mySafeList.length = 4;
  print(mySafeList[3]);
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? list,
  }) : _list = list ?? [];

  @override
  T operator [](int index) {
    return index < _list.length ? _list[index] : absentValue;
  }

  @override
  void operator []=(int index, T value) {
    _list[index] = value;
  }

  @override
  int get length => _list.length;

  @override
  set length(int newLenght) {
    if (newLenght <= _list.length) {
      _list.length = newLenght;
    } else {
      _list.addAll(
        List.filled(newLenght - _list.length, defaultValue),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;
  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
