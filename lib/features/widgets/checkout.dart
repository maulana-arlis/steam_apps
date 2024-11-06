import 'package:flutter/material.dart';
import 'package:steam_apps/data/model/cart_model.dart';
import '../../core/constants/colors.dart';
import '../../data/cart_data.dart'; // Import file cart_data untuk mengakses data keranjang

void showPaymentBottomSheet(BuildContext context, List<CartItem> items) {
  showModalBottomSheet(
    backgroundColor: AppColors.bgColors,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartData.items.length,
                    itemBuilder: (context, index) {
                      final item = cartData.items[index];
                      return ListTile(
                        leading: Image.asset(item.imagePath, width: 50),
                        title: Text(
                          item.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          item.price,
                          style: const TextStyle(color: Colors.white70),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Menghapus item dari keranjang dan memperbarui UI
                            setState(() {
                              cartData.removeItem(item);
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue, // Warna teks pada tombol
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Proceed to Payment"),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
