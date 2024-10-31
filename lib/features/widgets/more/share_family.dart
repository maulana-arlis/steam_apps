import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class ShareFamilyScreen extends StatelessWidget {
  const ShareFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        title: const Text(
          'Share and Family',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Warna ikon panah "back"
        ),
      ),
      backgroundColor: AppColors.appColors,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 130,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.person,
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
                              Icons.person,
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
                              Icons.person,
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
                              Icons.person,
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
            const Text(
              'Family Member',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Will',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Olivia',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Arlis (You)',
                      style: TextStyle(color: Colors.blue),
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'Dawn',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Adult',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
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
                  'ADD FAMILY MEMBER',
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
