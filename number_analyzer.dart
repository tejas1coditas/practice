import 'dart:io';

void main() {
  try {
    print("Type a whole number");
    int? n = int.parse(stdin.readLineSync()!);
    if (n < 0) throw ArgumentError("-ve numbers are not allowed");
    print("your input is $n");

    print(chkNonNull(n));
    print(EvenorOdd(n));
    print(PrimeNos(n));
    print(chkRange(n));
  } catch (e) {
    print(e);
  } finally {
    print("Program ended");
  }
}

bool chkNonNull(int? n) {
  return n != null;
}

String EvenorOdd(int n) {
  if (n % 2 == 0) return "number is Even";
  return "number is Odd";
}

List<int> PrimeNos(int n) {
  List<int> list = [];
  for (int i = 2; i <= n; i++) {
    if (isprime(i)) {
      list.add(i);
    }
  }
  return list;
}

bool isprime(int n) {
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

String chkRange(int n) {
  if (n >= 0 && n <= 10)
    return ("Small number");
  else if (n > 10 && n <= 100)
    return ("medium number");
  else if (n > 100 && n <= 1000)
    return ("Large number");
  else {
    return "Whoa! Chill, that's too big";
  }
}
