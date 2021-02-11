import 'package:flutter/material.dart';
import 'package:salud_dominicana/Modules/CustomWidgets/random/button_widget.dart';
import 'package:salud_dominicana/Modules/CustomWidgets/random/title_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 96),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWidget(icon: Icons.home, text: 'Signup'),
                buildButtons(),
              ],
            ),
          ),
        ),
      );

  Widget buildButtons() => Column(
        children: [
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Login',
            onClicked: () {},
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Register',
            onClicked: () {},
          ),
        ],
      );
}
