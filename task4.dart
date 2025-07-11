import 'dart:io';

void main() {
  String? s = stdin.readLineSync()!;
  print(s.func(s));
}

extension capital on String {
  String func(String str) {
    String s = str[0].toUpperCase();
    String s1 = s + str.substring(1);
    return s1;
  }
}
