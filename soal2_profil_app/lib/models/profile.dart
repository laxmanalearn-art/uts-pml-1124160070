class Profile {
  final String nama;
  final String nim;
  final String kelas;
  final String prodi;
  final String bio;
  final String email;
  final String phone;
  final String github;
  final String photo;

  Profile({
    required this.nama,
    required this.nim,
    required this.kelas,
    required this.prodi,
    required this.bio,
    required this.email,
    required this.phone,
    required this.github,
    required this.photo,
  });

  Profile copyWith({
    String? nama,
    String? nim,
    String? kelas,
    String? prodi,
    String? bio,
    String? email,
    String? phone,
    String? github,
    String? photo,
  }) {
    return Profile(
      nama: nama ?? this.nama,
      nim: nim ?? this.nim,
      kelas: kelas ?? this.kelas,
      prodi: prodi ?? this.prodi,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      github: github ?? this.github,
      photo: photo ?? this.photo,
    );
  }
}
