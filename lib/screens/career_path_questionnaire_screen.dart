import 'package:flutter/material.dart';
import 'package:epics/data/career_tracks.dart';
import 'package:epics/models/career_track.dart';
import 'recommendation_screen.dart';

/// Career Path Questionnaire - Shown after stream selection for Commerce/Arts
/// Helps narrow down specific career tracks with targeted questions
class CareerPathQuestionnaireScreen extends StatefulWidget {
  final String userName;
  final String selectedStream; // 'commerce', 'arts', 'science'
  final Map<String, int> streamScores;

  const CareerPathQuestionnaireScreen({
    super.key,
    required this.userName,
    required this.selectedStream,
    required this.streamScores,
  });

  @override
  State<CareerPathQuestionnaireScreen> createState() =>
      _CareerPathQuestionnaireScreenState();
}

class _CareerPathQuestionnaireScreenState
    extends State<CareerPathQuestionnaireScreen> {
  int currentQuestion = 0;
  Map<int, int> answers = {}; // questionIndex -> selectedOptionIndex

  // Track scores for each specific career
  Map<String, int> careerScores = {
    'ca': 0,
    'bba': 0,
    'law': 0,
    'upsc': 0,
  };

  @override
  Widget build(BuildContext context) {
    final questions = _getQuestionsForStream();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // Header
            _buildHeader(questions.length),

            // Question Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: _buildQuestionCard(questions[currentQuestion]),
              ),
            ),

            // Navigation Buttons
            _buildNavigationButtons(questions.length),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(int totalQuestions) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            _getStreamColor(),
            _getStreamColor().withOpacity(0.8),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Almost there, ${widget.userName}!',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Let\'s narrow down your perfect ${_getStreamName()} career',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 16),
          // Progress bar
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: (currentQuestion + 1) / totalQuestions,
                    backgroundColor: Colors.white24,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 8,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '${currentQuestion + 1}/$totalQuestions',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard(Map<String, dynamic> question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question text
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
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
                  color: _getStreamColor().withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.help_outline,
                  color: _getStreamColor(),
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  question['question'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Options
        ...List.generate(
          (question['options'] as List).length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _buildOptionCard(
              question['options'][index],
              index,
              answers[currentQuestion] == index,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOptionCard(
    Map<String, dynamic> option,
    int index,
    bool isSelected,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          answers[currentQuestion] = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? _getStreamColor().withOpacity(0.1)
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? _getStreamColor() : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: _getStreamColor().withOpacity(0.2),
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
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? _getStreamColor() : Colors.grey,
                  width: 2,
                ),
                color: isSelected ? _getStreamColor() : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    option['text'],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                      color: isSelected ? _getStreamColor() : Colors.grey[800],
                    ),
                  ),
                  if (option['subtitle'] != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      option['subtitle'],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButtons(int totalQuestions) {
    final canProceed = answers.containsKey(currentQuestion);
    final isLastQuestion = currentQuestion == totalQuestions - 1;

    return Container(
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
      child: Row(
        children: [
          // Back button
          if (currentQuestion > 0)
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    currentQuestion--;
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: _getStreamColor(),
                  side: BorderSide(color: _getStreamColor()),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          if (currentQuestion > 0) const SizedBox(width: 12),

          // Next/Finish button
          Expanded(
            flex: currentQuestion > 0 ? 1 : 2,
            child: ElevatedButton(
              onPressed: canProceed
                  ? () {
                      if (isLastQuestion) {
                        _showRecommendations();
                      } else {
                        setState(() {
                          currentQuestion++;
                        });
                      }
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: _getStreamColor(),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                disabledBackgroundColor: Colors.grey[300],
              ),
              child: Text(
                isLastQuestion ? 'See My Recommendations' : 'Next',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showRecommendations() {
    // Calculate scores based on answers
    _calculateCareerScores();

    // Get recommended career track
    final recommendedTrack = _getRecommendedTrack();

    // Navigate to recommendation screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RecommendationScreen(
          userName: widget.userName,
          track: recommendedTrack,
        ),
      ),
    );
  }

  void _calculateCareerScores() {
    final questions = _getQuestionsForStream();

    for (int qIndex = 0; qIndex < questions.length; qIndex++) {
      if (!answers.containsKey(qIndex)) continue;

      final answerIndex = answers[qIndex]!;
      final option = questions[qIndex]['options'][answerIndex];
      final scores = option['scores'] as Map<String, int>;

      scores.forEach((career, points) {
        careerScores[career] = (careerScores[career] ?? 0) + points;
      });
    }
  }

  CareerTrack _getRecommendedTrack() {
    if (widget.selectedStream == 'commerce') {
      // Get highest score between CA and BBA
      if (careerScores['ca']! >= careerScores['bba']!) {
        return getCATrack();
      } else {
        return getBBATrack();
      }
    } else if (widget.selectedStream == 'arts') {
      // Get highest score between Law and UPSC
      if (careerScores['law']! >= careerScores['upsc']!) {
        return getLawTrack();
      } else {
        return getUPSCTrack();
      }
    } else {
      // Science - default to medical (or add science questions)
      return getMedicalTrack();
    }
  }

  List<Map<String, dynamic>> _getQuestionsForStream() {
    if (widget.selectedStream == 'commerce') {
      return _commerceQuestions;
    } else if (widget.selectedStream == 'arts') {
      return _artsQuestions;
    } else {
      return _scienceQuestions;
    }
  }

  // Commerce Questions
  final List<Map<String, dynamic>> _commerceQuestions = [
    {
      'question': 'What excites you most about commerce?',
      'options': [
        {
          'text': 'Numbers, accounting & auditing',
          'subtitle': 'Working with financial statements and tax planning',
          'scores': {'ca': 3, 'bba': 0},
        },
        {
          'text': 'Business strategy & leadership',
          'subtitle': 'Managing teams and making business decisions',
          'scores': {'ca': 0, 'bba': 3},
        },
        {
          'text': 'Finance & investments',
          'subtitle': 'Stock markets, banking, financial analysis',
          'scores': {'ca': 2, 'bba': 1},
        },
        {
          'text': 'Entrepreneurship & startups',
          'subtitle': 'Starting and running your own business',
          'scores': {'ca': 0, 'bba': 2},
        },
      ],
    },
    {
      'question': 'Which work environment appeals to you?',
      'options': [
        {
          'text': 'CA firms & audit companies',
          'subtitle': 'Professional certification-based career',
          'scores': {'ca': 3, 'bba': 0},
        },
        {
          'text': 'Corporate offices & MNCs',
          'subtitle': 'Working in established companies',
          'scores': {'ca': 1, 'bba': 2},
        },
        {
          'text': 'Banks & financial institutions',
          'subtitle': 'Finance and investment roles',
          'scores': {'ca': 2, 'bba': 1},
        },
        {
          'text': 'Startups & business consulting',
          'subtitle': 'Dynamic, fast-paced environments',
          'scores': {'ca': 0, 'bba': 3},
        },
      ],
    },
    {
      'question': 'How do you prefer to study and prepare?',
      'options': [
        {
          'text': 'Self-study with professional exams',
          'subtitle': 'CA/CS/CMA articleship and exams',
          'scores': {'ca': 3, 'bba': 0},
        },
        {
          'text': 'College education with degree',
          'subtitle': 'BBA, BCom from university',
          'scores': {'ca': 0, 'bba': 3},
        },
        {
          'text': 'Mix of college + professional courses',
          'subtitle': 'BCom + CA or similar combination',
          'scores': {'ca': 2, 'bba': 2},
        },
        {
          'text': 'Online MBA or executive programs',
          'subtitle': 'Flexible learning options',
          'scores': {'ca': 0, 'bba': 2},
        },
      ],
    },
  ];

  // Arts Questions
  final List<Map<String, dynamic>> _artsQuestions = [
    {
      'question': 'What interests you most in Arts/Humanities?',
      'options': [
        {
          'text': 'Law, justice & legal system',
          'subtitle': 'Becoming a lawyer or legal professional',
          'scores': {'law': 3, 'upsc': 0},
        },
        {
          'text': 'Governance & public administration',
          'subtitle': 'Civil services (IAS, IPS, IFS)',
          'scores': {'law': 0, 'upsc': 3},
        },
        {
          'text': 'Policy making & social welfare',
          'subtitle': 'Working for government and society',
          'scores': {'law': 1, 'upsc': 2},
        },
        {
          'text': 'International relations & diplomacy',
          'subtitle': 'Foreign service and global affairs',
          'scores': {'law': 1, 'upsc': 2},
        },
      ],
    },
    {
      'question': 'What\'s your dream career role?',
      'options': [
        {
          'text': 'Lawyer (Court or Corporate)',
          'subtitle': 'Arguing cases and legal counseling',
          'scores': {'law': 3, 'upsc': 0},
        },
        {
          'text': 'IAS/IPS/IFS Officer',
          'subtitle': 'District magistrate, police, foreign service',
          'scores': {'law': 0, 'upsc': 3},
        },
        {
          'text': 'Judge or Legal Advisor',
          'subtitle': 'Judiciary and legal consultation',
          'scores': {'law': 3, 'upsc': 1},
        },
        {
          'text': 'Government Administrator',
          'subtitle': 'Policy implementation and public service',
          'scores': {'law': 0, 'upsc': 2},
        },
      ],
    },
    {
      'question': 'Which path excites you more?',
      'options': [
        {
          'text': 'Law entrance (CLAT) → LLB → Practice',
          'subtitle': '5-year integrated law program',
          'scores': {'law': 3, 'upsc': 0},
        },
        {
          'text': 'UPSC CSE → Training → Civil Services',
          'subtitle': 'One of toughest exams in India',
          'scores': {'law': 0, 'upsc': 3},
        },
        {
          'text': 'BA/MA → Research or Teaching',
          'subtitle': 'Academic and scholarly path',
          'scores': {'law': 1, 'upsc': 1},
        },
        {
          'text': 'Combination of Law + Civil Services',
          'subtitle': 'LLB then UPSC preparation',
          'scores': {'law': 2, 'upsc': 2},
        },
      ],
    },
  ];

  // Science Questions (placeholder - can keep simple for now)
  final List<Map<String, dynamic>> _scienceQuestions = [
    {
      'question': 'What aspect of science interests you?',
      'options': [
        {
          'text': 'Medical sciences & patient care',
          'subtitle': 'Becoming a doctor (MBBS)',
          'scores': {},
        },
        {
          'text': 'Engineering & technology',
          'subtitle': 'Building and innovation',
          'scores': {},
        },
      ],
    },
  ];

  Color _getStreamColor() {
    switch (widget.selectedStream) {
      case 'science':
        return const Color(0xFF2196F3); // Blue
      case 'commerce':
        return const Color(0xFF4CAF50); // Green
      case 'arts':
        return const Color(0xFF9C27B0); // Purple
      default:
        return const Color(0xFF1E88E5);
    }
  }

  String _getStreamName() {
    switch (widget.selectedStream) {
      case 'science':
        return 'Science';
      case 'commerce':
        return 'Commerce';
      case 'arts':
        return 'Arts';
      default:
        return '';
    }
  }
}
