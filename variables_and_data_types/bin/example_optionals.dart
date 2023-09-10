void main(List<String> args) {
  List<String>? list = [];
  list.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("This obj is null");
    } else {
      print("$runtimeType: $this");
    }
  }
}
