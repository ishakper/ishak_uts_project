import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/success_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/dashboard_screen.dart'; // Import the Dashboard screen

void main() => runApp(AplikasiSaya());

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alur Autentikasi',
      theme: ThemeData(
        primarySwatch: Colors.red, // Use red as the primary color
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login', // Set initial route to login
      routes: {
        '/': (context) => LayarSelamatDatang(), // Welcome screen
        '/login': (context) => LayarLogin(),
        '/register': (context) => LayarDaftar(),
        '/success': (context) => LayarPendaftaranBerhasil(),
        '/profile': (context) => LayarProfil(),
        '/welcome': (context) => LayarSelamatDatang(),
        '/dashboard': (context) => LayarDashboard(), // Dashboard route
      },
    );
  }
}

String namaPengguna = ''; // Global variable to store username

List<User> registeredUsers = []; // List to store registered users

class User {
  final String name;
  final String email;
  final String password;

  User({required this.name, required this.email, required this.password});
}
