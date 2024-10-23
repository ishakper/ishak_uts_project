import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/success_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(AplikasiSaya());

class AplikasiSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alur Autentikasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LayarLogin(),
        '/register': (context) => LayarDaftar(),
        '/success': (context) => LayarPendaftaranBerhasil(),
        '/profile': (context) => LayarProfil(),
        '/welcome': (context) => LayarSelamatDatang(),
      },
    );
  }
}

String namaPengguna = '';
