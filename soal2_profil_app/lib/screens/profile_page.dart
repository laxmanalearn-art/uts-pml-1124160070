import 'package:flutter/material.dart';
import 'package:soal2_profil_app/widgets/info_tile.dart';
import 'package:soal2_profil_app/models/profile.dart';

class ProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile profile = Profile(
    nama: 'Bayu Laksmana',
    nim: '1124160070',
    kelas: 'TI 24 SE SH',
    prodi: 'Teknik Informatika',
    bio: 'Saya Seorang Mahasiswa yang........',
    email: 'baylaxmana@gmail.com',
    phone: '081281152466',
    github: 'laxmanalearn-art',
    photo: 'assets/images/profile.jpg',
  );

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue.shade100,
                  backgroundImage: AssetImage(profile.photo),
                ),
                const SizedBox(height: 16),
                Text(
                  profile.nama,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text('NIM : ${profile.nim}'),
                Text('Prodi : ${profile.prodi}'),
                Text('Kelas : ${profile.kelas}'),
                SizedBox(height: 12),
                Text(profile.bio, textAlign: TextAlign.center),
                const SizedBox(height: 20),
                Card(
                  child: Column(
                    children: [
                      InfoTile(
                        icon: Icons.email_outlined,
                        title: 'E-mail',
                        subtitle: profile.email,
                      ),
                      const Divider(height: 1),
                      InfoTile(
                        icon: Icons.phone,
                        title: 'Phone Number :',
                        subtitle: profile.phone,
                      ),
                      const Divider(height: 1),
                      InfoTile(
                        icon: Icons.code,
                        title: 'Github',
                        subtitle: profile.github,
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override

// }
