import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoe_app/pages/initial_page/initial_page_components/initial_page_components.dart';
import 'package:shoe_app/sample.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   
      theme: ThemeData(primarySwatch:Colors.grey),   
    home: ExamplePage(),
    
    );
  }
}


