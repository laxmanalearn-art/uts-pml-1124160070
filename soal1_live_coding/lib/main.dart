import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Bayu Laksmana',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil Mahasiswa'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(Icons.person, size: 70, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  'Nama : Bayu Laksmana',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 5),
                Text(
                  'NIM : 1124160070',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 5),
                Text(
                  'Kelas : TI 24 SE SH',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 5),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Kontak'),
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'baylaxmana@gmail.com',
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'No HP: ',
                        value: '081281152466',
                      ),
                      InfoTile(
                        icon: Icons.school,
                        label: 'Kelas : ',
                        value: 'TI SE 24 SH',
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: 'Github: ',
                        value: 'laxmanalearn-art',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  child: Column(
                    children: [
                      Text('Pengalaman'),
                      InfoTile(
                        icon: Icons.work,
                        label: 'Pengalaman 3 (2024 - 2026)',
                        value: 'PT Paragon Technology Indonesia',
                      ),
                      InfoTile(
                        icon: Icons.work,
                        label: 'Pengalaman 2 (2024)',
                        value: 'PT Sagara Marjan Lestari',
                      ),
                      InfoTile(
                        icon: Icons.work,
                        label: 'Pengalaman 1 (2022 - 2024)',
                        value: 'PT Niceso Sukses Indonesia',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Terimakasih Telah Melihat Profil saya')),
          );
        },
        child: Icon(Icons.star),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
