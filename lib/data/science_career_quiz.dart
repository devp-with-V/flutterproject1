import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Branch-specific quiz for SCIENCE stream.
///
/// After student agrees with Science recommendation,
/// ask detailed questions to determine specific career:
/// Medical, Pharmacy, Engineering, Mathematics, or Research

final Map<String, QuizQuestion> scienceCareerQuizData = {
  'sci_start': QuizQuestion(
    id: 'sci_start',
    questionText: "Within Science, what interests you most?",
    contextInfo: "Science is vast! Let's find which branch excites you - Biology, Technology, or Pure Sciences.",
    options: [
      QuizOption(
        text: "Biology & Living things",
        description: "How the human body works, diseases, plants, animals, nature.",
        nextStepId: 'sci_bio',
      ),
      QuizOption(
        text: "Machines, Technology & Building things",
        description: "Engineering, coding, making apps, robots, construction.",
        nextStepId: 'sci_tech',
      ),
      QuizOption(
        text: "Pure Mathematics & Theory",
        description: "Solving complex math problems, logic, statistics, data science.",
        nextStepId: 'math',
        isFinal: true,
      ),
      QuizOption(
        text: "Research & Discovering new things",
        description: "Scientific experiments, discovering new knowledge, becoming a scientist.",
        nextStepId: 'res',
        isFinal: true,
     ),
    ],
  ),

  'sci_bio': QuizQuestion(
    id: 'sci_bio',
    questionText: "You like Biology! How do you want to work with it?",
    contextInfo: "Biology offers many paths - from treating patients directly to working in labs.",
    options: [
      QuizOption(
        text: "Treating patients & Saving lives",
        description: "I want to become a Doctor (MBBS), work in hospitals, interact with patients.",
        nextStepId: 'med',
        isFinal: true,
      ),
      QuizOption(
        text: "Making medicines & Laboratory work",
        description: "I prefer working with chemicals, understanding how drugs work, pharmacy industry.",
        nextStepId: 'pharma',
        isFinal: true,
      ),
      QuizOption(
        text: "Research & Experiments",
        description: "I want to discover new things in biology, work in research labs.",
        nextStepId: 'res',
        isFinal: true,
      ),
    ],
  ),

  'sci_tech': QuizQuestion(
    id: 'sci_tech',
    questionText: "You like Technology! What excites you more?",
    contextInfo: "Technology has many flavors - from software to machines to construction.",
    options: [
      QuizOption(
        text: "Computers, Apps & Software",
        description: "Coding, making websites/apps, AI, data science, IT jobs.",
        nextStepId: 'eng',
        isFinal: true,
      ),
      QuizOption(
        text: "Machines, Electronics & Hardware",
        description: "Robots, electrical circuits, mechanical devices, manufacturing.",
        nextStepId: 'eng',
        isFinal: true,
      ),
      QuizOption(
        text: "Buildings, Roads & Construction",
        description: "Civil engineering, architecture, infrastructure development.",
        nextStepId: 'eng',
        isFinal: true,
      ),
    ],
  ),
};
