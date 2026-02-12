import 'package:flutter/material.dart';
import 'questionnaire_screen.dart';
import 'refinement_quiz_screen.dart';
import 'stream_exploration_screen.dart';

/// Stream recommendation screen showing Science/Commerce/Arts results.
///
/// Displays the recommended stream based on interest quiz scores,
/// with explanations and option to proceed.
class StreamRecommendationScreen extends StatelessWidget {
  final String userName;
  final Map<String, int> scores;

  const StreamRecommendationScreen({
    super.key,
    required this.userName,
    required this.scores,
  });

  /// Get the recommended stream based on scores
  String get recommendedStream {
    int maxScore = scores.values.reduce((a, b) => a > b ? a : b);
    return scores.entries
        .firstWhere((entry) => entry.value == maxScore)
        .key;
  }

  /// Get stream full name
  String _getStreamName(String stream) {
    switch (stream) {
      case 'science':
        return 'Science';
      case 'commerce':
        return 'Commerce';
      case 'arts':
        return 'Arts & Humanities';
      default:
        return 'Science';
    }
  }

  /// Get stream icon
  IconData _getStreamIcon(String stream) {
    switch (stream) {
      case 'science':
        return Icons.science_outlined;
      case 'commerce':
        return Icons.account_balance_outlined;
      case 'arts':
        return Icons.palette_outlined;
      default:
        return Icons.school_outlined;
    }
  }

  /// Get stream color
  Color _getStreamColor(String stream) {
    switch (stream) {
      case 'science':
        return const Color(0xFF1E88E5);
      case 'commerce':
        return const Color(0xFFFF9800);
      case 'arts':
        return const Color(0xFF4CAF50);
      default:
        return const Color(0xFF1E88E5);
    }
  }

  /// Get stream description
  String _getStreamDescription(String stream) {
    switch (stream) {
      case 'science':
        return 'Based on your interests, you have a strong inclination towards understanding how things work, solving problems, and exploring the natural world. Science stream will help you pursue careers in Medicine, Engineering, Research, and Technology.';
      case 'commerce':
        return 'Your responses show you have a knack for business thinking, financial management, and practical problem-solving. Commerce stream opens doors to careers in Business, Accounting, Finance, Management, and Entrepreneurship.';
      case 'arts':
        return 'You demonstrate strong skills in communication, social awareness, and creative thinking. Arts & Humanities stream is perfect for careers in Civil Services, Law, Journalism, Teaching, and Social Work.';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final recommended = recommendedStream;
    final streamName = _getStreamName(recommended);
    final streamColor = _getStreamColor(recommended);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Header
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      streamColor,
                      streamColor.withOpacity(0.8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    const Icon(
                      Icons.celebration_outlined,
                      color: Colors.white,
                      size: 64,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Analysis Complete!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Your Results, $userName',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Main Content
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Recommended Stream Card
                    Container(
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: streamColor.withOpacity(0.2),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                        border: Border.all(
                          color: streamColor.withOpacity(0.3),
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: streamColor.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              _getStreamIcon(recommended),
                              color: streamColor,
                              size: 48,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'We Recommend',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            streamName,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: streamColor,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            _getStreamDescription(recommended),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Score Breakdown
                    const Text(
                      'Your Interest Breakdown',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121),
                      ),
                    ),
                    const SizedBox(height: 16),

                    _buildScoreBar('Science', scores['science'] ?? 0, const Color(0xFF1E88E5)),
                    const SizedBox(height: 12),
                    _buildScoreBar('Commerce', scores['commerce'] ?? 0, const Color(0xFFFF9800)),
                    const SizedBox(height: 12),
                    _buildScoreBar('Arts', scores['arts'] ?? 0, const Color(0xFF4CAF50)),

                    const SizedBox(height: 32),

                    // Approval Question
                    const Text(
                      'Does this sound right to you?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Take a moment to think if this matches your interests',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // YES Button
                    SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to branch-specific quiz
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DynamicQuestionnaireScreen(
                                userName: userName,
                                recommendedStream: recommended,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: streamColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.check_circle_outline, size: 24),
                            SizedBox(width: 12),
                            Text(
                              'Yes, this suits me!',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // NOT SURE Button
                    SizedBox(
                      height: 48,
                      child: OutlinedButton(
                        onPressed: () {
                          // Navigate to exploration screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StreamExplorationScreen(
                                userName: userName,
                                scores: scores,
                              ),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: streamColor,
                          side: BorderSide(color: streamColor, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.help_outline, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'Not sure, show me all options',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // NO Button
                    TextButton(
                      onPressed: () {
                        // Navigate to refinement quiz
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RefinementQuizScreen(
                              userName: userName,
                              previousScores: scores,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'No, this doesn\'t feel right',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Retake Quiz Option
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.refresh_rounded,
                                color: Colors.grey[700],
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Want to start fresh? You can retake the entire interest quiz.',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            child: TextButton.icon(
                              onPressed: () {
                                // Navigate back to dashboard, which leads to interest quiz
                                Navigator.of(context).popUntil(
                                  (route) => route.isFirst,
                                );
                              },
                              icon: const Icon(Icons.restart_alt, size: 18),
                              label: const Text('Retake Interest Quiz'),
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreBar(String label, int score, Color color) {
    final maxScore = scores.values.reduce((a, b) => a > b ? a : b);
    final percentage = maxScore > 0 ? (score / maxScore) : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF212121),
              ),
            ),
            Text(
              '$score points',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: percentage,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(color),
            minHeight: 12,
          ),
        ),
      ],
    );
  }
}
