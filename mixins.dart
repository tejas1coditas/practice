void main() {
  class1 c1 = class1();
  c1.display();
  c1.display1();
}

mixin Sports {
  void display() {
    print("cricket");
  }
}

mixin FLutter {
  void display1() {
    print("Flutter");
  }
}

class class1 with Sports, FLutter {}
