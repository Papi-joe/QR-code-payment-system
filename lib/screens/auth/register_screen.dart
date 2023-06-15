import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Email cannot be empty";
                  }
                },
                decoration: const InputDecoration(label: Text('Email')),
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Password cannot be empty";
                  }
                },
                decoration: const InputDecoration(label: Text('Password')),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text("Create Account"),
              ),
              TextButton(onPressed: () {}, child: const Text("Sign in"))
            ],
          ),
        ),
      ),
    );
  }
}
