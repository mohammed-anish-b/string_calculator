int add(String numbers) {
  if (numbers.isEmpty) return 0;
  numbers = numbers.replaceAll("\n", ",");
  List<int> nums = numbers.split(",").map(int.parse).toList();
  return nums.fold(0, (sum, number) => sum + number);
}
