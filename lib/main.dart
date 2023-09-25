import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sora_detiles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SoraDetils.routeName:(context) => SoraDetils(),
       
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      
          );
  }
}
