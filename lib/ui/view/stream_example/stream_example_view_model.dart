import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => "This is a time sice epoch in seconds: $data";

  @override
  Stream<int> get stream => epochUpdates();

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch ~/ 1000;
    }
  }

  @override
  void onError(error) {
    // show error dialog maybe
  }
}
