import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  int _counter;

  MainViewModel({int counter = 0}) : _counter = counter;

  int get counter => _counter;
  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() => counter += 1;
}