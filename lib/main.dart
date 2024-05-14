import 'package:appflutter/splash.screen.dart';
import 'package:appflutter/theme.dart'; 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
       theme: MaterialTheme(Typography.blackCupertino).light(),
       darkTheme: MaterialTheme(Typography.blackCupertino).dark(),
       
    );
  }
}


