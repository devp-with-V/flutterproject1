import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Refinement quiz when student disagrees with initial stream recommendation.
///
/// Asks 2-3 clarifying questions to suggest an alternative stream.

final Map<String, QuizQuestion> refinementQuizData = {
  'refine_start': QuizQuestion(
    id: 'refine_start',
    questionText: "No problem! Let's understand you better.",
    contextInfo: "Sometimes our interests are mixed. Let me ask a few more specific questions.",
    options: [
      QuizOption(
        text: "I want to help people directly",
        description: "Working with people, solving their problems, making a social impact.",
        nextStepId: 'refine_people',
        metadata: {'science': 2, 'arts': 2, 'commerce': 0},
      ),
      QuizOption(
        text: "I want to work with numbers & logic",
        description: "Math, calculations, data analysis, systematic problem-solving.",
        nextStepId: 'refine_numbers',
        metadata: {'science': 2, 'commerce': 2, 'arts': 0},
      ),
      QuizOption(
        text: "I want creative freedom",
        description: "Expressing ideas, creating content, designing, thinking outside the box.",
        nextStepId: 'refine_creative',
        metadata: {'science': 0, 'commerce': 1, 'arts': 3},
      ),
      QuizOption(
        text: "I want financial security & growth",
        description: "Good salary, stable career, wealth building, business opportunities.",
        nextStepId: 'refine_money',
        metadata: {'science': 1, 'commerce': 3, 'arts': 0},
      ),
    ],
  ),

  'refine_people': QuizQuestion(
    id: 'refine_people',
    questionText: "How do you want to help people?",
    contextInfo: "Different paths let you help in different ways. Which resonates with you?",
    options: [
      QuizOption(
        text: "Treating illness & healthcare",
        description: "Direct medical care, hospitals, saving lives through medicine.",
        nextStepId: 'result',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Fighting for justice & rights",
        description: "Legal help, advocacy, ensuring fairness, working in courts.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 3, 'commerce': 0},
      ),
      QuizOption(
        text: "Teaching & educating",
        description: "Sharing knowledge, helping students learn and grow.",
        nextStepId: 'result',
        metadata: {'science': 1, 'arts': 2, 'commerce': 1},
      ),
      QuizOption(
        text: "Creating jobs & opportunities",
        description: "Running businesses that employ people, entrepreneurship.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
    ],
  ),

  'refine_numbers': QuizQuestion(
    id: 'refine_numbers',
    questionText: "What kind of numbers work interests you?",
    contextInfo: "Numbers appear in many fields. What application excites you most?",
    options: [
      QuizOption(
        text: "Scientific calculations & data",
        description: "Physics problems, chemical equations, analyzing scientific data.",
        nextStepId: 'result',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Money, profits & accounting",
        description: "Business finances, balance sheets, profit-loss, taxation.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Statistics & data analysis",
        description: "Survey data, trends, predictions, working with large datasets.",
        nextStepId: 'result',
        metadata: {'science': 2, 'arts': 1, 'commerce': 2},
      ),
    ],
  ),

  'refine_creative': QuizQuestion(
    id: 'refine_creative',
    questionText: "What kind of creative work attracts you?",
    contextInfo: "Creativity shows up in unexpected places. What sounds most exciting?",
    options: [
      QuizOption(
        text: "Designing & building new things",
        description: "Creating apps, machines, products - technical creativity.",
        nextStepId: 'result',
        metadata: {'science': 3, 'arts': 1, 'commerce': 0},
      ),
      QuizOption(
        text: "Writing, media & communication",
        description: "Stories, articles, videos, journalism, content creation.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 3, 'commerce': 0},
      ),
      QuizOption(
        text: "Marketing & brand building",
        description: "Creative advertising, brand strategy, business creativity.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 1, 'commerce': 3},
      ),
    ],
  ),

  'refine_money': QuizQuestion(
    id: 'refine_money',
    questionText: "How do you want to achieve financial success?",
    contextInfo: "Multiple paths lead to good income. Which approach suits you best?",
    options: [
      QuizOption(
        text: "High-paying technical jobs",
        description: "Doctor, Engineer - professional careers with good salaries.",
        nextStepId: 'result',
        metadata: {'science': 3, 'arts': 0, 'commerce': 1},
      ),
      QuizOption(
        text: "Business & entrepreneurship",
        description: "Starting companies, investments, being your own boss.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Creative industries",
        description: "Design, media, entertainment - creative careers can pay very well.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
    ],
  ),
};
