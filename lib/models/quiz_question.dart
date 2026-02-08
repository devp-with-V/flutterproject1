import 'quiz_option.dart';

/// Represents a question in the career discovery questionnaire.
class QuizQuestion {
  /// Unique identifier for this question
  final String id;

  /// The question text to display
  final String questionText;

  /// Contextual information or hint for the question
  final String contextInfo;

  /// Available options for this question
  final List<QuizOption> options;

  /// Creates a new quiz question
  QuizQuestion({
    required this.id,
    required this.questionText,
    required this.contextInfo,
    required this.options,
  });
}
