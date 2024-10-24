import 'package:flutter/material.dart';
import '../main.dart'; // Import main.dart for global access
import 'profile_screen.dart'; // Import profile_screen.dart for LayarProfil

class LayarDashboard extends StatefulWidget {
  @override
  _LayarDashboardState createState() => _LayarDashboardState();
}

class _LayarDashboardState extends State<LayarDashboard> {
  // Use a default page; you can choose any page to display by default
  Widget _currentPage = HomeScreen(); // Default to HomeScreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // Set AppBar color to red
        title: Text('Dashboard', style: TextStyle(color: Colors.white)), // White text
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red, // Set DrawerHeader color to red
              ),
              child: Text(
                'Menu Saya',
                style: TextStyle(
                  color: Colors.white, // White text
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.red),
              title: Text('Beranda', style: TextStyle(color: Colors.black)),
              onTap: () {
                setState(() {
                  _currentPage = HomeScreen(); // Set to HomeScreen
                });
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Profil', style: TextStyle(color: Colors.black)),
              onTap: () {
                setState(() {
                  _currentPage = LayarProfil(); // Set to Profile Page
                });
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.red),
              title: Text('Histori', style: TextStyle(color: Colors.black)),
              onTap: () {
                setState(() {
                  _currentPage = HistoryScreen(); // Set to History Page
                });
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.red),
              title: Text('Pemberitahuan', style: TextStyle(color: Colors.black)),
              onTap: () {
                setState(() {
                  _currentPage = NotificationsScreen(); // Set to Notifications Page
                });
                Navigator.pop(context); // Close drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.red),
              title: Text('Bantuan', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Navigate to help page if needed
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.red),
              title: Text('Keluar', style: TextStyle(color: Colors.black)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red, // Set dialog color to red
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Konfirmasi',
                              style: TextStyle(
                                color: Colors.white, // White text
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Apakah Anda yakin mau keluar?',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close dialog
                                  },
                                  child: Text('Tidak', style: TextStyle(color: Colors.white)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
                                    // Navigate to login page
                                  },
                                  child: Text('Ya', style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(child: _currentPage), // Use SafeArea for better layout
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Beranda',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red), // Red text
      ),
    );
  }
}

// History Screen
class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Histori',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red), // Red text
      ),
    );
  }
}

// Notifications Screen
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Pemberitahuan',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red), // Red text
      ),
    );
  }
}
