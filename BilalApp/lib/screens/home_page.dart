import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _logout(BuildContext context) {
    Navigator.pushReplacementNamed(
        context, '/login'); // Redirection vers LoginPage
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () => _logout(context), // Appelle la fonction logout
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                        'assets/images/avatar.jpg'), // Remplacez par votre image
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    'ATIK BILAL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Covid Tracker'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Emsi ChatBot'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context); // Ferme le tiroir
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                _logout(context); // Appelle la fonction logout
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Welcome to Home Page!'),
      ),
    );
  }
}
