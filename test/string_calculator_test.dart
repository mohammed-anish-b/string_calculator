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

  test('Delimiter * should mutiply numbers', () {
    expect(add("//*\n1*2*4"), equals(8));
  });

  test('Delimiter * should work if the first number is 0', () {
    expect(add("//*\n0*2*3"), equals(0));
  });

  test('Multiple delimiters should throw an exception', () {
    expect(
        () => add("//;,\n1;2,3"),
        throwsA(predicate((e) =>
            e.toString() == "Exception: multiple delimiters not allowed")));
  });

  test('Negative numbers should throw an exception', () {
    expect(
        () => add("1,-2,3,-4"),
        throwsA(predicate((e) =>
            e.toString() == "Exception: negative numbers not allowed -2,-4")));
  });
}
