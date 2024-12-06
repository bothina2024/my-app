import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isPressed ? Colors.yellow : Colors.white,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: isPressed ? Colors.black : Colors.yellow, // لون النص داخل الزر
            shadowColor: Colors.black54, // لون الظل
            elevation: 10, // ارتفاع الظل
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // الحواف الناعمة
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          onPressed: () {
            setState(() {
              isPressed = !isPressed; // تبديل الحالة عند الضغط
            });
          },
          child: Text(
            'Bothina',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
