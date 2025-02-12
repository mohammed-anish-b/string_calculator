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
  List<String> numList = numbers.split(delimiter);

  List<int> parsedNumbers = [];
  List<int> negatives = [];

  for (var num in numList) {
    if (num.isNotEmpty) {
      int value = int.parse(num);
      if (value < 0) {
        negatives.add(value);
      } else {
        parsedNumbers.add(value);
      }
    }
  }

  if (negatives.isNotEmpty) {
    throw Exception("negative numbers not allowed ${negatives.join(",")}");
  }

  return parsedNumbers.fold(0, (sum, number) => sum + number);
}
