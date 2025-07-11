void main() {
  Stream<int> st = Func(7);

  st.listen(
    (n) {
      print(n);
    },
    onDone: () {
      print("Done");
    },
    onError: (e) {
      print(e);
    },
  );
}

Stream<int> Func(int n) async* {
  for (int i = 0; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
