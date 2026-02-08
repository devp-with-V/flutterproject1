import 'roadmap_task.dart';
import 'official_link.dart';

/// Represents a complete career track with associated information.
///
/// Each career track includes metadata, tasks for the roadmap,
/// and links to official resources.
class CareerTrack {
  /// Unique identifier for this career track
  final String id;

  /// Display name of the career (e.g., "Medical (MBBS)")
  final String name;

  /// Short tagline (e.g., "The Healer")
  final String tagLine;

  /// Description of who this career is ideal for
  final String idealFor;

  /// Required subject combination (e.g., "PCB", "PCM")
  final String subjectCombo;

  /// Explanation of why this career was recommended
  final String whyRecommended;

  /// List of roadmap tasks for this career path
  final List<RoadmapTask> tasks;

  /// Official links to exams, institutions, etc.
  final List<OfficialLink> links;

  /// Creates a new career track
  CareerTrack({
    required this.id,
    required this.name,
    required this.tagLine,
    required this.idealFor,
    required this.subjectCombo,
    required this.whyRecommended,
    required this.tasks,
    required this.links,
  });
}
