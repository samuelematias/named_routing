import 'package:flutter/material.dart';
import 'package:named_routing/routing_constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm_rounded),
          onPressed: () async {
            // Navigate to LoginView and wait for a result to come back
            // Perform navigation to LoginView
            var result = await Navigator.pushNamed(
              context,
              LoginViewRoute,
              arguments: 'Data Passed in',
            );

// If the result matches show a dialog
            if (result == 'fromLogin') {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('From Login'),
                ),
              );
            }
          }),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
