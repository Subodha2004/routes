import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You are on the Second Page!"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO 3: Use Navigator to push the '/third' route
                  Navigator.pushNamed(context, '/third');
                },
                child: const Text("Go to Third Page"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // TODO 4: Use Navigator to pop this screen and return to Home
                  Navigator.pop(context);
                },
                child: const Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
