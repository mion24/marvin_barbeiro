import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/core/tema/tema.dart';
import 'package:marvin_barbeiro/pages/home/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvin Barbearia',
      theme: tema(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
