import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  bool checkLoggedIn() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    if (checkLoggedIn != null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
