import 'package:flutter/material.dart';
import 'package:stacked_example/app/router.gr.dart';
import 'package:stacked_example/ui/view/future_example/future_example_view.dart';
import 'package:stacked_example/ui/view/stream_example/stream_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startUpViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
        //

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamExampleView(),
    );
  }
}
