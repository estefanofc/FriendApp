import 'package:flutter/material.dart';
import 'package:friend_app_flutter/menu_dashboard_layout.dart';
import 'package:friend_app_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      //home: MenuDashboardPage(),
      home: HomeScreen(),
    );
  }
}
