import 'package:flutter/material.dart';
import '../models/career_track.dart';

/// Enhanced roadmap screen with expandable tasks and completion tracking.
///
/// Features: Task completion checkboxes, expandable cards, progress indicator,
/// and modern UI design.
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
  /// Track which tasks are expanded
  Set<int> expandedTasks = {};
  
  /// Track favorite/bookmarked tasks
  Set<int> favoriteTasks = {};
  
  /// Search query
  String searchQuery = '';
  
  /// Show search bar
  bool showSearch = false;

  /// Calculate completion percentage
  double get completionPercentage {
    if (widget.track.tasks.isEmpty) return 0.0;
    final completed = widget.track.tasks.where((task) => task.isCompleted).length;
    return completed / widget.track.tasks.length;
  }

  /// Get completed task count
  int get completedCount {
    return widget.track.tasks.where((task) => task.isCompleted).length;
  }
  
  /// Get filtered tasks based on search query
  List<int> get filteredTaskIndices {
    if (searchQuery.isEmpty) {
      return List.generate(widget.track.tasks.length, (index) => index);
    }
    
    final List<int> indices = [];
    for (int i = 0; i < widget.track.tasks.length; i++) {
      final task = widget.track.tasks[i];
      if (task.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          task.description.toLowerCase().contains(searchQuery.toLowerCase()) ||
          task.resources.toLowerCase().contains(searchQuery.toLowerCase())) {
        indices.add(i);
      }
    }
    return indices;
  }

  /// Toggle task expanded state
  void _toggleExpanded(int index) {
    setState(() {
      if (expandedTasks.contains(index)) {
        expandedTasks.remove(index);
      } else {
        expandedTasks.add(index);
      }
    });
  }

  /// Toggle task completion
  void _toggleCompletion(int index) {
    setState(() {
      widget.track.tasks[index].isCompleted = !widget.track.tasks[index].isCompleted;
    });
  }
  
  /// Toggle favorite
  void _toggleFavorite(int index) {
    setState(() {
      if (favoriteTasks.contains(index)) {
        favoriteTasks.remove(index);
      } else {
        favoriteTasks.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final totalTasks = widget.track.tasks.length;
    final completedTasks = completedCount;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: CustomScrollView(
        slivers: [
          // Animated App Bar with Progress
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF1E88E5),
            foregroundColor: Colors.white,
            actions: [
              // Search Icon
              IconButton(
                icon: Icon(showSearch ? Icons.search_off : Icons.search),
                onPressed: () {
                  setState(() {
                    showSearch = !showSearch;
                    if (!showSearch) {
                      searchQuery = '';
                    }
                  });
                },
                tooltip: 'Search tasks',
              ),
              // Favorites Icon
              IconButton(
                icon: Icon(
                  favoriteTasks.isEmpty
                      ? Icons.bookmark_border
                      : Icons.bookmark,
                ),
                onPressed: () {
                  if (favoriteTasks.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${favoriteTasks.length} bookmarked tasks'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Tap ⭐ on tasks to bookmark!'),
                      ),
                    );
                  }
                },
                tooltip: 'Bookmarked tasks',
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.track.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1E88E5),
                      const Color(0xFF1976D2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, ${widget.userName}!',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Progress Card
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple.shade400,
                    Colors.deepPurple.shade600,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your Progress',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '$completedTasks/$totalTasks',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: completionPercentage,
                      backgroundColor: Colors.white24,
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      minHeight: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${(completionPercentage * 100).toInt()}% Complete',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Search Bar (conditional)
          if (showSearch)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search tasks...',
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey.shade600),
                      suffixIcon: searchQuery.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  searchQuery = '';
                                });
                              },
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),

          // Tasks Header
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              child: Row(
                children: [
                  const Icon(
                    Icons.checklist_rounded,
                    color: Color(0xFF1E88E5),
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Your Roadmap',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Task List
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, listIndex) {
                  // Use filtered indices for search
                  final filteredIndices = filteredTaskIndices;
                  if (listIndex >= filteredIndices.length) return null;
                  
                  final index = filteredIndices[listIndex];
                  final task = widget.track.tasks[index];
                  final isExpanded = expandedTasks.contains(index);
                  final isCompleted = task.isCompleted;
                  final isFavorite = favoriteTasks.contains(index);

                  return TweenAnimationBuilder<double>(
                    duration: Duration(milliseconds: 200 + (index * 50)),
                    tween: Tween(begin: 0.0, end: 1.0),
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: Opacity(
                          opacity: value,
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isCompleted
                              ? Colors.green.shade300
                              : Colors.grey.shade200,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: isCompleted
                                ? Colors.green.withOpacity(0.1)
                                : Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Main Task Row
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => _toggleExpanded(index),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    // Checkbox
                                    GestureDetector(
                                      onTap: () => _toggleCompletion(index),
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: isCompleted
                                              ? Colors.green.shade500
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: isCompleted
                                                ? Colors.green.shade500
                                                : Colors.grey.shade400,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: isCompleted
                                            ? const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: Colors.white,
                                              )
                                            : null,
                                      ),
                                    ),
                                    const SizedBox(width: 16),

                                    // Task Title and Duration
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            task.title,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: isCompleted
                                                  ? Colors.grey.shade500
                                                  : const Color(0xFF212121),
                                              decoration: isCompleted
                                                  ? TextDecoration.lineThrough
                                                  : null,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                size: 14,
                                                color: Colors.grey.shade600,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                task.duration,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey.shade600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Favorite Star
                                    GestureDetector(
                                      onTap: () => _toggleFavorite(index),
                                      child: Icon(
                                        isFavorite
                                            ? Icons.star
                                            : Icons.star_border,
                                        color: isFavorite
                                            ? Colors.amber
                                            : Colors.grey.shade400,
                                        size: 22,
                                      ),
                                    ),
                                    const SizedBox(width: 8),

                                    // Expand Icon
                                    Icon(
                                      isExpanded
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: const Color(0xFF1E88E5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Expanded Details
                          AnimatedCrossFade(
                            duration: const Duration(milliseconds: 200),
                            crossFadeState: isExpanded
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            firstChild: const SizedBox.shrink(),
                            secondChild: Container(
                              padding: const EdgeInsets.fromLTRB(56, 0, 16, 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Divider(height: 1),
                                  const SizedBox(height: 16),
                                  Text(
                                    task.description,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade700,
                                      height: 1.5,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.book_outlined,
                                          size: 16,
                                          color: Colors.blue.shade700,
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            'Resources: ${task.resources}',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: filteredTaskIndices.length,
              ),
            ),
          ),

          // Bottom Spacing
          const SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
        ],
      ),
    );
  }
}
