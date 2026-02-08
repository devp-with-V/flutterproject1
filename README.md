# 🎓 Epics - Mera Bhavishya

> A career exploration platform designed for Class 9-10 students to discover their ideal career path through interactive guidance.

[![Flutter Version](https://img.shields.io/badge/Flutter-3.8.1-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-3.8.1-blue.svg)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 📖 Overview

**Epics** (also known as "Mera Bhavishya" - My Future) is a Flutter-based career guidance application specifically designed for students in rural India. It helps Class 9-10 students navigate the critical decision of choosing their academic stream by providing:

- **Interactive Career Questionnaire**: A decision-tree based system that identifies student interests
- **Personalized Recommendations**: Tailored career track suggestions based on responses
- **Structured Roadmaps**: Step-by-step guidance for each career path
- **Official Resources**: Links to entrance exams, institutions, and relevant portals

### 🎯 Mission
To democratize career guidance in rural India where access to professional counselors is limited, helping students make informed decisions about their future.

---

## ✨ Features

### Current Features (MVP)
- ✅ **OTP-based Authentication** - Secure login with mobile verification
- ✅ **Dynamic Questionnaire** - Intelligent branching logic for career discovery
- ✅ **7 Career Tracks** - Medical, Pharmacy, Engineering, Mathematics, Research, Commerce, Arts
- ✅ **Career Recommendations** - Personalized suggestions with detailed explanations
- ✅ **Roadmap System** - Task-based learning paths for each track
- ✅ **Official Links** - Direct access to exam portals (NEET, JEE, UPSC, etc.)

### 🚧 Upcoming Features
- [ ] Rich UI with animations and visual polish
- [ ] Task completion tracking with progress dashboard
- [ ] Local data persistence
- [ ] Profile management
- [ ] Multilingual support (Hindi, Tamil, Telugu)
- [ ] Advanced roadmaps with 15-20 tasks per track
- [ ] Backend integration for real OTP and analytics
- [ ] Mentor connection system

---

## 🏗️ Project Structure

```
epics/
├── lib/
│   └── main.dart              # Main application entry (monolithic - to be refactored)
├── android/                   # Android platform code
├── ios/                       # iOS platform code
├── web/                       # Web platform code
├── windows/                   # Windows platform code
├── linux/                     # Linux platform code
├── macos/                     # macOS platform code
├── test/                      # Unit and widget tests
├── pubspec.yaml               # Project dependencies
├── analysis_options.yaml      # Dart linter configuration
└── README.md                  # This file
```

### 📁 Planned Architecture (Post-Refactor)
```
lib/
├── main.dart
├── models/                    # Data models
│   ├── career_track.dart
│   ├── roadmap_task.dart
│   ├── quiz_question.dart
│   └── user.dart
├── screens/                   # UI screens
│   ├── auth_screen.dart
│   ├── questionnaire_screen.dart
│   ├── recommendation_screen.dart
│   ├── roadmap_screen.dart
│   └── profile_screen.dart
├── widgets/                   # Reusable widgets
│   ├── career_card.dart
│   ├── task_tile.dart
│   └── progress_indicator.dart
├── providers/                 # State management
│   ├── auth_provider.dart
│   ├── quiz_provider.dart
│   └── roadmap_provider.dart
├── services/                  # Business logic
│   ├── auth_service.dart
│   └── storage_service.dart
└── utils/                     # Constants and helpers
    ├── constants.dart
    ├── theme.dart
    └── quiz_data.dart
```

---

## 🚀 Getting Started

### Prerequisites
- **Flutter SDK**: `>=3.8.1`
- **Dart SDK**: `>=3.8.1`
- **Android Studio** / **VS Code** with Flutter extensions
- **Git** for version control

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/epics.git
   cd epics
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Verify Flutter installation**
   ```bash
   flutter doctor
   ```

4. **Run the app**
   ```bash
   # For development
   flutter run

   # For specific platform
   flutter run -d chrome      # Web
   flutter run -d windows     # Windows
   flutter run -d android     # Android (requires emulator/device)
   ```

### 🧪 Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart
```

---

## 🎨 UI/UX Flow

### User Journey
```
1. Authentication Screen
   ├─ Enter Name & Mobile Number
   ├─ Request OTP
   ├─ Enter OTP (Mock: 1234)
   └─ Verify & Login
   
2. Career Questionnaire (2-3 questions)
   ├─ Q1: Science / Commerce / Arts
   ├─ Q2: Biology vs Math (if Science)
   └─ Q3: Specialization based on previous answers
   
3. Recommendation Screen
   ├─ Display recommended career track
   ├─ Show subject requirements (PCM/PCB/Commerce/Arts)
   ├─ Explain why this path suits them
   └─ View Roadmap button
   
4. Roadmap Screen
   ├─ List of tasks with durations
   ├─ Resources and materials needed
   ├─ Official exam links
   └─ Task completion checkboxes (coming soon)
```

### 📊 Decision Tree Logic
```
START
├─ Science
│  ├─ Biology
│  │  ├─ Want to treat patients? → Medical (MBBS)
│  │  └─ Prefer labs/chemistry? → Pharmacy
│  └─ Maths
│     ├─ Building things → Engineering
│     ├─ Pure logic → Mathematics
│     └─ Research → Research & Education
├─ Commerce → Commerce & Finance
└─ Arts → Arts & Humanities
```

---

## 🎯 Career Tracks Available

| Track | Tag Line | Best For | Stream Required |
|-------|----------|----------|-----------------|
| 🩺 **Medical (MBBS)** | The Healer | Aspiring Doctors | PCB |
| 💊 **Pharmacy** | Medicine Maker | Lab/Chemistry lovers | PCB/PCM |
| ⚙️ **Engineering** | The Builder | Tech & Coding | PCM |
| 🧮 **Mathematics** | Problem Solver | Data Science, Stats | PCM |
| 🔬 **Research** | The Scientist | Professors, PhDs | PCM/PCB |
| 💼 **Commerce** | Money Manager | CA, Finance | Commerce |
| ⚖️ **Arts** | Social Leader | UPSC, Law, Media | Arts/Humanities |

---

## 👥 Contributing

We welcome contributions from developers, designers, and educators! This is a **group project** designed for collaborative learning.

### 🔀 Git Workflow

We follow the **Feature Branch Workflow**:

1. **Main Branch** (`main`) - Production-ready code
2. **Development Branch** (`develop`) - Integration branch
3. **Feature Branches** (`feature/your-feature-name`) - Individual features
4. **Bugfix Branches** (`bugfix/issue-description`) - Bug fixes

### 📝 Pull Request Process

1. **Fork the repository** and create your branch from `develop`
   ```bash
   git checkout develop
   git checkout -b feature/amazing-feature
   ```

2. **Make your changes** following our coding standards
   - Write clean, documented code
   - Follow Dart style guide
   - Add tests for new features
   - Update documentation if needed

3. **Commit your changes** with clear messages
   ```bash
   git commit -m "feat: add user profile screen"
   ```
   
   **Commit Message Format:**
   - `feat:` - New feature
   - `fix:` - Bug fix
   - `docs:` - Documentation changes
   - `style:` - Code formatting (no logic change)
   - `refactor:` - Code restructuring
   - `test:` - Adding tests
   - `chore:` - Maintenance tasks

4. **Push to your fork**
   ```bash
   git push origin feature/amazing-feature
   ```

5. **Open a Pull Request** to `develop` branch
   - Use the PR template (coming soon)
   - Describe your changes clearly
   - Reference any related issues
   - Add screenshots for UI changes
   - Ensure CI checks pass

### ✅ PR Review Checklist
- [ ] Code follows project structure and style guide
- [ ] All tests pass (`flutter test`)
- [ ] No linter warnings (`flutter analyze`)
- [ ] Documentation updated if needed
- [ ] UI changes include screenshots
- [ ] No merge conflicts with `develop`
- [ ] Reviewed by at least one team member

### 📋 Coding Standards

- **Formatting**: Run `dart format .` before committing
- **Linting**: Ensure `flutter analyze` shows no warnings
- **Naming Conventions**:
  - Classes: `PascalCase`
  - Variables/Functions: `camelCase`
  - Constants: `UPPER_SNAKE_CASE`
  - Files: `snake_case.dart`
- **Comments**: Document complex logic and public APIs
- **Widget Organization**: Keep widgets under 300 lines

---

## 🏷️ Issue Labels

When creating issues, use these labels:

- `bug` - Something isn't working
- `enhancement` - New feature request
- `documentation` - Documentation improvements
- `good first issue` - Beginner-friendly tasks
- `help wanted` - Need assistance
- `UI/UX` - Design-related
- `backend` - Server/API work
- `refactor` - Code cleanup

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| **Framework** | Flutter 3.8.1 |
| **Language** | Dart 3.8.1 |
| **UI Design** | Material Design 3 |
| **State Management** | StatefulWidget (Planned: Provider/Riverpod) |
| **Storage** | None yet (Planned: SQLite/SharedPreferences) |
| **Authentication** | Mock OTP (Planned: Firebase Auth/Custom Backend) |
| **Testing** | flutter_test |
| **Linting** | flutter_lints 5.0.0 |

---

## 📚 Resources & References

### Entrance Exams
- [NEET](https://neet.nta.nic.in) - Medical entrance exam
- [JEE Main](https://jeemain.nta.ac.in) - Engineering entrance
- [CLAT](https://consortiumofnlus.ac.in) - Law entrance
- [UPSC](https://upsc.gov.in) - Civil services
- [IISER Admissions](https://iiseradmission.in) - Research institutes

### Learning Resources
- [Flutter Documentation](https://docs.flutter.dev)
- [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- [Material Design 3](https://m3.material.io)

---

## 📅 Development Roadmap

### Phase 1: Foundation (Current)
- [x] Core app structure
- [x] Authentication flow
- [x] Questionnaire logic
- [x] Basic roadmap display
- [/] Project documentation

### Phase 2: UI/UX Enhancement (Next)
- [ ] Modern design implementation
- [ ] Animations and transitions
- [ ] Custom themes and fonts
- [ ] Image assets for career tracks
- [ ] Progress indicators

### Phase 3: Functionality
- [ ] Code refactoring (modular structure)
- [ ] State management implementation
- [ ] Local data persistence
- [ ] Task completion tracking
- [ ] Profile management

### Phase 4: Content Expansion
- [ ] Detailed roadmaps (15-20 tasks each)
- [ ] Career descriptions with salary info
- [ ] College/university database
- [ ] Success stories and testimonials

### Phase 5: Advanced Features
- [ ] Backend API integration
- [ ] Real OTP authentication
- [ ] Multilingual support
- [ ] Push notifications
- [ ] Analytics dashboard
- [ ] Mentor connection system

---

## 🤝 Team Collaboration

### Communication
- **GitHub Issues**: For bugs and feature requests
- **Pull Requests**: For code reviews and discussions
- **Discussions**: For ideas and Q&A (enable in repo settings)

### Best Practices
- Comment your code for complex logic
- Write descriptive commit messages
- Keep PRs focused and small (< 400 lines)
- Respond to review comments within 48 hours
- Be respectful and constructive in reviews
- Test your changes before submitting PR

---

## 🐛 Known Issues

- OTP verification is currently mocked (accepts any 4-digit code)
- Task completion checkboxes are visual only (no persistence)
- All code is in a single file (refactoring needed)
- No actual backend integration
- Limited roadmap content (2-3 tasks per track)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Contributors

<!-- Add contributors here as the project grows -->
This is an open-source educational project. Contributions are welcome!

---

## 📧 Contact & Support

For questions, suggestions, or collaboration:
- Create an issue on GitHub
- Email: [your-email@example.com]
- Join our discussions (coming soon)

---

## 🙏 Acknowledgments

- Designed for students in rural India
- Inspired by the need for accessible career guidance
- Built with Flutter's cross-platform capabilities

---

**Made with ❤️ for students discovering their future**
