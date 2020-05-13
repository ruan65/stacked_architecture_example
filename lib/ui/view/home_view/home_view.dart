import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/view/home_view/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, viewModel, chile) => Scaffold(
        body: Center(
          child: Text(viewModel.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => viewModel.updateCounter(),
          child: Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
