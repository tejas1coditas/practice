class Person {
  String name;
  int age;
  String City;

  Person({this.name = "Tejas", this.age = 22, this.City = "Pune"});

  void dispaly() {
    print("$name, $age, $City");
  }
}

void main() {
  var p3 = Person();
  var p1 = Person(name: "Shreyas");
  var p2 = Person(name: "Sangam", age: 22, City: "Pune");
  p1.dispaly();
  p2.dispaly();
  p3.dispaly();
}
