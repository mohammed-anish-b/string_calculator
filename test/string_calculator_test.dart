import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string should return 0', () {
    expect(add(""), equals(0));
  });

  test('Single number should return itself', () {
    expect(add("1"), equals(1));
  });

  test('Two numbers should return their sum', () {
    expect(add("1,5"), equals(6));
  });

  test('Multiple numbers should return their sum', () {
    expect(add("1,2,3,4"), equals(10));
  });
}
