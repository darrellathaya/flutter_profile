import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/config.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Photo
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pp.jpg'),
              ),
              SizedBox(height: 16),
              // Name and Location
              Text(
                'Darrell Athaya Refaldi',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              Text(
                'Surabaya, Indonesia',
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Originated from Bogor, lived in Surabaya',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),

              // Data Diri Section
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Background',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enthusiastic student majoring in Information Systems, passionate about leveraging technology to solve real-world problems. With a strong foundation in both business processes and IT.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    const Divider(height: 20, thickness: 1),
                    SizedBox(height: 10),
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Information Systems\nInstitut Teknologi Sepuluh Nopember',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Study',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'TEKBER A\n5026221094',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              // Fun Facts Section
              SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fun Facts',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#1',
                            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Pernah kena maag 4x dalam 1 semester',
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#2',
                            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Gak suka bandeng',
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Footer Section with Social Media Icons
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () => _launchUrl('https://www.instagram.com/darrellathaya/'),
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () => _launchUrl('https://www.linkedin.com/in/darrell-athaya-810a67249/'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
