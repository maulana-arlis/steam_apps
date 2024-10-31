import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

void showPaymentBottomSheet(BuildContext context, double walletBalance) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.5, // Atur tinggi sesuai kebutuhan, 50% dari layar
        child: Container(
          width: double.infinity, // Agar elemen memenuhi lebar layar
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          decoration: const BoxDecoration(
            color: AppColors.appColors,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Tom Clancy's Ghost Recon® Breakpoint                             \$50\n"
                "Red Dead Redemption 2                                                        \$35\n"
                "Far Cry 6                                                                                  \$15\n\n"
                "___________________________________________________________\n\n\n",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Total: \$100",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Proceed to Payment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
