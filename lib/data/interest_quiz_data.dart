import '../models/quiz_question.dart';
import '../models/quiz_option.dart';

/// Comprehensive interest assessment quiz for stream recommendation.
///
/// This quiz helps determine whether a student should pursue
/// Science, Commerce, or Arts based on their interests and preferences.

/// Interest quiz data with scoring for each stream
final Map<String, QuizQuestion> interestQuizData = {
  'q1': QuizQuestion(
    id: 'q1',
    questionText: "What do you enjoy doing in your free time?",
    contextInfo: "Think about what makes you happy when you're not studying. What activities do you naturally enjoy?",
    options: [
      QuizOption(
        text: "Reading books or watching documentaries",
        description: "You like learning new things about how the world works, science, history, or stories.",
        nextStepId: 'q2',
        metadata: {'science': 2, 'arts': 2, 'commerce': 0},
      ),
      QuizOption(
        text: "Solving puzzles or playing strategy games",
        description: "You enjoy challenges that need thinking, like chess, Sudoku, or brain teasers.",
        nextStepId: 'q2',
        metadata: {'science': 3, 'arts': 0, 'commerce': 1},
      ),
      QuizOption(
        text: "Helping with family business or managing money",
        description: "You like keeping track of expenses, helping in shop/business, or saving money smartly.",
        nextStepId: 'q2',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Drawing, writing, or creative activities",
        description: "You enjoy art, poetry, making videos, or expressing yourself creatively.",
        nextStepId: 'q2',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
    ],
  ),

  'q2': QuizQuestion(
    id: 'q2',
    questionText: "Which school subject do you find most interesting?",
    contextInfo: "Don't think about marks! Which subject makes you curious and excited to learn more?",
    options: [
      QuizOption(
        text: "Science (Biology, Physics, Chemistry)",
        description: "Understanding how body works, experiments, nature, chemicals, or how machines work.",
        nextStepId: 'q3',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Mathematics",
        description: "Numbers, calculations, solving problems, geometry, algebra - you find math satisfying.",
        nextStepId: 'q3',
        metadata: {'science': 2, 'arts': 0, 'commerce': 2},
      ),
      QuizOption(
        text: "Social Studies (History, Geography, Civics)",
        description: "Learning about past events, different places, governments, society, and how people live.",
        nextStepId: 'q3',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
      QuizOption(
        text: "Languages or General Knowledge",
        description: "English, Hindi, or other languages. Reading, writing, debates, current affairs.",
        nextStepId: 'q3',
        metadata: {'science': 0, 'arts': 2, 'commerce': 1},
      ),
    ],
  ),

  'q3': QuizQuestion(
    id: 'q3',
    questionText: "What kind of work sounds most exciting to you?",
    contextInfo: "Imagine yourself 10 years from now. What type of daily work would make you feel proud and happy?",
    options: [
      QuizOption(
        text: "Helping sick people get better",
        description: "Working as a doctor, nurse, or in hospitals. Treating patients and saving lives.",
        nextStepId: 'q4',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Building things or solving technical problems",
        description: "Creating apps, machines, buildings, or fixing technical issues. Making new things.",
        nextStepId: 'q4',
        metadata: {'science': 3, 'arts': 0, 'commerce': 1},
      ),
      QuizOption(
        text: "Running my own business or managing companies",
        description: "Being a boss, making business decisions, earning through smart work and planning.",
        nextStepId: 'q4',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Teaching, writing, or creative work",
        description: "Becoming a teacher, journalist, artist, lawyer, or civil servant (IAS/IPS).",
        nextStepId: 'q4',
        metadata: {'science': 0, 'arts': 3, 'commerce': 0},
      ),
    ],
  ),

  'q4': QuizQuestion(
    id: 'q4',
    questionText: "When you see a problem, what's your first thought?",
    contextInfo: "For example, if your village doesn't have clean water - what would you think about first?",
    options: [
      QuizOption(
        text: "How does the water system work? What's the scientific solution?",
        description: "You think about the technical side - filtration, pipes, germs, chemistry of cleaning water.",
        nextStepId: 'q5',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "How can we raise money to fix this? Who should invest?",
        description: "You think about budgets, funding, who pays for it, cost-benefit, managing resources.",
        nextStepId: 'q5',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Why did this happen? What are people's rights? How to get government help?",
        description: "You think about policy, government responsibility, people's voice, social justice.",
        nextStepId: 'q5',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
      QuizOption(
        text: "Let me research all sides of this issue",
        description: "You want to understand everything - technical, social, financial - before deciding.",
        nextStepId: 'q5',
        metadata: {'science': 1, 'arts': 2, 'commerce': 1},
      ),
    ],
  ),

  'q5': QuizQuestion(
    id: 'q5',
    questionText: "Which type of news or content interests you most?",
    contextInfo: "When you watch YouTube or read newspapers, what topics grab your attention?",
    options: [
      QuizOption(
        text: "Science experiments, health tips, technology",
        description: "How things work, new discoveries, medical breakthroughs, space, gadgets.",
        nextStepId: 'q6',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Business news, success stories, stock market",
        description: "Startups, how people became rich, company news, investments, market trends.",
        nextStepId: 'q6',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Politics, social issues, current affairs",
        description: "Elections, laws, social problems, international relations, what's happening in India.",
        nextStepId: 'q6',
        metadata: {'science': 0, 'arts': 3, 'commerce': 0},
      ),
      QuizOption(
        text: "Entertainment, sports, lifestyle",
        description: "Movies, cricket, fashion, travel, celebrities, art, music, culture.",
        nextStepId: 'q6',
        metadata: {'science': 0, 'arts': 2, 'commerce': 1},
      ),
    ],
  ),

  'q6': QuizQuestion(
    id: 'q6',
    questionText: "How do you prefer to learn new things?",
    contextInfo: "Think about when you learn something best. What method works for you?",
    options: [
      QuizOption(
        text: "By doing experiments or hands-on practice",
        description: "You learn by actually doing it - lab work, building things, trying yourself.",
        nextStepId: 'q7',
        metadata: {'science': 3, 'arts': 0, 'commerce': 1},
      ),
      QuizOption(
        text: "By reading books and detailed explanations",
        description: "You like understanding every detail through reading, taking notes, deep study.",
        nextStepId: 'q7',
        metadata: {'science': 1, 'arts': 2, 'commerce': 2},
      ),
      QuizOption(
        text: "By discussing with others and debating",
        description: "You learn through talking, group discussions, debates, asking questions.",
        nextStepId: 'q7',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
      QuizOption(
        text: "By looking at real-life examples and case studies",
        description: "You understand best through practical examples, stories, and how it applies in real life.",
        nextStepId: 'q7',
        metadata: {'science': 1, 'arts': 1, 'commerce': 2},
      ),
    ],
  ),

  'q7': QuizQuestion(
    id: 'q7',
    questionText: "Which of these skills do you already have or want to develop?",
    contextInfo: "Be honest - which comes naturally to you or what you'd enjoy learning?",
    options: [
      QuizOption(
        text: "Understanding how things work (technical skills)",
        description: "You're good with gadgets, like fixing things, understanding machines, or science concepts.",
        nextStepId: 'q8',
        metadata: {'science': 3, 'arts': 0, 'commerce': 0},
      ),
      QuizOption(
        text: "Managing money and making smart decisions",
        description: "You're careful with money, plan ahead, understand profit/loss, or enjoy business thinking.",
        nextStepId: 'q8',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Communicating and expressing ideas clearly",
        description: "You're good at speaking, writing, convincing people, or explaining things to others.",
        nextStepId: 'q8',
        metadata: {'science': 0, 'arts': 3, 'commerce': 1},
      ),
      QuizOption(
        text: "Being creative and thinking differently",
        description: "You come up with new ideas, think outside the box, or have artistic abilities.",
        nextStepId: 'q8',
        metadata: {'science': 1, 'arts': 2, 'commerce': 1},
      ),
    ],
  ),

  'q8': QuizQuestion(
    id: 'q8',
    questionText: "What motivates you the most?",
    contextInfo: "What would make you feel like you're doing something meaningful with your life?",
    options: [
      QuizOption(
        text: "Discovering new things or solving mysteries",
        description: "Finding solutions, making discoveries, researching, understanding unknowns.",
        nextStepId: 'result',
        metadata: {'science': 3, 'arts': 1, 'commerce': 0},
      ),
      QuizOption(
        text: "Financial success and stability",
        description: "Earning well, being financially independent, providing for family, wealth creation.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 0, 'commerce': 3},
      ),
      QuizOption(
        text: "Making a difference in society",
        description: "Helping people, changing society, justice, serving the nation, social impact.",
        nextStepId: 'result',
        metadata: {'science': 1, 'arts': 3, 'commerce': 0},
      ),
      QuizOption(
        text: "Having freedom and creativity in my work",
        description: "Being your own boss, doing creative work, not following strict routines.",
        nextStepId: 'result',
        metadata: {'science': 0, 'arts': 2, 'commerce': 2},
      ),
    ],
  ),
};
