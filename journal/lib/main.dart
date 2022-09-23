import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Pages/createpost.dart';
import 'Pages/home.dart';
import 'Pages/posts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int _current_page = 0;
    final _nav_bar_items = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Post"),
      BottomNavigationBarItem(icon: Icon(Icons.read_more), label: "Read"),
    ];

    return Scaffold(
      body: PageView(
        children: [
          Home(),
          CreatePost(),
          Posts(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current_page,
        items: _nav_bar_items,
        onTap: (newIndex) => {
          setState(() => {
                _current_page = newIndex,
              })
        },
      ),
    );
  }
}
