import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to the Third Page!"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO 5: Use Navigator to pop this screen and return to the Second Page
                  Navigator.pop(context);
                },
                child: const Text("Go Back to Second Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
