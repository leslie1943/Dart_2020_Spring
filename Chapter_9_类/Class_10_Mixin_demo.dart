class Maestro extends Person with Musical {}

class Person {}

mixin Musical on Person {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;
  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

main() {
  var m = Maestro();
  m.entertainMe(); // Humming to self
}
