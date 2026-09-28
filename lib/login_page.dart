import 'package:flutter/material.dart';
import 'library_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({super.key});

  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Controler untuk menangkap teks yang diketik pengguna
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _Login() {
    //validasi data dummi sesuai soal kuis
    if (_emailController.text == 'maul@gmail.com' && _passwordController.text == 'maul123') {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LibraryPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text ('email atau password tidak sesuai')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('login')),
        body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24),
          ElevatedButton(onPressed: _Login, child: const Text('Login'),
          )
         ],
        ),
      ),
    );
  }
}