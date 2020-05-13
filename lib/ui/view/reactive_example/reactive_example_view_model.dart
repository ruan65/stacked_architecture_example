import 'package:stacked/stacked.dart';

class ReactiveExampleViewModel extends BaseViewModel {
  String _title;

  String get title => _title;

  void updateTitle(String value) {
    _title = value;
    notifyListeners();
  }
}
