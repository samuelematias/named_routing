import 'package:flutter/material.dart';
import 'package:named_routing/routing_constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm_rounded),
        onPressed: () => // Perform navigation to LoginView
            Navigator.pushNamed(context, LoginViewRoute),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
