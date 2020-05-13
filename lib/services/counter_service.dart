import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class CounterService with ReactiveServiceMixin {
  var _counter = RxValue<int>(initial: 0);

  int get counter => _counter.value;

  CounterService() {
    listenToReactiveValues([_counter]);
  }

  incrementCounter() {
    _counter.value++;
  }

  doubleCounter() {
    _counter.value *= 2;
  }
}
