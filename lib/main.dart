import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/login.dart'; // Import the login page
import 'models/user.dart'; // Import the generated adapter

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter binding is initialized
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter()); // Register the adapter
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Set LoginPage as the home screen
    );
  }
}
