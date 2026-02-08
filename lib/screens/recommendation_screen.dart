import 'package:flutter/material.dart';
import '../models/career_track.dart';
import 'roadmap_screen.dart';

/// Recommendation screen showing the suggested career path.
///
/// Displays the career track details, including why it was recommended,
/// subject requirements, and a button to view the detailed roadmap.
class RecommendationScreen extends StatelessWidget {
  final String userName;
  final CareerTrack track;

  const RecommendationScreen({
    super.key,
    required this.userName,
    required this.track,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Analysis Complete",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                track.name,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E88E5),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                track.whyRecommended,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.orange.shade50,
                child: Text(
                  "Subjects: ${track.subjectCombo}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MainRoadmapScreen(userName: userName, track: track),
                      ),
                    );
                  },
                  child: const Text("View Roadmap"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
