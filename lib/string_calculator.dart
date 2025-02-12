int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ",";
  if (numbers.startsWith("//")) {
    final parts = numbers.split("\n");
    delimiter = parts.first.substring(2);

    if (delimiter.length > 1) {
      throw Exception("multiple delimiters not allowed");
    }

    numbers = parts.sublist(1).join("\n");
  }

  numbers = numbers.replaceAll("\n", delimiter);
  numbers = numbers.replaceAll(",", delimiter);
  List<int> parsedNumbers = numbers.split(delimiter).map(int.parse).toList();

  return parsedNumbers.fold(0, (sum, number) => sum + number);
}
