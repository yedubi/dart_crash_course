import 'package:variables_and_data_types/variables_and_data_types.dart'
    as variables_and_data_types;

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/variables_and_data_types.dart'
void main(List<String> arguments) {
  const name = ['Foo'];
  final age = [30, 42];
  age.removeAt(0);

  print('Hello world: ${variables_and_data_types.calculate()}!');
  print(age);
}
