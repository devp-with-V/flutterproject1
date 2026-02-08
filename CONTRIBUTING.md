# Contributing to Epics - Mera Bhavishya

First off, thank you for considering contributing to Epics! It's people like you that make this project a great tool for students discovering their career paths.

## 🌟 Ways to Contribute

- 🐛 **Report bugs** - Help us identify issues
- ✨ **Suggest features** - Share your ideas
- 📝 **Improve documentation** - Make it clearer
- 🎨 **Design UI/UX** - Enhance the visual experience
- 💻 **Write code** - Implement features and fixes
- 🧪 **Write tests** - Improve code quality
- 📚 **Add content** - Expand career roadmaps

---

## 🚀 Getting Started

### Prerequisites

1. **Install Flutter**: Follow [official guide](https://docs.flutter.dev/get-started/install)
2. **Setup Git**: [Installation guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
3. **Code Editor**: VS Code or Android Studio with Flutter extensions

### Fork and Clone

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/epics.git
   cd epics
   ```

3. Add upstream remote:
   ```bash
   git remote add upstream https://github.com/ORIGINAL-OWNER/epics.git
   ```

4. Install dependencies:
   ```bash
   flutter pub get
   ```

5. Verify installation:
   ```bash
   flutter doctor
   flutter test
   ```

---

## 🔀 Git Workflow

We use the **Feature Branch Workflow**:

### Branch Structure

```
main          → Production releases (protected)
  ↓
develop       → Integration branch (default for PRs)
  ↓
feature/*     → New features
bugfix/*      → Bug fixes
hotfix/*      → Critical production fixes
docs/*        → Documentation updates
refactor/*    → Code refactoring
```

### Step-by-Step Workflow

#### 1️⃣ **Sync with Upstream**
Always start with the latest code:
```bash
git checkout develop
git fetch upstream
git merge upstream/develop
git push origin develop
```

#### 2️⃣ **Create a Feature Branch**
```bash
# For new features
git checkout -b feature/add-profile-screen

# For bug fixes
git checkout -b bugfix/fix-otp-validation

# For documentation
git checkout -b docs/update-readme
```

**Branch Naming Convention:**
- `feature/short-description` - New features
- `bugfix/issue-number-description` - Bug fixes
- `hotfix/critical-issue` - Production hotfixes
- `docs/what-you-changed` - Documentation
- `refactor/component-name` - Code refactoring
- `test/component-name` - Adding tests

#### 3️⃣ **Make Your Changes**

Follow our [coding standards](#-coding-standards) and:
- Write clean, readable code
- Add comments for complex logic
- Write tests for new features
- Update documentation if needed

#### 4️⃣ **Commit Your Changes**

Use clear, descriptive commit messages following the **Conventional Commits** format:

```bash
git add .
git commit -m "feat: add user profile screen with edit functionality"
```

**Commit Message Format:**
```
<type>(<scope>): <subject>

<body> (optional)

<footer> (optional)
```

**Types:**
- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation only
- `style` - Code style changes (formatting, no logic change)
- `refactor` - Code refactoring
- `test` - Adding or updating tests
- `chore` - Maintenance tasks (dependencies, build scripts)
- `perf` - Performance improvements
- `ci` - CI/CD changes

**Examples:**
```bash
git commit -m "feat: add task completion tracking"
git commit -m "fix: resolve OTP validation error on iOS"
git commit -m "docs: update README with setup instructions"
git commit -m "refactor: split main.dart into modular components"
git commit -m "test: add unit tests for CareerTrack model"
git commit -m "style: format code with dart format"
```

**Commit Best Practices:**
- Use present tense ("add feature" not "added feature")
- Use imperative mood ("move cursor to..." not "moves cursor to...")
- First line should be 50 characters or less
- Reference issues and PRs when relevant: `fix: resolve auth bug (#123)`
- Make atomic commits (one logical change per commit)

#### 5️⃣ **Keep Your Branch Updated**

Regularly sync with `develop`:
```bash
git fetch upstream
git rebase upstream/develop
```

If conflicts occur:
```bash
# Resolve conflicts in your editor
git add .
git rebase --continue
```

#### 6️⃣ **Push Your Changes**

```bash
git push origin feature/your-feature-name

# If you rebased, force push carefully
git push origin feature/your-feature-name --force-with-lease
```

#### 7️⃣ **Open a Pull Request**

1. Go to GitHub and create a PR from your branch to `develop`
2. Fill out the PR template (see below)
3. Link related issues using keywords: `Fixes #123` or `Closes #456`
4. Add relevant labels
5. Request reviewers
6. Wait for CI checks to pass

---

## 📋 Pull Request Template

When opening a PR, use this template:

```markdown
## 🎯 Description
Brief description of what this PR does.

## 🔗 Related Issues
Fixes #123
Related to #456

## 📝 Changes Made
- Added user profile screen
- Implemented edit profile functionality
- Created ProfileProvider for state management
- Added unit tests for profile logic

## 🎨 UI Changes (if applicable)
<!-- Add screenshots or GIFs -->
**Before:**
![before](url)

**After:**
![after](url)

## ✅ Checklist
- [ ] Code follows project style guidelines
- [ ] Self-reviewed my code
- [ ] Commented complex logic
- [ ] Updated documentation
- [ ] Added tests (if applicable)
- [ ] All tests pass locally
- [ ] No linter warnings (`flutter analyze`)
- [ ] Formatted code (`dart format .`)
- [ ] UI tested on Android/iOS/Web (mention tested platforms)

## 🧪 Testing
Describe how you tested your changes:
- Manual testing on Android emulator
- Unit tests added for ProfileProvider
- Widget tests for ProfileScreen

## 📸 Screenshots
<!-- For UI changes, add before/after screenshots -->

## 💬 Additional Notes
Any other information for reviewers.
```

---

## 🔍 Code Review Process

### For Contributors

1. **Respond to feedback** within 48 hours
2. **Make requested changes** in new commits (don't force push during review)
3. **Mark conversations as resolved** after addressing feedback
4. **Notify reviewers** when ready for re-review
5. **Squash commits** before final merge (if requested)

### For Reviewers

1. **Be respectful and constructive**
2. **Explain your suggestions** with reasoning
3. **Distinguish between** blocking issues vs. nitpicks
4. **Approve PR** when satisfied
5. **Test changes locally** for significant PRs

**Review Checklist:**
- [ ] Code is clear and maintainable
- [ ] Follows project architecture
- [ ] No unnecessary complexity
- [ ] Edge cases handled
- [ ] Tests are adequate
- [ ] Documentation updated
- [ ] No performance issues
- [ ] UI is responsive (if applicable)

---

## 📐 Coding Standards

### Dart Style Guide

Follow the [official Dart style guide](https://dart.dev/guides/language/effective-dart/style).

### Formatting

**Before committing, always format:**
```bash
dart format .
```

**Run linter:**
```bash
flutter analyze
```

**Fix auto-fixable issues:**
```bash
dart fix --apply
```

### Naming Conventions

```dart
// Classes and Enums: PascalCase
class CareerTrack { }
enum UserRole { }

// Variables, functions, parameters: camelCase
String userName;
void getUserProfile() { }

// Constants: UPPER_SNAKE_CASE or lowerCamelCase for compile-time constants
const int MAX_RETRIES = 3;
const String apiUrl = 'https://api.example.com';

// Private members: prefix with underscore
String _privateVariable;
void _privateMethod() { }

// Files: snake_case
career_track.dart
auth_screen.dart
```

### File Organization

```dart
// 1. Imports (grouped and sorted)
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/career_track.dart';
import '../widgets/custom_button.dart';

// 2. Class definition
class MyWidget extends StatelessWidget {
  // 3. Fields (public, then private)
  final String title;
  final _controller = TextEditingController();
  
  // 4. Constructor
  const MyWidget({required this.title, Key? key}) : super(key: key);
  
  // 5. Override methods
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  // 6. Public methods
  void publicMethod() { }
  
  // 7. Private methods
  void _privateMethod() { }
}
```

### Widget Guidelines

1. **Keep widgets small** (under 300 lines)
2. **Extract reusable widgets** into separate files
3. **Use const constructors** when possible
4. **Prefer StatelessWidget** unless state is needed
5. **Extract build methods** for complex UI

```dart
// ❌ Bad: Large, nested widget
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Container(
          // 50 lines of nested widgets...
        ),
      ],
    ),
  );
}

// ✅ Good: Extracted widgets
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        _buildHeader(),
        _buildContent(),
        _buildFooter(),
      ],
    ),
  );
}

Widget _buildHeader() {
  return const CustomHeader();
}
```

### Comments and Documentation

```dart
/// Represents a career track with associated tasks and links.
///
/// Each track includes tasks that guide students through their
/// chosen career path, along with official exam links.
class CareerTrack {
  /// The unique identifier for this career track.
  final String id;
  
  /// Creates a new [CareerTrack] instance.
  ///
  /// The [id] and [name] parameters are required.
  CareerTrack({required this.id, required this.name});
  
  // Complex logic deserves inline comments
  void processRoadmap() {
    // Calculate completion percentage based on completed tasks
    final percentage = _calculateCompletion();
    
    // Update UI only if percentage has changed
    if (percentage != _lastPercentage) {
      notifyListeners();
    }
  }
}
```

### Error Handling

```dart
// ✅ Good: Proper error handling
Future<User?> fetchUser(String id) async {
  try {
    final response = await api.getUser(id);
    return User.fromJson(response);
  } on NetworkException catch (e) {
    logger.error('Network error: $e');
    return null;
  } catch (e) {
    logger.error('Unexpected error: $e');
    rethrow;
  }
}
```

---

## 🧪 Testing Guidelines

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/models/career_track_test.dart

# Run with coverage
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

### Writing Tests

```dart
// Unit Test Example
import 'package:flutter_test/flutter_test.dart';
import 'package:epics/models/career_track.dart';

void main() {
  group('CareerTrack', () {
    test('should create a valid career track', () {
      final track = CareerTrack(
        id: 'eng',
        name: 'Engineering',
        tasks: [],
        links: [],
      );
      
      expect(track.id, 'eng');
      expect(track.name, 'Engineering');
    });
  });
}
```

```dart
// Widget Test Example
import 'package:flutter_test/flutter_test.dart';
import 'package:epics/screens/auth_screen.dart';

void main() {
  testWidgets('AuthScreen displays OTP field after sending OTP', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AuthScreen()));
    
    // Initially, OTP field should not be visible
    expect(find.text('Enter OTP'), findsNothing);
    
    // Fill form and send OTP
    await tester.enterText(find.byType(TextField).first, 'John Doe');
    await tester.enterText(find.byType(TextField).at(1), '9876543210');
    await tester.tap(find.text('Get OTP'));
    await tester.pump();
    
    // OTP field should now be visible
    expect(find.text('Enter OTP'), findsOneWidget);
  });
}
```

---

## 🎨 UI/UX Contribution Guidelines

### Design Principles

1. **Simplicity** - Clean, uncluttered interfaces
2. **Accessibility** - Text size, contrast, screen readers
3. **Consistency** - Reuse components and patterns
4. **Responsiveness** - Works on all screen sizes
5. **Performance** - Smooth animations, fast loading

### Adding UI Changes

When contributing UI:
1. Follow Material Design 3 guidelines
2. Ensure responsive design (test on multiple screen sizes)
3. Add screenshots to PR
4. Test on Android, iOS, and Web
5. Check accessibility (font scaling, color contrast)
6. Add animations thoughtfully (don't overdo)

### Assets

- **Images**: Use WebP or PNG, optimize size
- **Icons**: Prefer Material Icons, or add custom SVGs
- **Fonts**: Add to `pubspec.yaml` and document usage

---

## 📚 Adding Content

### Expanding Career Roadmaps

To add more tasks to a career track:

1. Edit the relevant function in `lib/main.dart` (will move to `lib/utils/quiz_data.dart`)
2. Follow this format:

```dart
RoadmapTask(
  title: 'Clear, action-oriented title',
  description: 'Detailed explanation of what to do',
  resources: 'Specific books/websites/courses',
  duration: 'Realistic timeframe',
  isCompleted: false,
)
```

3. Maintain consistency in tone (encouraging, practical)
4. Include official resources where possible
5. Order tasks logically (foundational → advanced)

---

## 🐛 Reporting Bugs

### Before Reporting

1. **Search existing issues** to avoid duplicates
2. **Test on latest version** from `develop` branch
3. **Isolate the issue** - minimal reproduction steps

### Bug Report Template

```markdown
**Describe the bug**
A clear description of what the bug is.

**To Reproduce**
Steps to reproduce:
1. Go to '...'
2. Click on '....'
3. See error

**Expected behavior**
What you expected to happen.

**Screenshots**
If applicable, add screenshots.

**Environment:**
 - OS: [e.g., Windows 11, macOS 14]
 - Flutter version: [run `flutter --version`]
 - Device: [e.g., Android Emulator, iPhone 15]

**Additional context**
Any other relevant information.
```

---

## 💡 Suggesting Features

### Feature Request Template

```markdown
**Problem Statement**
What problem does this solve?

**Proposed Solution**
Describe your suggested solution.

**Alternatives Considered**
Other approaches you've thought about.

**Additional Context**
Mockups, examples, or references.
```

---

## 📞 Getting Help

- **GitHub Issues**: For bugs and features
- **Discussions**: For questions and ideas (coming soon)
- **Code Review**: Tag maintainers in PRs

---

## 🏆 Recognition

Contributors will be:
- Listed in README Contributors section
- Mentioned in release notes
- Credited in commits

---

## 📜 Code of Conduct

- **Be respectful** and inclusive
- **Be patient** with beginners
- **Be constructive** in criticism
- **Be collaborative** in problem-solving
- **Be professional** in all interactions

Zero tolerance for:
- Harassment or discrimination
- Trolling or insulting comments
- Publishing private information
- Unprofessional conduct

---

## ✅ Final Checklist Before Submitting PR

- [ ] Code is clean and well-documented
- [ ] Follows Dart style guide
- [ ] `flutter analyze` shows no warnings
- [ ] `dart format .` applied
- [ ] `flutter test` passes
- [ ] Tested on at least one platform
- [ ] Screenshots added for UI changes
- [ ] Documentation updated
- [ ] Commit messages follow convention
- [ ] PR description is clear
- [ ] Linked related issues

---

**Thank you for contributing to Epics! Together, we're helping students discover their future. 🚀**
