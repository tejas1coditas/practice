void main() {
  Stream<String> st = Func("");

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

List<String> list = ["Flutter", "Java" , "CPP" , "PY"];
Stream<String> Func(String s) async* {
  for (int i = 0; i <4; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield list[i];
  }
}
