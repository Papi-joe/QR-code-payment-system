import 'package:flutter/material.dart';
import 'package:test/service/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _auth = AuthService();
  final _passController = TextEditingController();
  final _emailController = TextEditingController();

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
                    return "email cannot be empty";
                  }
                },
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text('Email'),
                ),
              ),

              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Password cannot be empty";
                  }
                },
                controller: _passController,
                decoration: const InputDecoration(
                    label: Text('Password')
                ),
              ),

              MaterialButton(onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _auth.login(_emailController, _passController);
                }
              }, child: Text("Login"),),


              TextButton(onPressed: () {}, child: const Text("Sign up"))
            ],
          ),
        ),
      ),
    );
  }
}
