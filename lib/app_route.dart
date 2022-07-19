import 'package:auto_route/annotations.dart';
import 'package:sample_go_route/main.dart';
import 'package:sample_go_route/third_screen.dart';

export 'app_route.gr.dart';


// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: FirstScreen.routeName,page: FirstScreen, initial: true),
    AutoRoute(path: SecondScreen.routeName,page: SecondScreen),
    AutoRoute(path: ThirdPage.routeName,page: ThirdPage),

    // AutoRoute(page:  test, children: [
    //   ???
    // ])
  ],
)
class $AppRouter {}