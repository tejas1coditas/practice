extension ParseNumbers on String {
  int pInt() {
    return int.parse(this);
  }

  double pDouble() {
    return double.parse(this);
  }
}

void main() {
  int i = '700000'.pInt();
  double e = '3900.87'.pDouble();
  print(i);
  print(e);
}
