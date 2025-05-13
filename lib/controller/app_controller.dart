import 'package:flutter/foundation.dart';
import 'package:test_provider/model/note.dart';

class AppController extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  Note? _note;
  Note? get note => _note;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void setSetNote(Note note) {
    _note = note;
    notifyListeners();
  }
}
