import 'package:flutter/material.dart';
import 'package:named_routing/home_view.dart';
import 'package:named_routing/login_view.dart';
import 'package:named_routing/routing_constants.dart';
import 'package:named_routing/undefined_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          name: settings.name,
        ),
      );
  }
}
