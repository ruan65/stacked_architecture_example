import 'package:auto_route/auto_route_annotations.dart';
import 'package:stacked_example/ui/view/home_view/home_view.dart';
import 'package:stacked_example/ui/view/startup_view/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startUpViewRoute;
  HomeView homeViewRoute;
}
