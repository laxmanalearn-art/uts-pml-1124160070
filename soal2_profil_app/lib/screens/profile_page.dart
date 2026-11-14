import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blue.shade100,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Bayu Laksmana',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text('NIM : 1124160070'),
            const Text('Prodi : Teknik Informatika'),
            const Text('Kelas : TISE24SH'),
            const SizedBox(height: 12),
            const Text(
              'Mahasiswa yang tertarik mempelajari teknologi'
              'Dan Pengembangan App Mobile',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('E-mail'),
                    subtitle: Text('baylaxmana@gmail.com'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.phone_outlined),
                    title: Text('Phone Number'),
                    subtitle: Text('081821831'),
                  ),
                  const Divider(height: 1),
                  const ListTile(
                    leading: Icon(Icons.code),
                    title: Text('Github'),
                    subtitle: Text('laxmanalearn-art'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
