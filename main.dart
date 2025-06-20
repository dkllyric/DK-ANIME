import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DK | anime',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(toggleTheme: toggleTheme),
    );
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }
}

class LoginScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const LoginScreen({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/naruto_bg.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'dk.llyric',
                style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: toggleTheme,
                child: Text('تغيير المظهر'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
