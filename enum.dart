enum Sports { cricket, Football, Chess, Hockey }

void main() {
  Sports sports = Sports.Chess;

  switch (sports) {
    case Sports.cricket:
      print("Play Cricket");
      break;
    case Sports.Football:
      print("Play Football");
      break;
    case Sports.Hockey:
      print("Play HOckey");
      break;
    case Sports.Chess:
      print("Play chess");
      break;
  }
}
