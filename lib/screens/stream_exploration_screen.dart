import 'package:flutter/material.dart';
import 'questionnaire_screen.dart';

/// Stream exploration screen showing all 3 streams for comparison.
///
/// Displays when user clicks "Not sure, show me all options".
class StreamExplorationScreen extends StatelessWidget {
  final String userName;
  final Map<String, int> scores;

  const StreamExplorationScreen({
    super.key,
    required this.userName,
    required this.scores,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text("Explore All Streams"),
        elevation: 0,
        backgroundColor: const Color(0xFF1E88E5),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            const Text(
              'Choose Your Path',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Not sure yet? No problem! Here are all your options. Take your time to explore.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            // Science Stream Card
            _buildStreamCard(
              context,
              stream: 'science',
              name: 'Science',
              icon: Icons.science_outlined,
              color: const Color(0xFF1E88E5),
              score: scores['science'] ?? 0,
              careers: ['Doctor (MBBS)', 'Engineer', 'Pharmacist', 'Data Scientist', 'Researcher'],
              subjects: 'Physics, Chemistry, Biology/Maths',
              exams: 'NEET, JEE, BITSAT',
              description: 'For those who love understanding how things work, solving problems, and exploring the natural world.',
            ),

            const SizedBox(height: 20),

            // Commerce Stream Card
            _buildStreamCard(
              context,
              stream: 'commerce',
              name: 'Commerce',
              icon: Icons.account_balance_outlined,
              color: const Color(0xFFFF9800),
              score: scores['commerce'] ?? 0,
              careers: ['Chartered Accountant (CA)', 'Business Owner', 'Banker', 'Stock Trader', 'Manager'],
              subjects: 'Accountancy, Business Studies, Economics',
              exams: 'CA Foundation, CUET, IPMAT',
              description: 'For those interested in business, money management, finance, and entrepreneurship.',
            ),

            const SizedBox(height: 20),

            // Arts Stream Card
            _buildStreamCard(
              context,
              stream: 'arts',
              name: 'Arts & Humanities',
              icon: Icons.palette_outlined,
              color: const Color(0xFF4CAF50),
              score: scores['arts'] ?? 0,
              careers: ['IAS/IPS Officer', 'Lawyer', 'Journalist', 'Teacher', 'Designer'],
              subjects: 'History, Political Science, Geography, Psychology',
              exams: 'UPSC, CLAT, CUET',
              description: 'For those passionate about society, governance, creativity, and making social impact.',
            ),

            const SizedBox(height: 32),

            // Help Text
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.blue.shade700,
                    size: 28,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Tap any stream to explore careers within it. You can always come back and try another!',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStreamCard(
    BuildContext context, {
    required String stream,
    required String name,
    required IconData icon,
    required Color color,
    required int score,
    required List<String> careers,
    required String subjects,
    required String exams,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.15),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DynamicQuestionnaireScreen(
                  userName: userName,
                  recommendedStream: stream,
                ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Row
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(icon, color: color, size: 32),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.star, size: 16, color: Colors.amber),
                              const SizedBox(width: 4),
                              Text(
                                'Your score: $score',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: color,
                      size: 20,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Description
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 20),

                // Career Examples
                _buildInfoRow(
                  Icons.work_outline,
                  'Careers',
                  careers.take(3).join(', ') + '...',
                  color,
                ),
                const SizedBox(height: 12),

                // Subjects
                _buildInfoRow(
                  Icons.menu_book_outlined,
                  'Subjects',
                  subjects,
                  color,
                ),
                const SizedBox(height: 12),

                // Exams
                _buildInfoRow(
                  Icons.edit_note_outlined,
                  'Key Exams',
                  exams,
                  color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value, Color color) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF757575),
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF212121),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
