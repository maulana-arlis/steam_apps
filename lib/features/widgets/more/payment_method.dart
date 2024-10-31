import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/colors.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int? _selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Payment Methods',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Flexible(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCardIndex = 0;
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 0
                          ? AppColors.bgColors
                          : AppColors.bgColors,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: _selectedCardIndex == 0
                            ? const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.ccMastercard,
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          '**** **** **** 5967',
                          style: TextStyle(
                            color: _selectedCardIndex == 0
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Expires 09/25',
                          style: TextStyle(
                            color: _selectedCardIndex == 0
                                ? Colors.blue
                                : Colors.white,
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
                        _selectedCardIndex = 1;
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 1
                          ? AppColors.bgColors
                          : AppColors.bgColors,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: _selectedCardIndex == 1
                            ? const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.ccVisa,
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          '**** **** **** 3802',
                          style: TextStyle(
                            color: _selectedCardIndex == 1
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Expires 10/27',
                          style: TextStyle(
                            color: _selectedCardIndex == 1
                                ? Colors.blue
                                : Colors.white,
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
                        _selectedCardIndex = 2;
                      });
                    },
                    child: Card(
                      color: _selectedCardIndex == 2
                          ? AppColors.bgColors
                          : AppColors.bgColors,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: _selectedCardIndex == 2
                            ? const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              )
                            : BorderSide.none,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          FontAwesomeIcons.paypal,
                          color: Colors.blue,
                          size: 40,
                        ),
                        title: Text(
                          'arlis@steampowered.com',
                          style: TextStyle(
                            color: _selectedCardIndex == 2
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'ADD PAYMENT METHOD',
                  style: TextStyle(
                    color: Colors.white,
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
