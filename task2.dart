void main() async {
  List<int> list = [1, 2, 3, 4];
  print(await func(list));
  
}

Future<List<int>> func(List<int> list) async {
  await Future.delayed(Duration(seconds: 2));
  return list;
}
