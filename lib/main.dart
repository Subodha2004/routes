import 'package:flutter/material.dart';
import 'package:routes/second_page.dart';
import 'package:routes/third_page.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      // TODO 1: Define the 'routes' map here.
      // Map the following routes to their respective widgets:
      // '/' -> Home()
      // '/second' -> SecondPage()

      // '/third' -> ThirdPage()
      routes: {
        '/': (context) => Home(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Home Page"),
              const SizedBox(height: 10),
              IconButton(
                icon: const Icon(Icons.navigate_next),
                onPressed: () {
                  // TODO 2: Use Navigator to push the '/second' route
                  Navigator.pushNamed(context, '/second');
                  Navigator.pushNamed(context, '/third');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
