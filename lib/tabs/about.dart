import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 215, 240, 1), // Background color
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Education Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Education',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(41, 2, 43, 1)),
              ),
            ),
            // Educational Details
            Column(
              children: [
                _buildEducationRow('2018', 'Strada Saint Thomas Aquino SHS'),
                _buildEducationRow(
                    '2022', 'Pattern Maker - Lasalle College Indonesia'),
                _buildEducationRow('2023-', 'Currently in Ciputra University'),
              ],
            ),
            // Skills Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Skills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Skills Details
            Column(
              children: [
                _buildSkillItem(
                    'Cooperative',
                    'I am able to build a good cooperation and work as a team, because I believe in a great project, there had to be a great team in it as well.',
                    'assets/Coop.png'),
                _buildSkillItem(
                    'Communicative',
                    'I have the capability to communicate effectively and able to convey my message clearly to the receiver.',
                    'assets/communicative.png'),
                _buildSkillItem(
                    'Consistent',
                    'I believe that consistency is important to reach a greater goal, so I believe in my capability to be consistent and work around deadline.',
                    'assets/Consistent.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationRow(String year, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Vertical line
          Container(
            width: 2.0, // Line thickness
            height: 20.0, // Line height
            color: Colors.grey, // Line color
            margin:
                EdgeInsets.only(right: 10.0), // Space to the right of the line
          ),
          // Year and description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(year,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(String title, String description, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(imagePath, width: 50, height: 50), // Skill image
              SizedBox(width: 16),
              Expanded(
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }
}
