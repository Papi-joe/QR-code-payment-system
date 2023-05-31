import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Email or Username')
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('Password')
              ),
            )
          ],
        ),
      ),
    );
  }
}
