void main() {
  Map<String, int> nullableMap = {
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": null,
    "seven": null,
    "eight": 8
  };

  nullableMap.removeWhere((key, value) => value == null);
  print(nullableMap.toString());

  String valueString = nullableMap.values.join(',');
  print(valueString);

  String keyString = nullableMap.keys.join(',');
  print(keyString);
}
