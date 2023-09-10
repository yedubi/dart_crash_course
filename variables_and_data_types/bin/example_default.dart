void main(List<String> args) {
  String? firstName = 'John';
  String? lastName = 'null';
  print(getFullName(firstName, lastName));
}

getFullName(String? firstName, String? lastName) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } else {
      switch (T) {
        case String:
          return '' as T;
        case int:
          return 0 as T;
        case bool:
          return false as T;
        default:
          throw Exception("Can't resolve type $T");
      }
    }
  }
}
