import 'package:flutter/material.dart';

class LayarLogin extends StatefulWidget {
  @override
  _LayarLoginState createState() => _LayarLoginState();
}

class _LayarLoginState extends State<LayarLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

 
  final String emailValid = 'ishakhadipernama@gmail.com';
  final String passwordValid = '12345';

  
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.cyan],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person, size: 40),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    
                    if (errorMessage.isNotEmpty)
                      Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        
                        if (emailController.text == emailValid &&
                            passwordController.text == passwordValid) {
                          
                          Navigator.pushNamed(context, '/welcome');
                        } else {
                          
                          setState(() {
                            errorMessage = 'Email atau kata sandi salah!';
                          });
                        }
                      },
                      child: Text('Masuk', style: TextStyle(fontSize: 18)),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Tidak Memiliki Akun? Daftar',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
