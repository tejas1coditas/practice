void main() async {
  print("Running");
  List<String> list = await Future.wait([Func(), Func1()]);

  print({list[0] + list[1]});
  print("Over");
}

Future<String> Func() {
  return Future.delayed(Duration(seconds: 2), () {
    return "PadhaiKaro";
  });
}

Future<String> Func1() {
  return Future.delayed(Duration(seconds: 3), () {
    return "PadhaiKrteRaho";
  });
}
