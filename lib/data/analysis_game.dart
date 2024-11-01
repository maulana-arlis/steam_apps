import 'package:flutter/material.dart';

class GameDetailAnalysisTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Statistik Analisis
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "516",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Slightly positive",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "Recent analysis",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "17,598",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Very positive",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "All analysis",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          // Judul RECENT
          Text(
            "RECENT",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          // Ulasan Pengguna Terbaru
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ikon profil bawaan Flutter
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey, // Warna latar belakang ikon
                child: Icon(
                  Icons.person,
                  color: Colors.white, // Warna ikon
                  size: 24,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama pengguna dan waktu bermain
                    Row(
                      children: [
                        Text(
                          "Arlis Schumacher",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "48.8h",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    // Teks rekomendasi
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Recommended",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Teks ulasan
                    Text(
                      "Good game, it has some defects but it has more qualities than defects.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ikon profil bawaan Flutter
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey, // Warna latar belakang ikon
                child: Icon(
                  Icons.person,
                  color: Colors.white, // Warna ikon
                  size: 24,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama pengguna dan waktu bermain
                    Row(
                      children: [
                        Text(
                          "Maul Raikkonen",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "28h",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    // Teks rekomendasi
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Not Recommended",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Teks ulasan
                    Text(
                      "Trash Game, too buggy to be played",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
