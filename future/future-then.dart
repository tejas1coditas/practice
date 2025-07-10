void main() {
  print("Hello2");
  Future.delayed(Duration(seconds: 2), () {
    return "HEllo";
  }).then((value) {
    print(value);
    print("Hello1");
  });
}
