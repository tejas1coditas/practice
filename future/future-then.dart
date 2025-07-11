void main() {
  print("Hello2");
  Future.delayed(Duration(seconds: 2), () {
    return "HEllo";
  }).then((c) {
    print(c);
    print("Hello1");
  });
}
