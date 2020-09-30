import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() {
//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Victor Barber',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: LoginScreen(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
