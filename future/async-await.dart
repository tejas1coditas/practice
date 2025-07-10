Future<String> Func() {
  return Future.delayed(Duration(seconds: 2), () {
    return "PadhaiKaro";
  });
}

void main()async {
  print("HEllo");
  String s = await Func();
  print(s);
  print("Hell");
}
