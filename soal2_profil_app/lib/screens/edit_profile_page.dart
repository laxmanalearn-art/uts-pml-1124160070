import 'package:flutter/material.dart';
import 'package:soal2_profil_app/models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;
  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController namaController;
  late final TextEditingController nimController;
  late final TextEditingController prodiController;
  late final TextEditingController kelasController;
  late final TextEditingController bioController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController githubController;

  @override
  void initState() {
    super.initState();

    namaController = TextEditingController(text: widget.profile.nama);
    nimController = TextEditingController(text: widget.profile.nim);
    prodiController = TextEditingController(text: widget.profile.prodi);
    kelasController = TextEditingController(text: widget.profile.kelas);
    emailController = TextEditingController(text: widget.profile.email);
    bioController = TextEditingController(text: widget.profile.bio);
    phoneController = TextEditingController(text: widget.profile.phone);
    githubController = TextEditingController(text: widget.profile.github);
  }

  @override
  void dispose() {
    namaController.dispose();
    nimController.dispose();
    prodiController.dispose();
    kelasController.dispose();
    bioController.dispose();
    emailController.dispose();
    phoneController.dispose();
    githubController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      final updatedProfile = widget.profile.copyWith(
        nama: namaController.text.trim(),
        nim: nimController.text.trim(),
        prodi: prodiController.text.trim(),
        kelas: kelasController.text.trim(),
        bio: bioController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        github: githubController.text.trim(),
      );

      Navigator.pop(context, updatedProfile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profil'), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama lengkap wajib diisi';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: nimController,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.badge),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: prodiController,
                decoration: const InputDecoration(
                  labelText: 'Program Studi',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.school),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: kelasController,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.groups),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: bioController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Bio',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.description),
                  alignLabelWithHint: true,
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Email wajib diisi';
                  }

                  final emailPattern = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

                  if (!emailPattern.hasMatch(value.trim())) {
                    return 'Format email tidak valid';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nomor telepon wajib diisi';
                  }

                  final phonePattern = RegExp(r'^\d{10,13}$');

                  if (!phonePattern.hasMatch(value.trim())) {
                    return 'Nomor telepon harus 10–13 digit angka';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: githubController,
                decoration: const InputDecoration(
                  labelText: 'GitHub',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.code),
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton.icon(
                onPressed: _saveProfile,
                icon: const Icon(Icons.save),
                label: const Text('Simpan Perubahan'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
