import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:salud_dominicana/Entities/user/user.dart';
import 'package:salud_dominicana/Modules/CustomWidgets/random/title_widget.dart';
import 'package:salud_dominicana/Utils/Storange/user_preferences.dart';


class LoginPage extends HookWidget {
  final List<User> users = UserPreferences.getUsers();

  Widget buildUser(User user) {
    final imageFile = File(user.imagePath);

    return ListTile(
      tileColor: Colors.white24,
      onTap: () {},
      // } Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (context) => UserPage(idUser: user.id),
      // )),
      leading: user.imagePath.isEmpty
          ? null
          : CircleAvatar(backgroundImage: FileImage(imageFile)),
      title: Text(user.name, style: TextStyle(fontSize: 24)),
    );
  }

  Widget buildUsers() {
    if (users.isEmpty) {
      return Center(
        child: Text(
          'There are no users!',
          style: TextStyle(fontSize: 24),
        ),
      );
    } else {
      return ListView.separated(
        itemCount: users.length,
        separatorBuilder: (context, index) => Container(height: 12),
        itemBuilder: (context, index) {
          final user = users[index];

          return buildUser(user);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 96),
              child: Column(
                children: <Widget>[
                  TitleWidget(icon: Icons.login, text: 'Login'),
                  const SizedBox(height: 48),
                  Expanded(child: buildUsers()),
                ],
              ),
            ),
            Positioned(
              left: 16,
              top: 24,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back, size: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
