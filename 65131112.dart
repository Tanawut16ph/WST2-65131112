class Person {
  String _name;

  Person(this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  int get speed => _speed;

  void displayEngineInfo() {
    print('Engine Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  String get model => _model;
  Person get owner => _owner;
  Engine get engine => _engine;

  void displayCarInfo() {
    print('Car Info - Brand: $_brand, Model: $_model');
    print('Owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  @override
  void displayCarInfo() {
    super.displayCarInfo();
    print('Color: $_color');
  }

  @override
  void run() {
    print('Running at 120 km/h'); 
  }
}

void main() {
  var zan = Person('Tanawut Phuengprasert');

  var engineCar = Engine('V8', 250); 
  var engineHonda = Engine('1.5L Turbocharged', 120); 

  var car = Car('Ferrari', 'SF90', zan, engineCar);
  car.displayCarInfo();
  car.run();
  print('');

  var honda = Honda('Honda', 'Civic', zan, engineHonda, 'white');
  honda.displayCarInfo();
  honda.run();
}
