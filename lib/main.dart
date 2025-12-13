import 'package:flutter/material.dart';

void main() {
  runApp(const CareerGuideApp());
}

// -----------------------------------
// DATA MODELS
// -----------------------------------

class RoadmapTask {
  final String title;
  final String description;
  final String resources;
  final String duration;
  bool isCompleted;

  RoadmapTask({
    required this.title,
    required this.description,
    required this.resources,
    required this.duration,
    this.isCompleted = false
  });
}

class OfficialLink {
  final String name;
  final String url;

  OfficialLink({required this.name, required this.url});
}

class CareerTrack {
  final String id;
  final String name;
  final String tagLine;
  final String idealFor;
  final String subjectCombo;
  final String whyRecommended;
  final List<RoadmapTask> tasks;
  final List<OfficialLink> links;

  CareerTrack({
    required this.id,
    required this.name,
    required this.tagLine,
    required this.idealFor,
    required this.subjectCombo,
    required this.whyRecommended,
    required this.tasks,
    required this.links
  });
}

// -----------------------------------
// DATA GENERATORS (NEW SEPARATE TRACKS)
// -----------------------------------

CareerTrack getMedicalTrack() {
  return CareerTrack(
      id: 'med',
      name: 'Medical (MBBS)',
      tagLine: 'The Healer',
      idealFor: 'Students who want to treat patients directly.',
      subjectCombo: 'PCB (Physics, Chem, Bio).',
      whyRecommended: 'You chose clinical interaction and biology. This path is for becoming a Doctor.',
      tasks: [
        RoadmapTask(title: 'Master Biology', description: 'NCERT Biology is crucial.', resources: 'NCERT', duration: 'Daily'),
        RoadmapTask(title: 'NEET Prep', description: 'Prepare for the single largest medical entrance.', resources: 'NEET PYQ', duration: '2 Years'),
      ],
      links: [OfficialLink(name: 'NEET', url: 'neet.nta.nic.in')]
  );
}

CareerTrack getPharmaTrack() {
  return CareerTrack(
      id: 'pharma',
      name: 'Pharmacy & Chemistry',
      tagLine: 'The Medicine Maker',
      idealFor: 'Students who love Chemistry and how medicines work, but not surgery.',
      subjectCombo: 'PCB or PCM (Maths allowed for B.Pharm).',
      whyRecommended: 'You like biology/chemistry but prefer the lab/industry side over treating patients. Pharmacy is a booming industry.',
      tasks: [
        RoadmapTask(title: 'Chemistry Focus', description: 'Organic Chemistry is your main weapon.', resources: 'NCERT Chem', duration: 'Class 11-12'),
        RoadmapTask(title: 'State CETs', description: 'Pharmacy admissions often happen via State exams (MHT-CET, WBJEE etc).', resources: 'State Portals', duration: 'Exam: May'),
        RoadmapTask(title: 'BITSAT', description: 'BITS Pilani has an excellent B.Pharm program.', resources: 'BITS Website', duration: 'Exam: June'),
      ],
      links: [OfficialLink(name: 'Pharmacy Council', url: 'pci.nic.in')]
  );
}

CareerTrack getEngineeringTrack() {
  return CareerTrack(
      id: 'eng',
      name: 'Engineering',
      tagLine: 'The Builder',
      idealFor: 'Tech, Machines, Coding.',
      subjectCombo: 'PCM (Physics, Chem, Math).',
      whyRecommended: 'You prefer practical application of math and physics.',
      tasks: [
        RoadmapTask(title: 'JEE Main', description: 'The gateway to engineering.', resources: 'Physics Wallah', duration: '2 Years'),
      ],
      links: [OfficialLink(name: 'JEE Main', url: 'jeemain.nta.ac.in')]
  );
}

CareerTrack getMathsTrack() {
  return CareerTrack(
      id: 'math',
      name: 'Pure Mathematics',
      tagLine: 'The Problem Solver',
      idealFor: 'Students who love numbers, logic, and abstract theory.',
      subjectCombo: 'PCM (Focus on Math).',
      whyRecommended: 'You indicated a love for pure numbers and logic, distinct from machines. This track leads to becoming a Statistician, Data Scientist, or Mathematician.',
      tasks: [
        RoadmapTask(title: 'ISI Entrance', description: 'Indian Statistical Institute is the dream.', resources: 'TOMATO Book', duration: 'Start in Class 11'),
        RoadmapTask(title: 'CMI Entrance', description: 'Chennai Mathematical Institute.', resources: 'CMI Papers', duration: 'Exam: May'),
      ],
      links: [OfficialLink(name: 'ISI Kolkata', url: 'isical.ac.in')]
  );
}

CareerTrack getResearchTrack() {
  return CareerTrack(
      id: 'res',
      name: 'Research & Education',
      tagLine: 'The Scientist',
      idealFor: 'Curious minds who ask "Why?". Teaching & Professors.',
      subjectCombo: 'PCM or PCB.',
      whyRecommended: 'You want to discover new things or teach. This path leads to IISERs, NISER, and PhDs.',
      tasks: [
        RoadmapTask(title: 'IAT Exam', description: 'IISER Aptitude Test.', resources: 'SciAstra', duration: 'Exam: June'),
        RoadmapTask(title: 'KVPY/Inspire', description: 'Scholarships for basic sciences.', resources: 'DST Website', duration: 'Continuous'),
      ],
      links: [OfficialLink(name: 'IISER', url: 'iiseradmission.in')]
  );
}

CareerTrack getCommerceTrack() {
  return CareerTrack(
      id: 'comm',
      name: 'Commerce & Finance',
      tagLine: 'The Money Manager',
      idealFor: 'Money, Business, Economics.',
      subjectCombo: 'Commerce (Maths recommended).',
      whyRecommended: 'You are interested in the financial engine of the world.',
      tasks: [
        RoadmapTask(title: 'CA Foundation', description: 'Entry to Chartered Accountancy.', resources: 'ICAI', duration: 'After 12th'),
      ],
      links: [OfficialLink(name: 'ICAI', url: 'icai.org')]
  );
}

CareerTrack getArtsTrack() {
  return CareerTrack(
      id: 'arts',
      name: 'Arts & Humanities',
      tagLine: 'The Social Leader',
      idealFor: 'Civil Services (UPSC), Law, Journalism, Design.',
      subjectCombo: 'History, Pol Science, Geography, Psychology.',
      whyRecommended: 'You are interested in society, governance, or creative fields. This is the strongest base for UPSC/IAS.',
      tasks: [
        RoadmapTask(title: 'NCERT Reading', description: 'Read History/PolSci NCERTs for base.', resources: 'School Books', duration: 'Class 11-12'),
        RoadmapTask(title: 'CLAT', description: 'If interested in Law, prepare for National Law Universities.', resources: 'CLAT Consortium', duration: 'Exam: Dec/May'),
        RoadmapTask(title: 'UPSC Prep', description: 'Start reading newspapers daily.', resources: 'The Hindu', duration: 'Daily'),
      ],
      links: [OfficialLink(name: 'UPSC', url: 'upsc.gov.in')]
  );
}

// -----------------------------------
// QUESTIONNAIRE LOGIC (REVISED TREE)
// -----------------------------------

class QuizOption {
  final String text;
  final String description;
  final String nextStepId;
  final bool isFinal;

  QuizOption({required this.text, required this.description, required this.nextStepId, this.isFinal = false});
}

class QuizQuestion {
  final String id;
  final String questionText;
  final String contextInfo;
  final List<QuizOption> options;

  QuizQuestion({required this.id, required this.questionText, required this.contextInfo, required this.options});
}

// THE NEW LOGIC TREE
final Map<String, QuizQuestion> quizData = {
  // 1. ROOT
  'start': QuizQuestion(
      id: 'start',
      questionText: "Which broad area interests you?",
      contextInfo: "Choose the stream you feel most connected to.",
      options: [
        QuizOption(text: "Science (How nature works)", description: "Physics, Bio, Chemicals, Math.", nextStepId: 'science_branch'),
        QuizOption(text: "Commerce (Money & Business)", description: "Finance, Accounts, Markets.", nextStepId: 'comm'), // Direct to Commerce for now
        QuizOption(text: "Arts (Society & Creativity)", description: "History, Law, Govt, Design.", nextStepId: 'arts'), // Direct to Arts
      ]
  ),

  // 2. SCIENCE BRANCH
  'science_branch': QuizQuestion(
      id: 'science_branch',
      questionText: "In Science, what is your favorite tool?",
      contextInfo: "Separating Biology (Life) from Math (Logic).",
      options: [
        QuizOption(text: "Biology (Living Things)", description: "Human body, plants, medicines.", nextStepId: 'bio_branch'),
        QuizOption(text: "Maths (Numbers & Logic)", description: "Calculations, structures, physics.", nextStepId: 'math_branch'),
      ]
  ),

  // 3. BIO BRANCH (Medical vs Pharma)
  'bio_branch': QuizQuestion(
      id: 'bio_branch',
      questionText: "Do you want to treat patients?",
      contextInfo: "Doctors interact with people; Pharmacists/Scientists work in labs.",
      options: [
        QuizOption(text: "Yes, I want to be a Doctor", description: "MBBS/BDS. Clinical work.", nextStepId: 'med', isFinal: true),
        QuizOption(text: "No, I prefer the Chemistry/Lab", description: "Making medicines or research.", nextStepId: 'pharma', isFinal: true),
      ]
  ),

  // 4. MATH BRANCH (Eng vs Pure Math vs Research)
  'math_branch': QuizQuestion(
      id: 'math_branch',
      questionText: "How do you like to use Math?",
      contextInfo: "Engineering builds things. Pure Math explores logic. Research asks why.",
      options: [
        QuizOption(text: "Building Machines/Code", description: "Engineering (B.Tech). Practical application.", nextStepId: 'eng', isFinal: true),
        QuizOption(text: "Solving Pure Logic/Puzzles", description: "Mathematics & Statistics. Abstract thinking.", nextStepId: 'math', isFinal: true),
        QuizOption(text: "Discovering Scientific Theories", description: "Research & Education. Teaching or Scientist.", nextStepId: 'res', isFinal: true),
      ]
  ),
};

// -----------------------------------
// MAIN APP & THEME
// -----------------------------------

class CareerGuideApp extends StatelessWidget {
  const CareerGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rural Path',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
      ),
      home: const AuthScreen(),
    );
  }
}

// -----------------------------------
// 1. AUTHENTICATION SCREEN (UPDATED WITH OTP)
// -----------------------------------

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  bool showOtpField = false; // State to toggle OTP view

  void _sendOtp() {
    if (_formKey.currentState!.validate()) {
      // Here you would call your Backend API to trigger SMS
      setState(() {
        showOtpField = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("OTP sent to your mobile number")),
      );
    }
  }

  void _verifyOtpAndLogin() {
    // Mock Verification: Accept any 4 digit OTP
    if (_otpController.text.length == 4) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DynamicQuestionnaireScreen(userName: _nameController.text),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid OTP. Try 1234.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(Icons.school_rounded, size: 80, color: Color(0xFF1E88E5)),
              const SizedBox(height: 20),
              const Text("Mera Bhavishya", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1E88E5))),
              const Text("Rural Career Guidance System", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 40),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      enabled: !showOtpField, // Disable after OTP sent
                      decoration: const InputDecoration(labelText: "Your Name", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person)),
                      validator: (v) => v!.isEmpty ? "Required" : null,
                    ),
                    const SizedBox(height: 16),

                    // Phone Field
                    TextFormField(
                      controller: _phoneController,
                      enabled: !showOtpField,
                      decoration: const InputDecoration(
                          labelText: "Mobile Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone_android),
                          hintText: "For SMS Notifications"
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (v) => (v!.length < 10) ? "Enter valid mobile" : null,
                    ),
                    const SizedBox(height: 16),

                    // OTP Field (Conditional)
                    if (showOtpField)
                      TextFormField(
                        controller: _otpController,
                        decoration: const InputDecoration(
                            labelText: "Enter OTP",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock_clock),
                            helperText: "Mock OTP: Enter 1234"
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                      ),

                    const SizedBox(height: 30),

                    // Button Logic
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: showOtpField ? _verifyOtpAndLogin : _sendOtp,
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E88E5), foregroundColor: Colors.white),
                        child: Text(showOtpField ? "Verify & Enter" : "Get OTP"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -----------------------------------
// 2. DYNAMIC QUESTIONNAIRE
// -----------------------------------

class DynamicQuestionnaireScreen extends StatefulWidget {
  final String userName;
  const DynamicQuestionnaireScreen({super.key, required this.userName});

  @override
  State<DynamicQuestionnaireScreen> createState() => _DynamicQuestionnaireScreenState();
}

class _DynamicQuestionnaireScreenState extends State<DynamicQuestionnaireScreen> {
  String currentQuestionId = 'start';

  void _handleOptionSelection(QuizOption option) {
    if (option.isFinal) {
      CareerTrack recommendedTrack;
      // UPDATED SWITCH LOGIC
      switch (option.nextStepId) {
        case 'med': recommendedTrack = getMedicalTrack(); break;
        case 'pharma': recommendedTrack = getPharmaTrack(); break;
        case 'eng': recommendedTrack = getEngineeringTrack(); break;
        case 'math': recommendedTrack = getMathsTrack(); break;
        case 'res': recommendedTrack = getResearchTrack(); break;
        case 'comm': recommendedTrack = getCommerceTrack(); break;
        case 'arts': recommendedTrack = getArtsTrack(); break;
        default: recommendedTrack = getEngineeringTrack();
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RecommendationScreen(
            userName: widget.userName,
            track: recommendedTrack,
          ),
        ),
      );
    } else {
      setState(() {
        currentQuestionId = option.nextStepId;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion activeQuestion = quizData[currentQuestionId]!;

    return Scaffold(
      appBar: AppBar(title: const Text("Career Discovery")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(8)),
              child: Text(activeQuestion.contextInfo, style: TextStyle(color: Colors.blue.shade900)),
            ),
            const SizedBox(height: 20),
            Text(activeQuestion.questionText, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: activeQuestion.options.length,
                itemBuilder: (context, index) {
                  final option = activeQuestion.options[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(option.text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(option.description),
                      ),
                      onTap: () => _handleOptionSelection(option),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------
// 3. RECOMMENDATION SCREEN (Unchanged logic, just placeholder)
// -----------------------------------
class RecommendationScreen extends StatelessWidget {
  final String userName;
  final CareerTrack track;

  const RecommendationScreen({super.key, required this.userName, required this.track});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Analysis Complete", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Text(track.name, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF1E88E5))),
              const SizedBox(height: 20),
              Text(track.whyRecommended, style: const TextStyle(fontSize: 16, height: 1.5)),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.orange.shade50,
                child: Text("Subjects: ${track.subjectCombo}", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainRoadmapScreen(userName: userName, track: track)),
                    );
                  },
                  child: const Text("View Roadmap"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -----------------------------------
// 4. MAIN ROADMAP SCREEN
// -----------------------------------

class MainRoadmapScreen extends StatefulWidget {
  final String userName;
  final CareerTrack track;

  const MainRoadmapScreen({super.key, required this.userName, required this.track});

  @override
  State<MainRoadmapScreen> createState() => _MainRoadmapScreenState();
}

class _MainRoadmapScreenState extends State<MainRoadmapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.track.name)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.track.tasks.length,
        itemBuilder: (context, index) {
          final task = widget.track.tasks[index];
          return Card(
            child: ListTile(
              title: Text(task.title),
              subtitle: Text(task.description),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          );
        },
      ),
    );
  }
}