# 🚀 Quick Start Guide - Epics Team

Welcome to the Epics project! This guide will get you up and running quickly.

---

## ⚡ 5-Minute Setup

### 1. Prerequisites
```bash
# Check Flutter installation
flutter doctor

# If not installed, visit: https://docs.flutter.dev/get-started/install
```

### 2. Clone & Setup
```bash
# Clone the repository
git clone https://github.com/YOUR-USERNAME/epics.git
cd epics

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### 3. Verify Setup
```bash
# Run tests
flutter test

# Check for issues
flutter analyze
```

✅ **You're ready to contribute!**

---

## 📚 Essential Reading (15 minutes)

Read these in order:
1. **[README.md](../README.md)** - Project overview (5 min)
2. **[CONTRIBUTING.md](../CONTRIBUTING.md)** - How to contribute (7 min)
3. **[WORKFLOW.md](WORKFLOW.md)** - Team workflow (3 min)

Optional (for designers):
4. **[UI_UX_GUIDE.md](UI_UX_GUIDE.md)** - Design system

---

## 🎯 Your First Contribution (3 Steps)

### Step 1: Find an Issue
- Go to [Issues](https://github.com/YOUR-REPO/epics/issues)
- Filter by label: `good first issue`
- Read issue description
- Comment: "I'd like to work on this!"
- Wait for assignment

### Step 2: Code It
```bash
# Create branch
git checkout develop
git pull origin develop
git checkout -b feature/your-feature-name

# Make changes
# ... edit files ...

# Test
flutter test
dart format .
flutter analyze

# Commit
git add .
git commit -m "feat: add your feature"
git push origin feature/your-feature-name
```

### Step 3: Submit PR
- Go to GitHub
- Click "Compare & pull request"
- Fill in the template
- Add screenshots (if UI change)
- Link issue: `Closes #123`
- Submit!

---

## 🌳 Git Workflow Cheat Sheet

### Branch Naming
```bash
feature/short-description    # New features
bugfix/issue-123-bug-name   # Bug fixes
docs/what-changed           # Documentation
refactor/component-name     # Code cleanup
```

### Commit Messages
```bash
feat: add user profile screen           # New feature
fix: resolve OTP validation error       # Bug fix
docs: update README setup instructions  # Documentation
style: format code with dart format     # Code formatting
refactor: split main.dart into modules  # Refactoring
test: add tests for CareerTrack model   # Tests
```

### Common Commands
```bash
# Start work
git checkout develop
git pull origin develop
git checkout -b feature/my-feature

# Save work
git add .
git commit -m "feat: add feature"
git push origin feature/my-feature

# Update branch
git fetch origin
git rebase origin/develop

# If conflicts
# ... fix conflicts in editor ...
git add .
git rebase --continue
```

---

## 🎨 UI Contributors

### Before Coding
1. Check [UI_UX_GUIDE.md](UI_UX_GUIDE.md) for design system
2. Follow color palette and spacing rules
3. Test on multiple screen sizes
4. Add screenshots to PR

### Design Tools
- **Mockups**: Figma (link TBD)
- **Icons**: [Material Icons](https://fonts.google.com/icons)
- **Colors**: Use theme colors from guide

---

## 🧪 Testing Quick Reference

```bash
# Run all tests
flutter test

# Run specific test
flutter test test/models/career_track_test.dart

# With coverage
flutter test --coverage

# Manual testing platforms
flutter run -d chrome        # Web
flutter run -d windows       # Windows
flutter run -d android       # Android (needs emulator)
```

---

## ❓ Getting Help

| Question | Where to Ask |
|----------|--------------|
| "How does this code work?" | Team chat / Code comments |
| "I found a bug!" | Create GitHub Issue |
| "Can we add this feature?" | Create GitHub Issue |
| "How do I set up Flutter?" | https://docs.flutter.dev |
| "I'm stuck on my PR!" | Comment on PR / Team chat |

---

## ✅ Pre-Submission Checklist

Before creating a PR:
- [ ] Code follows style guide (check CONTRIBUTING.md)
- [ ] Ran `dart format .`
- [ ] Ran `flutter analyze` (no warnings)
- [ ] Ran `flutter test` (all pass)
- [ ] Tested on at least one platform
- [ ] Added comments for complex logic
- [ ] Updated docs if needed
- [ ] Screenshots added (for UI changes)

---

## 📋 Common Issues & Solutions

### Issue: `flutter pub get` fails
```bash
# Solution: Clear cache
flutter clean
flutter pub get
```

### Issue: Tests fail locally
```bash
# Solution: Reset to clean state
flutter clean
flutter pub get
flutter test
```

### Issue: Merge conflicts
```bash
# Solution: Rebase carefully
git fetch origin
git rebase origin/develop
# Fix conflicts in editor
git add .
git rebase --continue
```

---

## 🎯 Quick Reference Links

- **Project Board**: [Link to GitHub Projects]
- **Design Files**: [Link to Figma]
- **Team Chat**: [Discord/Slack link]
- **Documentation**: You're reading it!

---

## 💡 Tips for Success

1. **Start Small**: Pick `good first issue` labels
2. **Ask Questions**: No question is too small
3. **Read Code**: Learn by reading existing code
4. **Test Everything**: Test before submitting
5. **Be Patient**: Code review takes time
6. **Have Fun**: We're building something cool!

---

## 🎓 Learning Resources

### Flutter
- [Flutter Documentation](https://docs.flutter.dev)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

### Git
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [GitHub Flow](https://guides.github.com/introduction/flow/)

### UI/UX
- [Material Design 3](https://m3.material.io)
- [Flutter Layout Basics](https://docs.flutter.dev/ui/layout)

---

**Welcome to the team! Let's build something amazing together! 🚀**

---

_Last Updated: 2026-02-08_
