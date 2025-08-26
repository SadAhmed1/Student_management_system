// Abstract class Animal
abstract class Animal {
  String _name; // encapsulated field

  // Constructor
  Animal(this._name);

  // Abstract method
  void makeSound();

  // Concrete method
  String getName() => _name;
}

// Lion class
class Lion extends Animal {
  double _maneSize;

  Lion(super.name, double maneSize)
      : _maneSize = 0 {
    this.maneSize = maneSize; // use setter for validation
  }

  // Getter
  double get maneSize => _maneSize;

  // Setter with validation
  set maneSize(double value) {
    if (value < 0) {
      print("Mane size cannot be negative. Setting to 0.");
      _maneSize = 0;
    } else {
      _maneSize = value;
    }
  }

  @override
  void makeSound() {
    print("Roarrr! ");
  }
}

// Elephant class
class Elephant extends Animal {
  double _trunkLength;

  Elephant(super.name, double trunkLength)
      : _trunkLength = 0 {
    this.trunkLength = trunkLength;
  }

  double get trunkLength => _trunkLength;

  set trunkLength(double value) {
    if (value < 0) {
      print("Trunk length cannot be negative. Setting to 0.");
      _trunkLength = 0;
    } else {
      _trunkLength = value;
    }
  }

  @override
  void makeSound() {
    print("Pawoo! ");
  }
}

// Parrot class
class Parrot extends Animal {
  int _vocabularySize;

  Parrot(super.name, int vocabularySize)
      : _vocabularySize = 0 {
    this.vocabularySize = vocabularySize;
  }

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int value) {
    if (value < 0) {
      print("Vocabulary size cannot be negative. Setting to 0.");
      _vocabularySize = 0;
    } else {
      _vocabularySize = value;
    }
  }

  @override
  void makeSound() {
    print("Squawk! Hello! ");
  }
}

void main() {
  // Create a list of animals
  List<Animal> animals = [
    Lion("Simba", 25.5),
    Elephant("Dumbo", 150.0),
    Parrot("Polly", 50),
    Parrot("Coco", -10), // testing validation
  ];

  // Loop through animals
  for (var a in animals) {
    print("Animal: ${a.getName()}");

    if (a is Lion) {
      print("Mane Size: ${a.maneSize} cm");
    } else if (a is Elephant) {
      print("Trunk Length: ${a.trunkLength} cm");
    } else if (a is Parrot) {
      print("Vocabulary Size: ${a.vocabularySize} words");
    }

    a.makeSound();
    print("---------------------");
  }
}
