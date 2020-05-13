import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(Duration(seconds: 2));
    throw Exception('It is broken dude');
    return 'Some fancy data from the server';
  }

  @override
  Future<String> futureToRun() => getDataFromServer(/* pass params here */);

  @override
  void onError(error) {
    // show error dialog maybe
  }
}
