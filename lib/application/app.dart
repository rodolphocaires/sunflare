import 'package:flutter/material.dart';
import 'package:sunflare/application/home_module.dart';
import 'package:sunflare/presentation/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(homeState: HomeModule.homeState()),
    );
  }
}
