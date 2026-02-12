import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Branch-specific quiz for COMMERCE stream.
///
/// After student agrees with Commerce recommendation,
/// ask detailed questions to determine specific career:
/// CA, Business/Entrepreneurship, Banking/Finance, etc.

final Map<String, QuizQuestion> commerceCareerQuizData = {
  'comm_start': QuizQuestion(
    id: 'comm_start',
    questionText: "What aspect of Commerce excites you most?",
    contextInfo: "Commerce opens many doors - from becoming a CA to running your own business!",
    options: [
      QuizOption(
        text: "Accounting & Numbers",
        description: "I love working with accounts, balance sheets, taxation. CA sounds interesting!",
        nextStepId: 'ca',
        isFinal: true,
      ),
      QuizOption(
        text: "Starting my own Business or Management",
        description: "I want to be an entrepreneur, manager in big company, or do MBA.",
        nextStepId: 'bba',
        isFinal: true,
      ),
      QuizOption(
        text: "Stock Market & Investments",
        description: "Share trading, mutual funds, portfolio management excites me.",
        nextStepId: 'comm',
        isFinal: true,
      ),
      QuizOption(
        text: "Banking & Finance Jobs",
        description: "Working in banks, financial institutions, loans, corporate finance.",
        nextStepId: 'comm',
        isFinal: true,
      ),
    ],
  ),
};
