void main(List<String> args) {
  String? firstName = 'John';
  String? lastName = 'Dow';
  final fullName = firstName.flatMap(
    (f) => lastName.flatMap(
      (l) => '$f $l',
    ),
  );
  print(fullName);
}

extension Flatmap<T> on T {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
