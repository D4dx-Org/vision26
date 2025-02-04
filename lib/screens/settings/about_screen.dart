import 'package:flutter/material.dart';
import 'package:vision_2026/constants/image_class.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
        backgroundColor: const Color(0xFFB71C1C), // Customize the color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header Image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  ImageClass.appIcon,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // App Name
              const Text(
                'Vision 2026',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              // Tagline
              const Text(
                'Transforming Lives, Empowering Communities',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Description
              const Text(
                'Vision 2026 is a collective initiative by NGOs dedicated to uplifting underprivileged communities through humanitarian and development programs. Our mission is to empower individuals and transform lives, fostering a brighter future for all.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Divider
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),

              // Version Info
              const ListTile(
                leading: Icon(Icons.info_outline, color: Colors.blue),
                title: Text('App Version'),
                subtitle: Text('1.0.0'),
              ),

              // Developer Info
              const ListTile(
                leading: Icon(Icons.code, color: Colors.green),
                title: Text('Developed By'),
                subtitle: Text('D4DX Innovations'),
              ),

              // Contact Info
              const ListTile(
                leading: Icon(Icons.email, color: Colors.red),
                title: Text('Contact Us'),
                subtitle: Text('mail@d4dx.co'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
