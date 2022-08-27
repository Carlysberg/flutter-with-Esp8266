import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class Bmi_screen extends StatelessWidget {
  const Bmi_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          centerTitle: true,
        ),
        drawer: const MenuDrawer(),
        body: const Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
