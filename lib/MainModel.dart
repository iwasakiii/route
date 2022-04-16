import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String MyName = 'Takahito Iwasaki';

  void changeMyName() {
    MyName = 'Kaneko Misuzu!!!';
    notifyListeners();
  }
}
