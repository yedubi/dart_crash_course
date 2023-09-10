void main(List<String> args) {
  var adress = 'eee';
  print(adress);
  adress = 'www';
  print(adress);
  var test = 123;
  const testIt = 'we';
  print(testIt);

  late final myVal = getValue();
  print("myVal");
  print(myVal);

  List<String>? list = ["wreqe"];
  list.describe();
}

int getValue() {
  print("getValue");
  return 10;
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
