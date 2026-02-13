import 'package:flutter/material.dart';
import 'auth_screen.dart';

/// Settings screen with app configuration and user preferences
class SettingsScreen extends StatelessWidget {
  final String userName;
  final String phoneNumber;

  const SettingsScreen({
    super.key,
    required this.userName,
    this.phoneNumber = '+91 98765 43210',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFF1E88E5),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          // Account Section
          _buildSectionHeader('Account'),
          _buildListTile(
            icon: Icons.person_outline,
            title: 'Profile',
            subtitle: userName,
            onTap: () {
              // TODO: Navigate to profile screen
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile editing coming soon!')),
              );
            },
          ),
          _buildListTile(
            icon: Icons.phone_outlined,
            title: 'Phone Number',
            subtitle: phoneNumber,
            onTap: null, // Read-only for now
          ),
          _buildListTile(
            icon: Icons.logout,
            title: 'Logout',
            subtitle: 'Sign out of your account',
            onTap: () => _showLogoutDialog(context),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),

          const Divider(height: 32),

          // Preferences Section (Placeholder)
          _buildSectionHeader('Preferences'),
          _buildListTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'English',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Multilingual support coming soon!')),
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          _buildListTile(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            subtitle: 'Get updates and reminders',
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // TODO: Implement notification toggle
              },
              activeColor: const Color(0xFF1E88E5),
            ),
          ),

          const Divider(height: 32),

          // Support Section
          _buildSectionHeader('Support'),
          _buildListTile(
            icon: Icons.help_outline,
            title: 'Help & FAQ',
            subtitle: 'Get answers to common questions',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HelpScreen()),
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          _buildListTile(
            icon: Icons.feedback_outlined,
            title: 'Send Feedback',
            subtitle: 'Help us improve',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Feedback form coming soon!')),
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          _buildListTile(
            icon: Icons.bug_report_outlined,
            title: 'Report a Bug',
            subtitle: 'Found something wrong?',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bug reporting coming soon!')),
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),

          const Divider(height: 32),

          // About Section
          _buildSectionHeader('About'),
          _buildListTile(
            icon: Icons.info_outline,
            title: 'About Career Guide',
            subtitle: 'Version 1.0.0',
            onTap: () => _showAboutDialog(context),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          _buildListTile(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            subtitle: 'How we protect your data',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Opening privacy policy...')),
              );
            },
            trailing: const Icon(Icons.open_in_new, size: 16),
          ),
          _buildListTile(
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            subtitle: 'Our terms and conditions',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Opening terms of service...')),
              );
            },
            trailing: const Icon(Icons.open_in_new, size: 16),
          ),

          const SizedBox(height: 32),

          // Footer
          Center(
            child: Column(
              children: [
                Text(
                  'Made with ❤️ for Indian Students',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '© 2026 Career Guide EPICS',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1E88E5),
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    String? subtitle,
    VoidCallback? onTap,
    Widget? trailing,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1E88E5)),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              )
            : null,
        trailing: trailing,
        onTap: onTap,
        enabled: onTap != null,
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const AuthScreen()),
                (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Column(
          children: [
            Icon(
              Icons.school_outlined,
              size: 64,
              color: Color(0xFF1E88E5),
            ),
            SizedBox(height: 16),
            Text(
              'Career Guide',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Empowering students with personalized career guidance through intelligent assessments and comprehensive roadmaps.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 12),
            Text(
              'Developed as part of EPICS Project',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '© 2026 All Rights Reserved',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

/// Help & FAQ Screen
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Help & FAQ'),
        backgroundColor: const Color(0xFF1E88E5),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Header Card
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF1E88E5), Color(0xFF1976D2)],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              children: [
                Icon(Icons.help_outline, size: 48, color: Colors.white),
                SizedBox(height: 16),
                Text(
                  'How can we help you?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Find answers to common questions below',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // FAQ Section
          const Text(
            'Frequently Asked Questions',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF212121),
            ),
          ),
          const SizedBox(height: 16),

          _buildFAQItem(
            question: 'How does the career quiz work?',
            answer:
                'Our quiz asks 8 simple questions about your interests, strengths, and preferences. Based on your answers, we calculate scores for Science, Commerce, and Arts streams. You then confirm if the recommendation feels right, or explore other options.',
          ),
          _buildFAQItem(
            question: 'Can I retake the quiz?',
            answer:
                'Yes! You can retake the quiz anytime from the Settings screen or the recommendation results page. Simply click "Retake Interest Quiz" to start fresh.',
          ),
          _buildFAQItem(
            question: 'How accurate are the recommendations?',
            answer:
                'Our recommendations combine rule-based algorithms with your quiz responses. While we strive for high accuracy, remember that YOU know yourself best. Use our recommendations as a guide, but trust your instincts too!',
          ),
          _buildFAQItem(
            question: 'What if I disagree with the results?',
            answer:
                'No problem! If you click "No, this doesn\'t feel right" on the recommendation screen, we\'ll ask a few more targeted questions to refine our understanding and provide a better match.',
          ),
          _buildFAQItem(
            question: 'How do I track my progress?',
            answer:
                'Each career roadmap shows your task completion percentage. Check off tasks as you complete them, and bookmark important ones with the star icon. Your progress is shown at the top of the roadmap screen.',
          ),
          _buildFAQItem(
            question: 'Is my data safe?',
            answer:
                'Currently, all your data is stored locally on your device. In future versions with backend integration, we\'ll use industry-standard encryption and never share your data without permission.',
          ),
          _buildFAQItem(
            question: 'What are the different career tracks?',
            answer:
                'We currently offer 11 career tracks: Medical, Pharmacy, Engineering, Mathematics/Data Science, Research (Science); CA, BBA/MBA, General Commerce; Law, UPSC Civil Services, and General Arts/Humanities.',
          ),

          const SizedBox(height: 32),

          // Contact Section
          const Text(
            'Still need help?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF212121),
            ),
          ),
          const SizedBox(height: 16),

          _buildContactCard(
            icon: Icons.email_outlined,
            title: 'Email Us',
            subtitle: 'support@careerguide.in',
            color: Colors.blue,
          ),
          const SizedBox(height: 12),
          _buildContactCard(
            icon: Icons.chat_outlined,
            title: 'WhatsApp Support',
            subtitle: '+91 98765 43210',
            color: Colors.green,
          ),
          const SizedBox(height: 12),
          _buildContactCard(
            icon: Icons.feedback_outlined,
            title: 'Send Feedback',
            subtitle: 'Help us improve',
            color: Colors.orange,
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildFAQItem({required String question, required String answer}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          title: Text(
            question,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF212121),
            ),
          ),
          iconColor: const Color(0xFF1E88E5),
          collapsedIconColor: Colors.grey,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
        ],
      ),
    );
  }
}
