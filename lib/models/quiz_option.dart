/// Represents a single option in a quiz question.
class QuizOption {
  /// Display text for this option
  final String text;

  /// Detailed description of what this option means
  final String description;

  /// ID of the next question to show, or final career track ID
  final String nextStepId;

  /// Whether this option leads to a final recommendation
  final bool isFinal;

  /// Creates a new quiz option
  QuizOption({
    required this.text,
    required this.description,
    required this.nextStepId,
    this.isFinal = false,
  });
}
