import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Contact Detail',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: SingleChildScrollView(
        // Avoid overflow by allowing scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Contact Information Card
              const Card(
                elevation: 3,
                color: AppColors
                    .bgColors, // Use the same background color for cards
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customer Support',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Colors.white, // White text for the section title
                        ),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Icons.phone,
                            color: Colors.white), // White icon color
                        title: Text(
                          '+1 (425) 889-9642',
                          style: TextStyle(color: Colors.white), // White text
                        ),
                        subtitle: Text(
                          'Contact Number',
                          style: TextStyle(
                              color: Colors
                                  .white70), // Slightly faded white for subtitle
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.email,
                            color: Colors.white), // White icon
                        title: Text(
                          'support@steampowered.com',
                          style: TextStyle(color: Colors.white), // White text
                        ),
                        subtitle: Text(
                          'Email Address',
                          style: TextStyle(
                              color: Colors.white70), // Faded white subtitle
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Social Media Information Card
              const Card(
                elevation: 3,
                color: AppColors
                    .bgColors, // Background color for the social media section
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Media',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Colors.white, // White text for the section title
                        ),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Icons.camera_alt, color: Colors.blue),
                        title: Text(
                          '@steam_games_official',
                          style: TextStyle(color: Colors.white), // White text
                        ),
                        subtitle: Text(
                          'Instagram',
                          style: TextStyle(
                              color: Colors.white70), // Faded white subtitle
                        ),
                      ),
                      ListTile(
                        leading:
                            Icon(Icons.alternate_email, color: Colors.blue),
                        title: Text(
                          '@Steam',
                          style: TextStyle(color: Colors.white), // White text
                        ),
                        subtitle: Text(
                          'Twitter',
                          style: TextStyle(
                              color: Colors.white70), // Faded white subtitle
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.facebook, color: Colors.blue),
                        title: Text(
                          '@Steam',
                          style: TextStyle(color: Colors.white), // White text
                        ),
                        subtitle: Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.white70), // Faded white subtitle
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Replace the logo with an image at the bottom of the screen
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      Images.logo, // Replace with your image path
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
