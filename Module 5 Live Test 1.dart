
void main() {

  List<Map<String, dynamic>> s = [
    {"n": "Alice", "sc": [85, 90, 78]},
    {"n": "Bob", "sc": [88, 76, 95]},
    {"n": "Charlie", "sc": [90, 92, 85]}

  ];


  Map<String, double> avg = { };

  for (var st in s) {
    String n = st["n"];
    List<int> sc = st["sc"];

    double avg_s = sc.reduce((x, y) => x + y) / sc.length;


    avg[n] = double.parse(avg_s.toStringAsFixed(2));
  }


  var sortedAvg = Map.fromEntries(
      avg.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value))
  );


  int c = 0;
  int t = sortedAvg.length;
  sortedAvg.forEach((n, avg_s) {

    c++;
    if (c == t) {
      print('  "$n": $avg_s');
    }
    else {
      print('  "$n": $avg_s,');
    }
  });
}
