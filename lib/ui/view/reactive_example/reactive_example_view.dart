import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:stacked_example/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';
import 'package:stacked_example/ui/view/partial_builds/partial_builds_view_model.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) {
        print('PartialBuildView rebuild');

        return Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SingleIncreaseCounter(),
                DoubleIncreaseCounter(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}
