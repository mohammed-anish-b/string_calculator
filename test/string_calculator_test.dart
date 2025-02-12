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

  test('Newline as a separator should work', () {
    expect(add("1\n2,3"), equals(6));
  });

  test('Custom delimiter should be supported', () {
    expect(add("//;\n1;2"), equals(3));
  });

  test('Multiple delimiters should throw an exception', () {
    expect(
        () => add("//;,\n1;2,3"),
        throwsA(predicate((e) =>
            e.toString() == "Exception: multiple delimiters not allowed")));
  });
}
