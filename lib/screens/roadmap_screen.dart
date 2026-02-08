import 'package:flutter/material.dart';
import '../models/career_track.dart';

/// Main roadmap screen showing career path tasks.
///
/// Displays a list of tasks for the selected career track,
/// including task details and completion status.
class MainRoadmapScreen extends StatefulWidget {
  final String userName;
  final CareerTrack track;

  const MainRoadmapScreen({
    super.key,
    required this.userName,
    required this.track,
  });

  @override
  State<MainRoadmapScreen> createState() => _MainRoadmapScreenState();
}

class _MainRoadmapScreenState extends State<MainRoadmapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.track.name)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.track.tasks.length,
        itemBuilder: (context, index) {
          final task = widget.track.tasks[index];
          return Card(
            child: ListTile(
              title: Text(task.title),
              subtitle: Text(task.description),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          );
        },
      ),
    );
  }
}
