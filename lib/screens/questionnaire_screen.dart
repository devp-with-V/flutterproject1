import 'package:flutter/material.dart';
import '../models/quiz_question.dart';
import '../models/quiz_option.dart';
import '../models/career_track.dart';
import '../data/quiz_data.dart';
import '../data/career_tracks.dart';
import 'recommendation_screen.dart';

/// Dynamic questionnaire screen for career discovery.
///
/// Presents a series of questions to guide students through
/// career path selection based on their interests.
class DynamicQuestionnaireScreen extends StatefulWidget {
  final String userName;

  const DynamicQuestionnaireScreen({super.key, required this.userName});

  @override
  State<DynamicQuestionnaireScreen> createState() =>
      _DynamicQuestionnaireScreenState();
}

class _DynamicQuestionnaireScreenState
    extends State<DynamicQuestionnaireScreen> {
  /// Current question ID being displayed
  String currentQuestionId = 'start';

  /// Handles option selection and navigation logic
  void _handleOptionSelection(QuizOption option) {
    if (option.isFinal) {
      CareerTrack recommendedTrack;

      // Map final option to career track
      switch (option.nextStepId) {
        case 'med':
          recommendedTrack = getMedicalTrack();
          break;
        case 'pharma':
          recommendedTrack = getPharmaTrack();
          break;
        case 'eng':
          recommendedTrack = getEngineeringTrack();
          break;
        case 'math':
          recommendedTrack = getMathsTrack();
          break;
        case 'res':
          recommendedTrack = getResearchTrack();
          break;
        case 'comm':
          recommendedTrack = getCommerceTrack();
          break;
        case 'arts':
          recommendedTrack = getArtsTrack();
          break;
        default:
          recommendedTrack = getEngineeringTrack();
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RecommendationScreen(
            userName: widget.userName,
            track: recommendedTrack,
          ),
        ),
      );
    } else {
      setState(() {
        currentQuestionId = option.nextStepId;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion activeQuestion = quizData[currentQuestionId]!;

    return Scaffold(
      appBar: AppBar(title: const Text("Career Discovery")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Context Info Box
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                activeQuestion.contextInfo,
                style: TextStyle(color: Colors.blue.shade900),
              ),
            ),
            const SizedBox(height: 20),

            // Question Text
            Text(
              activeQuestion.questionText,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Options
            Expanded(
              child: ListView.builder(
                itemCount: activeQuestion.options.length,
                itemBuilder: (context, index) {
                  final option = activeQuestion.options[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(
                        option.text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(option.description),
                      ),
                      onTap: () => _handleOptionSelection(option),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
