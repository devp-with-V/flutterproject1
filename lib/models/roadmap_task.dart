/// Represents a single task in a career roadmap.
///
/// Each task includes a title, description, learning resources,
/// estimated duration, and completion status.
class RoadmapTask {
  /// The title of the task
  final String title;

  /// Detailed description of what needs to be done
  final String description;

  /// Learning resources (books, websites, courses)
  final String resources;

  /// Estimated time to complete this task
  final String duration;

  /// Whether the task has been completed by the user
  bool isCompleted;

  /// Creates a new roadmap task
  RoadmapTask({
    required this.title,
    required this.description,
    required this.resources,
    required this.duration,
    this.isCompleted = false,
  });
}
