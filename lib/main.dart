import 'package:flutter/material.dart';
import 'package:named_routing/router.dart' as router;
import 'package:named_routing/routing_constants.dart';
import 'package:named_routing/undefined_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      onGenerateRoute: router.generateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => UndefinedView(
          name: settings.name,
        ),
      ),
      initialRoute: HomeViewRoute,
    );
  }
}
