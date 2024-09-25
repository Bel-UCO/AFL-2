import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 209, 240, 1), // Background color
      body: SingleChildScrollView( // Make the body scrollable
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Full Name
              Text(
                'Belinda Poetri Dhanti',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              // Age
              Text(
                'Age: 24',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 4),
              // Location
              Text(
                'Location: Tangerang, Banten, Indonesia',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 16),
              Divider(), // Separator line
              SizedBox(height: 16),
              // Contact Information
              Text(
                'I am a woman who always had an interest in programming and designing. I am currently enrolled in Informatics at Ciputra University.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              // Skills Section
              Text(
                'Skills',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(label: Text('Pattern Making')),
                  Chip(label: Text('Sewing')),
                  Chip(label: Text('Fashion Design')),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}