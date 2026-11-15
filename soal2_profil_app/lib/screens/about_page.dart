import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Tentang Saya',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Halo! Saya seorang mahasiswa Teknik Informatika '
            'yang tertarik mempelajari teknologi dan pengembangan '
            'aplikasi mobile.',
            textAlign: TextAlign.justify,
          ),

          const SizedBox(height: 24),
          const Text(
            'Skills & Kemampuan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Dart'),
                  subtitle: Text('Pemrograman aplikasi'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text('Flutter'),
                  subtitle: Text('Pengembangan aplikasi mobile'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.web),
                  title: Text('HTML & CSS'),
                  subtitle: Text('Dasar pengembangan web'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          const Text(
            'Hobi & Minat',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.computer),
                  title: Text('Belajar Teknologi'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.developer_mode),
                  title: Text('Pengembangan Aplikasi'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.menu_book),
                  title: Text('Membaca'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Global Institute of Technology and Business'),
                  subtitle: Text('Program Studi Teknik Informatika'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
