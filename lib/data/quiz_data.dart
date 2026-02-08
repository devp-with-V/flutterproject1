import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Static quiz data for the career discovery questionnaire.
///
/// This map contains the complete decision tree for guiding students
/// through career selection based on their interests.
final Map<String, QuizQuestion> quizData = {
  // 1. ROOT QUESTION
  'start': QuizQuestion(
    id: 'start',
    questionText: "Which broad area interests you?",
    contextInfo: "Choose the stream you feel most connected to.",
    options: [
      QuizOption(
        text: "Science (How nature works)",
        description: "Physics, Bio, Chemicals, Math.",
        nextStepId: 'science_branch',
      ),
      QuizOption(
        text: "Commerce (Money & Business)",
        description: "Finance, Accounts, Markets.",
        nextStepId: 'comm',
        isFinal: true,
      ),
      QuizOption(
        text: "Arts (Society & Creativity)",
        description: "History, Law, Govt, Design.",
        nextStepId: 'arts',
        isFinal: true,
      ),
    ],
  ),

  // 2. SCIENCE BRANCH QUESTION
  'science_branch': QuizQuestion(
    id: 'science_branch',
    questionText: "In Science, what is your favorite tool?",
    contextInfo: "Separating Biology (Life) from Math (Logic).",
    options: [
      QuizOption(
        text: "Biology (Living Things)",
        description: "Human body, plants, medicines.",
        nextStepId: 'bio_branch',
      ),
      QuizOption(
        text: "Maths (Numbers & Logic)",
        description: "Calculations, structures, physics.",
        nextStepId: 'math_branch',
      ),
    ],
  ),

  // 3. BIOLOGY BRANCH QUESTION (Medical vs Pharma)
  'bio_branch': QuizQuestion(
    id: 'bio_branch',
    questionText: "Do you want to treat patients?",
    contextInfo:
        "Doctors interact with people; Pharmacists/Scientists work in labs.",
    options: [
      QuizOption(
        text: "Yes, I want to be a Doctor",
        description: "MBBS/BDS. Clinical work.",
        nextStepId: 'med',
        isFinal: true,
      ),
      QuizOption(
        text: "No, I prefer the Chemistry/Lab",
        description: "Making medicines or research.",
        nextStepId: 'pharma',
        isFinal: true,
      ),
    ],
  ),

  // 4. MATH BRANCH QUESTION (Engineering vs Pure Math vs Research)
  'math_branch': QuizQuestion(
    id: 'math_branch',
    questionText: "How do you like to use Math?",
    contextInfo:
        "Engineering builds things. Pure Math explores logic. Research asks why.",
    options: [
      QuizOption(
        text: "Building Machines/Code",
        description: "Engineering (B.Tech). Practical application.",
        nextStepId: 'eng',
        isFinal: true,
      ),
      QuizOption(
        text: "Solving Pure Logic/Puzzles",
        description: "Mathematics & Statistics. Abstract thinking.",
        nextStepId: 'math',
        isFinal: true,
      ),
      QuizOption(
        text: "Discovering Scientific Theories",
        description: "Research & Education. Teaching or Scientist.",
        nextStepId: 'res',
        isFinal: true,
      ),
    ],
  ),
};
