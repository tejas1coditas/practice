import 'dart:ffi';

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6];
  String s = "Coditas";
  print("List Func");

  print(Opslist(list));

  print("Map operation");
  print(MapOPS(s));

  List<int> l1 = [1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 9];
  print("Set Opeartions");
  print(SetOPS(l1));

  print("record operations");
  print(Recordops());
}

List Opslist(List<int> list) {
  list.add(3);
  list.remove(5);
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  list.add(sum);
  return list;
}

Set SetOPS(List<int> list) {
  Set<int> st = new Set();
  //removing duplicates from string.
  int n = list.length;
  for (int i = 0; i < n; i++) {
    st.add(list[i]);
  }
  print("remove 5");
  st.remove(5);
  return st;
}

Map MapOPS(String s) {
  Map<String, int> mp = new Map();
  for (int i = 0; i < s.length; i++) {
    String ch = s[i];
    if (mp.containsKey(ch)) {
      mp[ch] = mp[ch]! + 1;
    } else {
      mp[ch] = 1;
    }
  }
  print("Frequency of C is ${mp['C']}");
  return mp;
}
//Records

(String, int) Recordops() {
  (String, int) record;
  record = ("Coditas", 1);
  return record;
}
