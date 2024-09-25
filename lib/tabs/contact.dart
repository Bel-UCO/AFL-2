import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  final TextEditingController _userContactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 250, 212, 216), // Background color
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        // Make the content scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Email
            Text(
              'Email: bpoetridhanti@student.ciputra.ac.id',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            // Phone
            Text(
              'Phone: +62 852 8356 7469',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            // Instagram
            Text(
              'Instagram: @belindapoetri',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            SizedBox(height: 16),
            Divider(), // Separator line
            SizedBox(height: 16),
            // Section for users to submit their contact
            Text(
              'Want to get in touch? Fill out the form below:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            // User Contact Input
            TextField(
              controller: _userContactController,
              decoration: InputDecoration(
                  hintText: 'Your Message or Contact Info',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(255, 253, 222, 225)),
              maxLines: 4, // Allow multiple lines for user input
            ),
            SizedBox(height: 16),
            // Submit Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 205, 177, 206)),
                onPressed: () {
                  // Handle the user's input submission
                  String userContact = _userContactController.text;
                  // Do something with the user's input (e.g., send it to a server)
                  print('User Contact: $userContact');
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
