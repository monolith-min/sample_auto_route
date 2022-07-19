import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_go_route/third_screen.dart';

import 'app_route.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  static const routeName = '/';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AutoRouter.of(context);
    final router = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  router.pushNamed(SecondScreen.routeName);
                },
                child: Text(
                  "navigate 1",
                  style: TextStyle(fontSize: 30),
                )),
            GestureDetector(
                onTap: () {
                  router.push(
                    ThirdRoute(
                      data: ScreenArguments(
                        'Accept Arguments Screen',
                        'This message is extracted in the onGenerateRoute function.',
                      ),
                    ),
                  );
                },
                child: Text("sendData", style: TextStyle(fontSize: 30)))
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  static const routeName = '/second';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
      ),
      body: Container(
        child: Text("second 2"),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
