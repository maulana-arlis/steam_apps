import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart'; // Pastikan AppColors sudah diatur

class ShareFamilyScreen extends StatelessWidget {
  const ShareFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Warna background AppBar
        title: const Text(
          'Share and Family',
          style: TextStyle(color: Colors.white), // Warna teks title
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Warna ikon panah "back"
        ),
      ),
      backgroundColor: AppColors.appColors, // Warna background halaman
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Bagian Avatar Bulat di atas menggunakan Icon Flutter, dengan posisi di tengah
            const SizedBox(
              height: 130,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Memusatkan avatar
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person, // Icon bawaan Flutter
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Will',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person, // Icon bawaan Flutter
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Olivia',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.person, // Icon bawaan Flutter
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Arlis (You)',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person, // Icon bawaan Flutter
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Dawn',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Bagian "Family" dan ListTile untuk setiap anggota keluarga
            const Text(
              'Family Member',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Sesuaikan warna teks
              ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person, // Icon Flutter untuk avatar
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Will',
                      style: TextStyle(color: Colors.white), // Warna teks
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white), // Warna subtitle
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white, // Warna ikon panah
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person, // Icon Flutter untuk avatar
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Olivia',
                      style: TextStyle(color: Colors.white), // Warna teks
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white), // Warna subtitle
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white, // Warna ikon panah
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person, // Icon Flutter untuk avatar
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Arlis (You)',
                      style: TextStyle(color: Colors.blue), // Warna teks
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.blue), // Warna subtitle
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue, // Warna ikon panah
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person, // Icon Flutter untuk avatar
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Dawn',
                      style: TextStyle(color: Colors.white), // Warna teks
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white), // Warna subtitle
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white, // Warna ikon panah
                    ),
                  ),
                ],
              ),
            ),

            // Tombol "Add Family" di bagian bawah
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna tombol
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'ADD FAMILY MEMBER',
                  style: TextStyle(
                    color: Colors.white, // Warna teks tombol
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
