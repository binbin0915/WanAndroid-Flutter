import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/pages/home.dart';
import 'package:wanandroid_flutter/pages/login.dart';
import 'package:wanandroid_flutter/pages/mine.dart';
import 'package:wanandroid_flutter/pages/project.dart';
import 'package:wanandroid_flutter/pages/splash.dart';
import 'package:wanandroid_flutter/pages/system.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.cyan,
//        accentColor: Colors.cyan,
//        primaryColorDark: Colors.cyan,
      ),
      home: MainPage(),
      routes: {
        "login": (BuildContext context) => LoginPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int mCurrentIndex = 0;
  List<Widget> pages = new List<Widget>();

  @override
  void initState() {
    super.initState();
    pages
      ..add(HomePage())
      ..add(ProjectPage())
      ..add(SystemPage())
      ..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[mCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(color: Colors.black54),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        currentIndex: mCurrentIndex,
        onTap: onNavigationItemSelected,
        items: [
          createNavigationBarItem(
            "首页",
            Icon(Icons.home),
          ),
          createNavigationBarItem(
            "项目",
            Icon(Icons.store),
          ),
          createNavigationBarItem(
            "体系",
            Icon(Icons.apps),
          ),
          createNavigationBarItem(
            "我的",
            Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  createNavigationBarItem(String content, Icon icon) {
    return BottomNavigationBarItem(
      title: new Text(content),
      icon: icon,
    );
  }

  void onNavigationItemSelected(int value) {
    setState(() {
      this.mCurrentIndex = value;
    });
  }
}