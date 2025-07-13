class Sports {
  String name = "";
  int time = 0;
  int players = 11;

  //Sports({this.name = "Cricket", this.time = 4, this.players = 11});
  void display() {
    print("The name of the Sports is $name");
  }
}

void main() {
  Sports s1 = Sports()
    ..name = "Cricket"
    ..time = 4
    ..players = 11
    ..display();
  print(s1.name);
}
