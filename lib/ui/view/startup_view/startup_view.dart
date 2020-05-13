import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/view/startup_view/startup_view_model.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, viewModel, chile) => Scaffold(
        body: Center(
          child: Text('Startup view'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => viewModel.navigateToHome(),
          child: Icon(Icons.navigate_next),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
