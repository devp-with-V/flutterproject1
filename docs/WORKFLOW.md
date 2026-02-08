# 📋 Epics - Project Workflow & Task Management

This document defines how the team collaborates, manages tasks, and delivers features for the Epics project.

---

## 🎯 Team Structure

### Roles (Flexible - team members can wear multiple hats)

- **Project Lead**: Oversees progress, makes final decisions on architecture
- **Frontend Developers**: Implement UI/UX designs
- **Backend Developers**: API integration, database (future)
- **UI/UX Designers**: Create mockups, design system
- **Content Writers**: Career roadmap content, help text
- **QA/Testers**: Test features, report bugs
- **Documentation**: Maintain docs, write guides

---

## 🔄 Development Workflow

### Overview

```
Issue Created → Assigned → Branch → Code → PR → Review → Merge → Deploy
```

### Detailed Steps

#### 1. **Planning Phase**

**Weekly Planning Meeting:**
- Review project roadmap
- Prioritize issues
- Assign tasks to team members
- Set sprint goals (1-2 weeks)

**Creating Issues:**
1. Check if similar issue exists
2. Use appropriate template (bug/feature/UI-UX)
3. Add clear title with prefix: `[BUG]`, `[FEATURE]`, `[UI/UX]`
4. Fill all template sections
5. Add labels: `bug`, `enhancement`, `good first issue`, etc.
6. Add to project board (if using GitHub Projects)
7. Assign to team member or leave for claiming

**Example Issue:**
```
Title: [FEATURE] Add task completion toggle in roadmap screen
Labels: enhancement, UI/UX, good first issue
Assignee: @username
Project: Sprint 1
```

#### 2. **Development Phase**

**Claiming an Issue:**
```bash
# Comment on issue: "I'll work on this"
# Wait for assignment confirmation from maintainer
```

**Setting Up Branch:**
```bash
# Always start from develop
git checkout develop
git pull origin develop

# Create feature branch
git checkout -b feature/task-completion-toggle

# Start coding!
```

**Development Best Practices:**
- Commit frequently with clear messages
- Run `flutter analyze` regularly
- Test on emulator/device frequently
- Keep PR size manageable (< 400 lines if possible)
- Update documentation as you code

**Daily Standup (Async):**
Post in team chat:
- What I did yesterday
- What I'm doing today
- Any blockers

#### 3. **Code Review Phase**

**Before Creating PR:**
```bash
# Ensure all tests pass
flutter test

# Format code
dart format .

# Check for issues
flutter analyze

# Commit and push
git push origin feature/task-completion-toggle
```

**Creating PR:**
1. Go to GitHub
2. Create PR from your branch to `develop`
3. Fill PR template completely
4. Add screenshots for UI changes
5. Link related issue: `Closes #123`
6. Request 1-2 reviewers
7. Add labels matching issue labels

**PR Review Process:**

**For Author:**
- Respond to comments within 48 hours
- Make changes in separate commits during review
- Mark conversations as resolved after addressing
- Tag reviewers when ready for re-review

**For Reviewers:**
- Review within 24-48 hours
- Be constructive and specific
- Test locally for major changes
- Approve when satisfied or request changes

**Review Checklist:**
```markdown
- [ ] Code is clean and well-documented
- [ ] Follows coding standards
- [ ] No linter warnings
- [ ] Tests pass
- [ ] UI matches design (if applicable)
- [ ] No breaking changes (or documented)
- [ ] Performance is acceptable
```

#### 4. **Merge & Deploy**

**Merging:**
- Only project leads/maintainers merge PRs
- Squash commits if needed for clean history
- Delete branch after merge
- Close related issues with comment

**Post-Merge:**
- Update project board status
- Notify team in group chat
- Test on `develop` branch
- Plan for next issue

---

## 📊 Project Board Management

We use **GitHub Projects** (Kanban board):

### Columns

1. **📥 Backlog** - All unstarted issues
2. **📋 To Do** - Prioritized for current sprint
3. **🏗️ In Progress** - Actively being worked on
4. **👀 In Review** - PR submitted, awaiting review
5. **✅ Done** - Merged and completed
6. **❌ Blocked** - Waiting on external dependency

### Moving Cards

- **Backlog → To Do**: During planning meeting
- **To Do → In Progress**: When starting work (self-move)
- **In Progress → In Review**: When PR is created (self-move)
- **In Review → In Progress**: If changes requested (self-move)
- **In Review → Done**: When PR is merged (auto or maintainer)
- **Any → Blocked**: When stuck (comment explaining blocker)

---

## 🏷️ Labeling System

### Priority Labels
- `priority: critical` - Fixes crashes, security issues
- `priority: high` - Important features, major bugs
- `priority: medium` - Nice to have features
- `priority: low` - Future enhancements

### Type Labels
- `bug` - Something broken
- `enhancement` - New feature
- `documentation` - Docs improvement
- `UI/UX` - Design work
- `refactor` - Code cleanup
- `test` - Adding tests

### Status Labels
- `good first issue` - Beginner friendly
- `help wanted` - Need assistance
- `blocked` - Waiting on dependency
- `wontfix` - Decided not to implement
- `duplicate` - Already exists

### Area Labels
- `area: auth` - Authentication
- `area: questionnaire` - Quiz logic
- `area: roadmap` - Career roadmap
- `area: profile` - User profile
- `area: backend` - Server/API

---

## 🎨 UI/UX Workflow

### Design Process

1. **Research & Ideation**
   - Review current UI
   - Gather inspiration
   - Sketch wireframes

2. **Mockup Creation**
   - Create high-fidelity mockups in Figma
   - Follow design guide
   - Share with team for feedback

3. **Approval**
   - Get sign-off from project lead
   - Update UI/UX guide if adding new patterns

4. **Implementation**
   - Create issue with mockup attached
   - Assign to frontend developer
   - Review implemented UI against mockup

5. **Iteration**
   - Gather user feedback
   - Make refinements
   - Document learnings

### Design Handoff Checklist

When handing off designs to developers:
- [ ] Mockup in Figma/image attached to issue
- [ ] All colors specified (hex codes)
- [ ] Typography specified (font, size, weight)
- [ ] Spacing measurements provided
- [ ] Interactive states shown (hover, pressed, disabled)
- [ ] Responsive behavior noted
- [ ] Animation descriptions (if any)
- [ ] Assets exported and added to repo

---

## 📝 Documentation Workflow

### When to Update Docs

- **README**: When adding major features, changing setup
- **CONTRIBUTING**: When changing workflow or standards
- **UI/UX Guide**: When adding new components or patterns
- **Code Comments**: For complex logic, public APIs
- **Wiki** (future): Tutorials, architecture explanations

### Documentation Standards

- Write in clear, simple language
- Include code examples where helpful
- Keep docs in sync with code
- Update in same PR as code changes

---

## 🧪 Testing Workflow

### Test Pyramid

```
     /\
    /  \  Few: Integration Tests
   /____\
  /      \  More: Widget Tests
 /________\
/          \ Most: Unit Tests
```

### Testing Checklist

Every PR should include:
- [ ] Unit tests for new models/logic
- [ ] Widget tests for new UI components
- [ ] Manual testing on at least one platform

### Manual Testing

Before submitting PR:
1. Test happy path (normal flow)
2. Test edge cases (empty states, errors)
3. Test on different screen sizes
4. Test with slow network (if applicable)
5. Test accessibility (screen reader, font scaling)

---

## 🚀 Release Process

### Versioning

We use **Semantic Versioning** (MAJOR.MINOR.PATCH):
- `1.0.0` - First stable release
- `1.1.0` - New features (minor)
- `1.0.1` - Bug fixes (patch)
- `2.0.0` - Breaking changes (major)

### Release Cycle

1. **Feature Freeze**: 3 days before release
   - No new features merged
   - Only bug fixes allowed

2. **Testing Phase**: 2 days
   - Thorough testing on all platforms
   - Fix critical bugs

3. **Release Day**:
   - Merge `develop` → `main`
   - Tag release: `git tag v1.0.0`
   - Create GitHub Release with changelog
   - Build and publish (Play Store, App Store, etc.)

4. **Post-Release**:
   - Monitor for critical bugs
   - Plan next sprint

### Changelog Format

```markdown
# v1.1.0 - 2026-02-15

## 🎉 New Features
- Added task completion tracking (#45)
- Implemented user profile screen (#52)

## 🐛 Bug Fixes
- Fixed OTP validation error on iOS (#48)
- Resolved UI overflow on small screens (#51)

## 📝 Documentation
- Updated README with new features
- Added UI/UX design guide

## 🔧 Internal
- Refactored main.dart into modular structure (#50)
- Added unit tests for CareerTrack model (#53)
```

---

## 🤝 Communication Channels

### Where to Discuss What

| Topic | Channel |
|-------|---------|
| Bug reports | GitHub Issues |
| Feature requests | GitHub Issues |
| Code review | PR comments |
| Questions | GitHub Discussions / Team chat |
| Urgent blockers | Team chat (tag @all) |
| Planning | Weekly meeting / Planning docs |
| Design mockups | Figma comments / Team chat |

### Communication Best Practices

- **Be respectful** - Assume good intentions
- **Be clear** - Provide context and examples
- **Be responsive** - Reply within 24-48 hours
- **Be inclusive** - Tag relevant people
- **Be async-first** - Don't assume everyone is online

---

## 📅 Sprint Schedule (Example 2-week sprint)

### Week 1
- **Monday**: Sprint planning (1 hour)
  - Review last sprint
  - Plan this sprint
  - Assign issues
- **Tuesday-Friday**: Development
  - Daily async standup
  - Code, review, merge

### Week 2
- **Monday-Wednesday**: Development continues
- **Thursday**: Feature freeze
  - Focus on testing
  - Fix bugs
- **Friday**: Sprint review & retrospective
  - Demo completed features
  - Discuss what went well/poorly
  - Plan improvements

---

## 🎯 Definition of Done

A task is "done" when:
- [ ] Code is written and follows standards
- [ ] Tests are written and passing
- [ ] Code is reviewed and approved
- [ ] Documentation is updated
- [ ] PR is merged to `develop`
- [ ] Issue is closed
- [ ] Feature is tested on at least one platform

---

## 🚨 Handling Hotfixes

For critical production bugs:

1. **Create hotfix branch** from `main`:
   ```bash
   git checkout main
   git checkout -b hotfix/critical-auth-bug
   ```

2. **Fix quickly** with minimal changes

3. **Test thoroughly**

4. **Create PR** to both `main` and `develop`

5. **Fast-track review** (within hours)

6. **Deploy immediately** after merge

7. **Increment patch version** (e.g., 1.0.0 → 1.0.1)

---

## 📊 Metrics We Track

To improve our process:
- **Cycle time**: Issue created → PR merged
- **PR review time**: PR opened → Approved
- **Bug rate**: Bugs per feature
- **Test coverage**: % of code tested
- **Velocity**: Issues completed per sprint

---

## 🎓 Onboarding New Contributors

### Steps for New Team Members

1. **Read Documentation**:
   - [ ] README.md
   - [ ] CONTRIBUTING.md
   - [ ] This WORKFLOW.md

2. **Setup Environment**:
   - [ ] Install Flutter
   - [ ] Clone repo
   - [ ] Run `flutter pub get`
   - [ ] Run `flutter test`

3. **First Contribution**:
   - [ ] Find a `good first issue`
   - [ ] Comment to claim it
   - [ ] Follow the workflow
   - [ ] Ask questions in team chat

4. **Get Familiar**:
   - [ ] Read existing code
   - [ ] Review recent PRs
   - [ ] Attend next sprint planning

---

## 📚 Resources

- **GitHub Projects**: [Link to board]
- **Figma**: [Link to design files]
- **Team Chat**: [Discord/Slack link]
- **Meeting Notes**: [Google Docs link]

---

**Remember**: This workflow is a guide, not strict rules. Adapt as the team learns what works best!

**Last Updated**: 2026-02-08  
**Version**: 1.0
