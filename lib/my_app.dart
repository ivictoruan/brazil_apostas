// import 'package:brazil_apostas/screens/home_screen.dart';
import 'package:brazil_apostas/screens/times_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brazil Apostas',      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const TimesScreen(),
    );
  }
}