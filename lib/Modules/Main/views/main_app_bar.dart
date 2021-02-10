import 'package:flutter/material.dart';
import 'package:salud_dominicana/Modules/Insurance/views/list_page.dart';
import 'package:salud_dominicana/Utils/UI/size_config.dart';

class HomeAppBar extends StatelessWidget {
  final Widget page;

  const HomeAppBar({@required this.page});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.blue,
              size: 30,
            ),
            onPressed: () {}),
        title: Text('Home', style: TextStyle(color: Colors.black),),
        actions: [Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(
            Icons.notifications,
            size: 30,
            color: Colors.blue,
          ),
        )],
      ),
      body: page,
    );
  }
}