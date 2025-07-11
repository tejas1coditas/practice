import 'dart:io';

void main() {
  print("Hello give ur name");
  String? s = stdin.readLineSync();
  print(greetUser(s));
  // print(greetUser("Tejas"));
  // print(greetUser(null));
}

String greetUser(String? user) {
  if (user == null || user == "") {
    return "Hello, Guest";
  } else {
    return "Hello, $user";
  }
}
