import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/colors.dart'; // Pastikan AppColors sudah diatur

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  // Variabel untuk menyimpan kartu yang sedang dipilih
  int? _selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors, // Warna background AppBar
        title: const Text(
          'Payment Methods',
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
            // Menggunakan Flexible agar tidak menekan tombol terlalu ke bawah
            Flexible(
              child: Column(
                children: [
                  // Card untuk Mastercard
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCardIndex = 0; // Setel index saat ditekan
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 0
                          ? Colors
                              .lightBlue[100] // Warna background saat dipilih
                          : AppColors.bgColors, // Warna default
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        // Hanya border biru saat ditekan, tanpa border default
                        side: _selectedCardIndex == 0
                            ? const BorderSide(
                                color: Colors.blue, // Border biru saat dipilih
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.ccMastercard, // Ikon Mastercard
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          '**** **** **** 5967',
                          style: TextStyle(
                            color: _selectedCardIndex == 0
                                ? Colors.blue // Warna teks saat dipilih
                                : Colors.white, // Warna default
                          ),
                        ),
                        subtitle: Text(
                          'Expires 09/25',
                          style: TextStyle(
                            color: _selectedCardIndex == 0
                                ? Colors.blue // Warna teks saat dipilih
                                : Colors.white, // Warna default
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Card untuk Visa
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCardIndex = 1; // Setel index saat ditekan
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 1
                          ? Colors
                              .lightBlue[100] // Warna background saat dipilih
                          : AppColors.bgColors, // Warna default
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        // Hanya border biru saat ditekan, tanpa border default
                        side: _selectedCardIndex == 1
                            ? const BorderSide(
                                color: Colors.blue, // Border biru saat dipilih
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.ccVisa, // Ikon Visa
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          '**** **** **** 3802',
                          style: TextStyle(
                            color: _selectedCardIndex == 1
                                ? Colors.blue // Warna teks saat dipilih
                                : Colors.white, // Warna default
                          ),
                        ),
                        subtitle: Text(
                          'Expires 10/27',
                          style: TextStyle(
                            color: _selectedCardIndex == 1
                                ? Colors.blue // Warna teks saat dipilih
                                : Colors.white, // Warna default
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Card untuk PayPal
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCardIndex = 2; // Setel index saat ditekan
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 2
                          ? Colors
                              .lightBlue[100] // Warna background saat dipilih
                          : AppColors.bgColors, // Warna default
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        // Hanya border biru saat ditekan, tanpa border default
                        side: _selectedCardIndex == 2
                            ? const BorderSide(
                                color: Colors.blue, // Border biru saat dipilih
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.paypal, // Ikon PayPal
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          'arlis@steampowered.com',
                          style: TextStyle(
                            color: _selectedCardIndex == 2
                                ? Colors.blue // Warna teks saat dipilih
                                : Colors.white, // Warna default
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            // Spacer untuk memberi sedikit jarak sebelum tombol
            const SizedBox(height: 20),

            // Tombol Add Payment Method tidak terlalu ke bawah
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Action ketika tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna tombol
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'ADD PAYMENT METHOD',
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
