import 'package:flutter/foundation.dart';

class count with ChangeNotifier {
  int add = 0;
  int get _add => add;
  void setcount() {
    add++;
    notifyListeners();
  }
}
