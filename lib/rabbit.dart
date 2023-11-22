enum RabbitState { SLEEP, RUN, WALK, EAT }

class Rabbit {
  late String _name;
  late RabbitState _state;

  Rabbit({required String name,required RabbitState state}) {
    this._name = name;
    this._state = state;
  }

  String get name => _name;
  RabbitState get state => _state;

  void updateState(RabbitState state) {
    this._state = state;
  }
}