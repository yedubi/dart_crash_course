import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = [
    'Foo',
    'Foo',
    'Bar',
    'Buzz',
  ];
  final nameSet = {...names};
  print(nameSet);
  final numbers = {
    1,
    2,
    3,
  };
  final numbers2 = {
    1,
    2,
    3,
  };

  print(SetEquality().equals(numbers, numbers2));

  names.sublist(2, 3).forEach(print);
  //filter
  names.where((String name) => name.startsWith('B')).forEach(print);

  // map and collect
  names.map((element) => element.toLowerCase());
  final sum = names.fold(
      0,
      (
        totalLenght,
        str,
      ) =>
          totalLenght + str.length);
  print(sum);
}
