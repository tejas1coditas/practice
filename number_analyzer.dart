import 'dart:io';
import 'dart:math';

void main() {
  try {
    print('Enter Your Number : ');
    String? num = stdin.readLineSync();
    if (num == null || num.trim().isEmpty) {
      print('Invalid Input !');
    }
    int n = int.parse(num!.trim());
    if (n < 0) throw ArgumentError("-ve numbers are not allowed");
    print("your input is $n");

    print(chkNonNull(n));
    print(ans(n));
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

String ans(int n) {
  if (chkNonNull(n))
    return "Number is not null";
  else
    return "NULL number";
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
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

String chkRange(int n) {
  switch (n) {
    case >= 0 && <= 10:
      return 'Small Number ';

    case > 10 && <= 100:
      return 'Medium Range ';

    case > 100 && <= 1000:
      return 'Large Number ';

    default:
      return "Whoa! chill , that's too Big";
  }
}
