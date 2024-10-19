import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _message = '';

  void _login() {
  // Dummy login logic for demonstration
  String username = _usernameController.text;
  String password = _passwordController.text;

  if (username == 'user' && password == 'password') {
  setState(() {
  _message = 'Login successful!';
  });
  } else {
  setState(() {
  _message = 'Invalid username or password.';
  });
  }
  }

void setState(Null Function() param0) {
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hide password input
            ),
            const SizedBox(height: 16.0),
            const ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            const SizedBox(height: 16.0),
            Text(
              _message,
              style: const TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

