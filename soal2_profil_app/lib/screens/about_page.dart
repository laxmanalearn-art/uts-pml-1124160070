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
            'Halo! Saya Bayu Laksmana, seorang mahasiswa Teknik Informatika '
            'Di Global Institute of Technology and Business'
            'Saya belajar di Jurusan Software Enginneering',
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
                  title: Text('Web Development'),
                  subtitle: Text('Pemrograman Web'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text('Mobile App Development'),
                  subtitle: Text('Pengembangan aplikasi mobile'),
                ),
                Divider(height: 1),
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
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('SMK Bina Am Ma`mur Kab.Tangerang'),
                  subtitle: Text('Multimedia'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
