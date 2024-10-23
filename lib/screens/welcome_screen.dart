import 'package:flutter/material.dart';
import '../main.dart';

class LayarSelamatDatang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushNamed(context, '/profile');
      });
    });

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
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 100,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Selamat Datang Bro!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'WOYY..$namaPengguna!',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    CircularProgressIndicator(),
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
