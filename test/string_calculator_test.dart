import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string should return 0', () {
    expect(add(""), equals(0));
  });
}
