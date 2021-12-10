void main() {
  List<int> numberLists = [
    1,
    2,
    3,
    4,
    5,
    6,
    5,
    4,
    3,
    2,
    1,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15
  ];

  var listFilter = numberLists.toSet().toList();
  print(listFilter.toString());
}
