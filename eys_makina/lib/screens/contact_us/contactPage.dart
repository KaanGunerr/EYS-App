import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _sendEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'EYS Makina İletişim',
        'body': 'Merhaba,\n\n',
      },
    );
    await launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'İletişim',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'EYS - Türkiye (Ana Ofis)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 24),
            ContactInfoCard(
              title: 'Adres',
              content:
                  'Tepecik Mah. 871 Sokak. No:8/2 09100-Efeler / Aydın Turkey',
              icon: Icons.location_on,
              onTap: null,
            ),
            const SizedBox(height: 16),
            ContactInfoCard(
              title: 'Telefon',
              content: '+90 (256) 231 05 98\n+90 (256) 231 11 38',
              icon: Icons.phone,
              onTap: () => _makePhoneCall('+902562310598'),
            ),
            const SizedBox(height: 16),
            ContactInfoCard(
              title: 'E-posta',
              content: 'info@e-y-s.com',
              icon: Icons.email,
              onTap: () => _sendEmail('info@e-y-s.com'),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final VoidCallback? onTap;

  const ContactInfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.blue,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      content,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
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
