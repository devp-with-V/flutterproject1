import 'package:flutter/material.dart';

/// Interest Tags Selection Screen
/// Shown after login, before the main quiz
/// User selects tags that match their interests
class InterestTagsScreen extends StatefulWidget {
  final String userName;

  const InterestTagsScreen({super.key, required this.userName});

  @override
  State<InterestTagsScreen> createState() => _InterestTagsScreenState();
}

class _InterestTagsScreenState extends State<InterestTagsScreen> {
  // Selected tag IDs
  final Set<String> selectedTags = {};

  // Minimum tags required
  static const int minTags = 3;

  // All available tags with metadata
  final List<Map<String, dynamic>> allTags = [
    {
      'id': 'science',
      'label': 'Science & Research',
      'icon': Icons.science_outlined,
      'color': Colors.blue,
      'streams': {'science': 2, 'commerce': 0, 'arts': 0},
    },
    {
      'id': 'math',
      'label': 'Mathematics & Logic',
      'icon': Icons.calculate_outlined,
      'color': Colors.purple,
      'streams': {'science': 2, 'commerce': 1, 'arts': 0},
    },
    {
      'id': 'creative',
      'label': 'Creative Arts',
      'icon': Icons.palette_outlined,
      'color': Colors.pink,
      'streams': {'science': 0, 'commerce': 0, 'arts': 3},
    },
    {
      'id': 'helping',
      'label': 'Helping People',
      'icon': Icons.favorite_outline,
      'color': Colors.red,
      'streams': {'science': 1, 'commerce': 0, 'arts': 2},
    },
    {
      'id': 'tech',
      'label': 'Technology & Coding',
      'icon': Icons.computer_outlined,
      'color': Colors.indigo,
      'streams': {'science': 2, 'commerce': 0, 'arts': 0},
    },
    {
      'id': 'business',
      'label': 'Business & Leadership',
      'icon': Icons.business_center_outlined,
      'color': Colors.orange,
      'streams': {'science': 0, 'commerce': 3, 'arts': 1},
    },
    {
      'id': 'sports',
      'label': 'Sports & Fitness',
      'icon': Icons.sports_soccer_outlined,
      'color': Colors.green,
      'streams': {'science': 0, 'commerce': 0, 'arts': 2},
    },
    {
      'id': 'music',
      'label': 'Music & Performance',
      'icon': Icons.music_note_outlined,
      'color': Colors.deepPurple,
      'streams': {'science': 0, 'commerce': 0, 'arts': 3},
    },
    {
      'id': 'writing',
      'label': 'Writing & Literature',
      'icon': Icons.edit_outlined,
      'color': Colors.brown,
      'streams': {'science': 0, 'commerce': 0, 'arts': 3},
    },
    {
      'id': 'handson',
      'label': 'Hands-on Work',
      'icon': Icons.construction_outlined,
      'color': Colors.deepOrange,
      'streams': {'science': 1, 'commerce': 0, 'arts': 1},
    },
    {
      'id': 'problem',
      'label': 'Problem Solving',
      'icon': Icons.psychology_outlined,
      'color': Colors.teal,
      'streams': {'science': 2, 'commerce': 1, 'arts': 0},
    },
    {
      'id': 'teaching',
      'label': 'Teaching & Mentoring',
      'icon': Icons.school_outlined,
      'color': Colors.cyan,
      'streams': {'science': 1, 'commerce': 0, 'arts': 2},
    },
  ];

  /// Calculate tag bonuses for each stream
  Map<String, int> getTagBonuses() {
    Map<String, int> bonuses = {'science': 0, 'commerce': 0, 'arts': 0};

    for (String tagId in selectedTags) {
      final tag = allTags.firstWhere((t) => t['id'] == tagId);
      final streams = tag['streams'] as Map<String, int>;

      bonuses['science'] = bonuses['science']! + streams['science']!;
      bonuses['commerce'] = bonuses['commerce']! + streams['commerce']!;
      bonuses['arts'] = bonuses['arts']! + streams['arts']!;
    }

    return bonuses;
  }

  @override
  Widget build(BuildContext context) {
    final canContinue = selectedTags.length >= minTags;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF1E88E5),
                    const Color(0xFF1976D2),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, ${widget.userName}! 👋',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Let\'s get to know you better',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '✨ Select Your Interests',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Pick at least $minTags tags that excite you. This helps us personalize your career recommendations!',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Selection Counter
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${selectedTags.length} selected',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    canContinue
                        ? '✓ Good to go!'
                        : 'Select ${minTags - selectedTags.length} more',
                    style: TextStyle(
                      fontSize: 13,
                      color: canContinue ? Colors.green : Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            // Tags Grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.3,
                ),
                itemCount: allTags.length,
                itemBuilder: (context, index) {
                  final tag = allTags[index];
                  final isSelected = selectedTags.contains(tag['id']);

                  return _buildTagCard(
                    id: tag['id'],
                    label: tag['label'],
                    icon: tag['icon'],
                    color: tag['color'],
                    isSelected: isSelected,
                  );
                },
              ),
            ),

            // Continue Button
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: canContinue
                      ? () {
                          // Pass tag bonuses to next screen
                          final bonuses = getTagBonuses();
                          Navigator.pushReplacementNamed(
                            context,
                            '/welcome-dashboard',
                            arguments: {
                              'userName': widget.userName,
                              'tagBonuses': bonuses,
                              'selectedTags': selectedTags.toList(),
                            },
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                    disabledBackgroundColor: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        canContinue
                            ? 'Continue to Dashboard'
                            : 'Select ${minTags - selectedTags.length} More',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (canContinue) ...[
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTagCard({
    required String id,
    required String label,
    required IconData icon,
    required Color color,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTags.remove(id);
          } else {
            selectedTags.add(id);
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? color.withOpacity(0.15) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? color : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: isSelected ? color : Colors.grey[600],
                ),
                if (isSelected)
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                color: isSelected ? color : Colors.grey[800],
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
