# 🎨 Epics - UI/UX Design Guidelines

This document outlines the design system and user experience guidelines for the Epics career guidance app.

---

## 🎯 Design Principles

1. **Student-Centric** - Design for 13-16 year-old students
2. **Simple & Clear** - Avoid complexity, use plain language
3. **Encouraging** - Positive, motivational tone
4. **Accessible** - Works for all students including rural areas with varying connectivity
5. **Culturally Relevant** - Aligned with Indian education system and values

---

## 🎨 Design System

### Color Palette

#### Primary Colors
```
Primary Blue:     #1E88E5 (Education, Trust)
Primary Dark:     #1565C0
Primary Light:    #42A5F5
```

#### Secondary Colors
```
Success Green:    #4CAF50 (Achievements, Completion)
Warning Orange:   #FF9800 (Attention, Important Info)
Error Red:        #F44336 (Errors, Critical)
Info Blue:        #2196F3 (Information)
```

#### Neutral Colors
```
Background:       #FFFFFF
Surface:          #F5F5F5
Surface Variant:  #E3F2FD (Light Blue Tint)
Text Primary:     #212121
Text Secondary:   #757575
Border:           #E0E0E0
```

#### Accent Colors (for Career Tracks)
```
Medical:          #E91E63 (Pink)
Engineering:      #1E88E5 (Blue)
Mathematics:      #9C27B0 (Purple)
Research:         #00BCD4 (Cyan)
Commerce:         #FF9800 (Orange)
Arts:             #4CAF50 (Green)
Pharmacy:         #3F51B5 (Indigo)
```

### Typography

**Font Family:** 
- Primary: `Roboto` (already default in Material)
- Alternative: `Poppins` (more friendly, consider for future)
- Hindi: `Noto Sans Devanagari` (for multilingual support)

**Font Scales:**
```
H1 (Page Title):        32px, Bold
H2 (Section Header):    24px, Bold
H3 (Card Title):        20px, Semi-Bold
Body Large:             16px, Regular
Body:                   14px, Regular
Caption:                12px, Regular
Button:                 14px, Semi-Bold
```

### Spacing System

Use 8px base unit:
```
xs:  4px   (0.5 unit)
sm:  8px   (1 unit)
md:  16px  (2 units)
lg:  24px  (3 units)
xl:  32px  (4 units)
xxl: 48px  (6 units)
```

### Elevation & Shadows

```dart
// Card
elevation: 2
shadowColor: Colors.black12

// Raised Button
elevation: 4

// Dialog
elevation: 8
```

### Border Radius

```
Small:   4px   (chips, badges)
Medium:  8px   (cards, buttons)
Large:   16px  (bottom sheets, dialogs)
Rounded: 24px+ (FAB, special elements)
```

---

## 📱 Screen Designs & User Flows

### 1. Authentication Screen

**Purpose:** Collect user info and verify via OTP

**Layout:**
```
┌─────────────────────┐
│   [App Icon]        │
│   RoadAhead         │
│   Your Career       │
│                     │
│   [Name Field]      │
│   [Phone Field]     │
│   [OTP Field]       │ ← Shows after "Get OTP"
│                     │
│   [Get OTP Button]  │ ← Changes to "Verify & Login"
│                     │
│   Help Text         │
└─────────────────────┘
```

**Design Improvements:**
- Add gradient background (light blue to white)
- Larger app icon with subtle animation
- Better field labels with helper text
- Visual feedback on OTP send (animation)
- Loading state during verification
- Error states with clear messages

**Implementation Notes:**
```dart
// Use custom theme
backgroundColor: LinearGradient(
  colors: [Color(0xFF1E88E5).withOpacity(0.1), Colors.white]
)

// Better input decoration
InputDecoration(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(borderRadius: 8),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primaryBlue, width: 2)
  )
)
```

---

### 2. Questionnaire Screen

**Purpose:** Guide students through career discovery questions

**Layout:**
```
┌─────────────────────┐
│ [Progress Bar]      │ ← NEW: Show 1/3, 2/3, 3/3
│ [Question Number]   │
│                     │
│ Context Tip Box     │
│                     │
│ Question Text       │
│                     │
│ ┌─────────────────┐ │
│ │ Option 1        │ │
│ │ description...  │ │
│ └─────────────────┘ │
│                     │
│ ┌─────────────────┐ │
│ │ Option 2        │ │
│ └─────────────────┘ │
│                     │
│ [Back] [Skip]       │ ← NEW: Navigation
└─────────────────────┘
```

**Design Improvements:**
- **Progress Indicator**: Linear progress bar at top
- **Back Button**: Allow users to revisit previous questions
- **Visual Options**: Add icons/images for each option
- **Animation**: Slide transition between questions
- **Context Box**: More prominent with icon
- **Better Cards**: Add hover/press effects

**Component Design:**

```dart
// Option Card
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(...), // Subtle gradient
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: selected ? primaryBlue : transparent),
    boxShadow: [/* subtle shadow */]
  ),
  child: Row(
    children: [
      Icon(optionIcon, size: 40), // Visual indicator
      Expanded(
        child: Column(
          children: [
            Text(option.text, style: heading),
            Text(option.description, style: caption),
          ]
        )
      ),
      if (selected) Icon(Icons.check_circle)
    ]
  )
)
```

---

### 3. Recommendation Screen

**Purpose:** Display personalized career track recommendation

**Layout:**
```
┌─────────────────────┐
│                     │
│  [Track Icon/Image] │ ← Large visual
│                     │
│  Medical (MBBS)     │
│  "The Healer"       │
│                     │
│  ┌───────────────┐  │
│  │ Why This Path │  │
│  │ • Point 1     │  │
│  │ • Point 2     │  │
│  └───────────────┘  │
│                     │
│  📚 Subjects: PCB   │
│                     │
│  [View Roadmap]     │
│  [Retake Quiz]      │
└─────────────────────┘
```

**Design Improvements:**
- **Hero Image**: Career-specific illustration or icon
- **Celebration**: Confetti animation on load
- **Better Layout**: Card-based info sections
- **Action Buttons**: Primary + Secondary button design
- **Share Feature**: Allow sharing recommendation
- **Stats Preview**: Show quick stats (5 years study, exam: NEET)

---

### 4. Roadmap Screen

**Purpose:** Show step-by-step career path with tasks

**Current Issues:**
- Plain list of tasks
- No visual hierarchy
- No completion tracking
- No task details

**Improved Layout:**
```
┌─────────────────────┐
│ Engineering         │
│ ────────────────    │
│ Progress: 40%       │ ← Overall progress
│                     │
│ Timeline View       │ ← Toggle to List View
│                     │
│ ○─────○─────●─────○ │ ← Timeline
│ Class  11th  JEE  College
│ 9-10                │
│                     │
│ 📋 Current Phase    │
│ ┌─────────────────┐ │
│ │ ☑ Master Math   │ │ ← Completed
│ │ ◻ JEE Prep      │ │ ← In Progress
│ │ ◻ Advanced Top  │ │ ← Locked
│ └─────────────────┘ │
│                     │
│ [Filters] [Sort]    │
└─────────────────────┘
```

**New Features:**
- **Timeline View**: Visual timeline with phases
- **Progress Bar**: Show completion percentage
- **Task States**: Not Started / In Progress / Completed / Locked
- **Task Details**: Expandable cards with:
  - Description
  - Resources (clickable links)
  - Duration estimate
  - Subtasks checklist
  - Notes section
- **Filters**: By phase, status, difficulty
- **Achievements**: Badges for milestones

**Task Card Design:**

```dart
// Expandable Task Card
Card(
  child: ExpansionTile(
    leading: CircleAvatar(
      backgroundColor: task.isCompleted ? green : grey,
      child: Icon(task.isCompleted ? check : lock)
    ),
    title: Text(task.title),
    subtitle: Row([
      Icon(Icons.schedule), 
      Text(task.duration),
      SizedBox(width: 8),
      Icon(Icons.library_books),
      Text('3 resources')
    ]),
    children: [
      // Detailed content
      Padding(
        child: Column([
          Text(task.description),
          Divider(),
          Text('Resources:'),
          ...task.resources.map((r) => LinkButton(r)),
          Divider(),
          CheckboxListTile('Mark as Complete')
        ])
      )
    ]
  )
)
```

---

### 5. Profile/Dashboard Screen (NEW)

**Purpose:** User profile and progress overview

**Layout:**
```
┌─────────────────────┐
│ ┌─────────────────┐ │
│ │ [Avatar] Name   │ │
│ │ Class 10        │ │
│ └─────────────────┘ │
│                     │
│ Your Journey        │
│ ┌─────────────────┐ │
│ │ Engineering     │ │
│ │ ▓▓▓▓░░░░ 40%   │ │
│ │ 8/20 tasks done │ │
│ └─────────────────┘ │
│                     │
│ Achievements        │
│ 🏆 🏆 🔒 🔒        │
│                     │
│ Quick Actions       │
│ • Continue Roadmap  │
│ • Explore Careers   │
│ • Settings          │
└─────────────────────┘
```

---

## 🎭 Component Library

### Buttons

**Primary Button:**
```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF1E88E5),
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8)
    ),
    elevation: 2,
  ),
  child: Text('Continue'),
)
```

**Secondary Button:**
```dart
OutlinedButton(
  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Color(0xFF1E88E5)),
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  ),
  child: Text('Retake Quiz'),
)
```

### Cards

**Standard Card:**
```dart
Card(
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12)
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: content,
  )
)
```

**Interactive Card (with ripple):**
```dart
Card(
  child: InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(16),
      child: content,
    )
  )
)
```

### Progress Indicators

**Linear Progress Bar:**
```dart
LinearProgressIndicator(
  value: 0.4, // 40% complete
  backgroundColor: Colors.grey[200],
  valueColor: AlwaysStoppedAnimation(Color(0xFF4CAF50)),
  minHeight: 8,
  borderRadius: BorderRadius.circular(4),
)
```

**Circular Progress:**
```dart
CircularProgressIndicator(
  value: 0.4,
  strokeWidth: 8,
  backgroundColor: Colors.grey[200],
  valueColor: AlwaysStoppedAnimation(Color(0xFF1E88E5)),
)
```

---

## ✨ Animations & Transitions

### Page Transitions

```dart
// Slide transition
PageRouteBuilder(
  pageBuilder: (context, animation, secondaryAnimation) => NextScreen(),
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  },
)
```

### Micro-Animations

- **Button Press**: Scale down to 0.95 on press
- **Card Hover**: Subtle elevation increase
- **Check Completion**: Checkmark animation
- **Loading**: Shimmer effect for content loading
- **Success**: Confetti or checkmark animation
- **Error**: Shake animation for invalid input

### Hero Animations

```dart
// Career card to detail screen
Hero(
  tag: 'career_${track.id}',
  child: Image.asset(track.image),
)
```

---

## ♿ Accessibility Guidelines

### Text Accessibility
- Minimum text size: 14px (but support user scaling)
- Contrast ratio: 4.5:1 for normal text, 3:1 for large text
- Support system font scaling

### Touch Targets
- Minimum tap target: 48x48 px
- Spacing between interactive elements: 8px minimum

### Screen Readers
```dart
// Add semantic labels
Semantics(
  label: 'Medical career option, leads to MBBS',
  button: true,
  child: CareerCard(),
)
```

### Color Usage
- Don't rely solely on color to convey information
- Use icons + text + color together
- Provide alternative indicators (e.g., icons for status)

---

## 📐 Responsive Design

### Breakpoints
```
Mobile:  < 600px   (default)
Tablet:  600-900px
Desktop: > 900px
```

### Layout Adjustments

**Mobile:** Single column, full-width cards  
**Tablet:** Two columns for card grids, wider dialogs  
**Desktop:** Max content width 1200px, centered with margins

```dart
// Responsive padding
EdgeInsets.symmetric(
  horizontal: MediaQuery.of(context).size.width > 600 ? 32 : 16
)

// Responsive columns
GridView.count(
  crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 1
)
```

---

## 🎨 Asset Guidelines

### Images
- **Format**: WebP (smaller size), PNG for transparency
- **Sizes**: Provide @2x and @3x for different densities
- **Naming**: `career_medical.webp`, `icon_engineering.png`
- **Optimization**: Compress images (< 100KB for illustrations)

### Icons
- **Primary**: Material Icons (built-in)
- **Custom**: SVG format, 24x24dp base size
- **Color**: Use theme colors, support dark mode

### Folder Structure
```
assets/
├── images/
│   ├── careers/
│   │   ├── medical.webp
│   │   ├── engineering.webp
│   │   └── ...
│   ├── illustrations/
│   └── onboarding/
├── icons/
│   └── custom/
└── fonts/
    ├── Poppins-Regular.ttf
    └── NotoSansDevanagari-Regular.ttf
```

---

## 🎯 User Experience Patterns

### Loading States
- **Initial Load**: Splash screen with app logo
- **Data Fetch**: Shimmer skeleton screens
- **Action Processing**: Progress indicator on button

### Empty States
- Show helpful illustration
- Clear message explaining why it's empty
- Call-to-action button

```dart
// Example empty state
Center(
  child: Column(
    children: [
      Image.asset('assets/empty_roadmap.png'),
      Text('No tasks yet!'),
      Text('Complete the career quiz to see your roadmap'),
      ElevatedButton('Start Quiz'),
    ]
  )
)
```

### Error States
- Clear error message
- Suggestion for fix
- Retry button

---

## 📝 Design Checklist

Before submitting UI work, verify:

- [ ] Follows color palette
- [ ] Uses consistent spacing (8px system)
- [ ] Text is readable (good contrast)
- [ ] Touch targets are 48x48px minimum
- [ ] Works on small (360px) and large (768px+) screens
- [ ] Animations are smooth (60fps)
- [ ] Loading states implemented
- [ ] Error states handled
- [ ] Empty states designed
- [ ] Supports dark mode (future)
- [ ] Accessible (semantics, labels)
- [ ] Matches design system

---

## 🔄 Iteration Process

1. **Sketch/Wireframe**: Paper or Figma
2. **Get Feedback**: Share with team
3. **Implement**: Build in Flutter
4. **Test**: Multiple devices and screen sizes
5. **Refine**: Based on user feedback
6. **Document**: Update this guide

---

## 📚 Resources

- [Material Design 3](https://m3.material.io)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Accessibility Guide](https://docs.flutter.dev/accessibility)
- [Figma Community](https://www.figma.com/community) - for mockups

---

**Last Updated:** 2026-02-08  
**Version:** 1.0  
**Maintainers:** Design Team
