void main() {
  Map<String, int> entryMap = {
    "one": 100,
    "two": 200,
    "three": 3000,
    "four": 5000,
    "five": 10000,
    "six": 4000,
    "seven": 100000,
    "eight": 4000,
    "nine": 20000,
    "ten": 1001
  };

  List<int> filterList = [];
  var valueFilter, total;

  for (var mapValues in entryMap.entries) {
    valueFilter = mapValues.value;
    if (valueFilter >= 10000) {
      filterList.add(valueFilter);
    }
  }

  total = filterList
      .reduce((firstNumber, secondNumber) => firstNumber + secondNumber);
  print("Total: $total");
}
