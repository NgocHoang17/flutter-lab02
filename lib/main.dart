import 'package:flutter/material.dart';

// Flutter application entry point.
void main() {
  runApp(const MiCardApp());
}

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF00695C), // Teal color
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Chu Ngọc Hoàng',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2.0,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 30),
              const Divider(
                color: Colors.white54,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Color(0xFF00695C)),
                  title: const Text(
                    '+84 123 456 789',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Color(0xFF00695C)),
                  title: const Text(
                    'chungochoang@gmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}