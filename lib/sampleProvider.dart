import 'package:flutter/foundation.dart';

class ExampleOneProvider extends ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setstate(double val) {
    _value = val;
    notifyListeners();
  }
}
