import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/view/future_example/future_example_view_model.dart';

class FutureExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: model.isBusy
                ? CircularProgressIndicator()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      _ErrorMessageWidget(),
                      Text(model.data ?? ''),
                    ],
                  ),
          ),
        );
      },
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}

class _ErrorMessageWidget extends ViewModelWidget<FutureExampleViewModel> {
  @override
  Widget build(BuildContext context, FutureExampleViewModel viewModel) {
    return viewModel.hasError
        ? Text(
            viewModel.error.message,
            style: TextStyle(color: Colors.red, fontSize: 30),
          )
        : SizedBox.shrink();
  }
}
