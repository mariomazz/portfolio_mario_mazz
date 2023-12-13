import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'src/common/widgets/screens/home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Il Mio Portfolio',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
