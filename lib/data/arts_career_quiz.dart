import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Branch-specific quiz for ARTS & HUMANITIES stream.
///
/// After student agrees with Arts recommendation,
/// ask detailed questions to determine specific career:
/// UPSC/Civil Services, Law, Journalism, Teaching, etc.

final Map<String, QuizQuestion> artsCareerQuizData = {
  'arts_start': QuizQuestion(
    id: 'arts_start',
    questionText: "Within Arts & Humanities, what attracts you?",
    contextInfo: "Arts offers paths in governance, law, media, education, and creative fields!",
    options: [
      QuizOption(
        text: "Civil Services (IAS/IPS/IFS)",
        description: "I want to serve India as a government officer, make policies, lead districts.",
        nextStepId: 'upsc',
        isFinal: true,
      ),
      QuizOption(
        text: "Law & Justice",
        description: "Becoming a lawyer, fighting cases, working in courts, legal profession.",
        nextStepId: 'law',
        isFinal: true,
      ),
      QuizOption(
        text: "Journalism & Media",
        description: "News reporting, TV anchor, content creation, digital media, social media.",
        nextStepId: 'arts',
        isFinal: true,
      ),
      QuizOption(
        text: "Teaching & Education",
        description: "I want to become a professor, teacher, educate students, academic career.",
        nextStepId: 'arts',
        isFinal: true,
      ),
      QuizOption(
        text: "Creative Fields (Design/Writing)",
        description: "Fashion design, graphic design, writing, creative arts, content creation.",
        nextStepId: 'arts',
        isFinal: true,
      ),
    ],
  ),
};
