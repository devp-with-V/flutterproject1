import '../models/career_track.dart';
import '../models/roadmap_task.dart';
import '../models/official_link.dart';

/// Static data for all career tracks.
///
/// This file contains generator functions for each of the 7 career paths
/// available in the application. Each function returns a complete CareerTrack
/// object with tasks and official links.

/// Returns the Medical (MBBS) career track.
CareerTrack getMedicalTrack() {
  return CareerTrack(
    id: 'med',
    name: 'Medical (MBBS)',
    tagLine: 'The Healer',
    idealFor: 'Students who want to treat patients directly.',
    subjectCombo: 'PCB (Physics, Chem, Bio).',
    whyRecommended:
        'You chose clinical interaction and biology. This path is for becoming a Doctor.',
    tasks: [
      RoadmapTask(
        title: 'Master Biology',
        description: 'NCERT Biology is crucial.',
        resources: 'NCERT',
        duration: 'Daily',
      ),
      RoadmapTask(
        title: 'NEET Prep',
        description: 'Prepare for the single largest medical entrance.',
        resources: 'NEET PYQ',
        duration: '2 Years',
      ),
    ],
    links: [OfficialLink(name: 'NEET', url: 'neet.nta.nic.in')],
  );
}

/// Returns the Pharmacy & Chemistry career track.
CareerTrack getPharmaTrack() {
  return CareerTrack(
    id: 'pharma',
    name: 'Pharmacy & Chemistry',
    tagLine: 'The Medicine Maker',
    idealFor: 'Students who love Chemistry and how medicines work.',
    subjectCombo: 'PCB or PCM.',
    whyRecommended: 'Lab-oriented career in drug development and healthcare.',
    tasks: [
      RoadmapTask(title: 'Organic Chemistry Basics', description: 'Master hydrocarbons and functional groups.', resources: 'NCERT', duration: 'Months 1-4'),
      RoadmapTask(title: 'Human Anatomy & Physiology', description: 'Study how drugs interact with body systems.', resources: 'Ross & Wilson', duration: 'Months 5-8'),
      RoadmapTask(title: 'State Pharmacy CETs', description: 'Prepare for MHT-CET, WBJEE, or GUJCET.', resources: 'State PYQs', duration: 'Year 1'),
      RoadmapTask(title: 'Biochemistry Introduction', description: 'Learn about proteins, lipids, and enzymes.', resources: 'NCERT Bio', duration: 'Month 10'),
      RoadmapTask(title: 'BITSAT B.Pharm Prep', description: 'Specific focus on the BITS Pilani entrance.', resources: 'BITS Guide', duration: 'Month 12'),
      RoadmapTask(title: 'Medical Terminology', description: 'Learn the language used in pharmacology.', resources: 'Online Apps', duration: 'Ongoing'),
      RoadmapTask(title: 'Physical Chemistry', description: 'Focus on solutions and chemical kinetics.', resources: 'P. Bahadur', duration: 'Year 2'),
      RoadmapTask(title: 'Dosage Forms Study', description: 'Understand tablets, syrups, and injectables.', resources: 'YouTube/Labs', duration: 'Month 18'),
      RoadmapTask(title: 'Pharmacognosy', description: 'Study of medicines derived from natural sources.', resources: 'Reference Books', duration: 'Month 20'),
      RoadmapTask(title: 'GPAT Awareness', description: 'Understand the entrance for M.Pharm (Masters).', resources: 'Official Site', duration: 'Year 2 End'),
      RoadmapTask(title: 'Industrial Visit', description: 'Visit a local pharma lab or factory.', resources: 'Local Industry', duration: 'Holidays'),
      RoadmapTask(title: 'Inorganic Pharma Chem', description: 'Study impurities and limit tests.', resources: 'Textbooks', duration: 'Month 22'),
      RoadmapTask(title: 'Pharmacy Laws & Ethics', description: 'Intro to the Pharmacy Act and PCI.', resources: 'PCI Website', duration: 'Month 23'),
      RoadmapTask(title: 'Final Board Exams', description: 'Score high in 12th Chemistry/Biology.', resources: 'Board Papers', duration: 'Month 24'),
      RoadmapTask(title: 'College Counseling', description: 'Select top NIRF ranked Pharmacy colleges.', resources: 'NIRF List', duration: 'Post Exam'),
    ],
    links: [OfficialLink(name: 'Pharmacy Council', url: 'pci.nic.in')],
  );
}

/// Returns the Engineering career track.
CareerTrack getEngineeringTrack() {
  return CareerTrack(
    id: 'eng',
    name: 'Engineering',
    tagLine: 'The Builder',
    idealFor: 'Tech, Machines, Coding.',
    subjectCombo: 'PCM (Physics, Chem, Math).',
    whyRecommended: 'You prefer practical application of math and physics.',
    tasks: [
      RoadmapTask(
        title: 'JEE Main',
        description: 'The gateway to engineering.',
        resources: 'Physics Wallah',
        duration: '2 Years',
      ),
    ],
    links: [OfficialLink(name: 'JEE Main', url: 'jeemain.nta.ac.in')],
  );
}

/// Returns the Pure Mathematics career track.
CareerTrack getMathsTrack() {
  return CareerTrack(
    id: 'math',
    name: 'Pure Mathematics',
    tagLine: 'The Problem Solver',
    idealFor: 'Students who love numbers, logic, and abstract theory.',
    subjectCombo: 'PCM (Focus on Math).',
    whyRecommended: 'Leads to careers in Data Science, Actuarial Science, or Research.',
    tasks: [
      RoadmapTask(title: 'Set Theory & Logic', description: 'The foundation of all higher math.', resources: 'NCERT/Higher Algebra', duration: 'Month 1'),
      RoadmapTask(title: 'Number Theory', description: 'Study properties of integers and primes.', resources: 'Vikas Bishnoi', duration: 'Month 2-3'),
      RoadmapTask(title: 'ISI Entrance Prep', description: 'Practice subjective math problems.', resources: 'TOMATO Book', duration: 'Year 1'),
      RoadmapTask(title: 'Combinatorics', description: 'Master permutations and combinations.', resources: 'Hall & Knight', duration: 'Month 6'),
      RoadmapTask(title: 'Calculus (Limits & Continuity)', description: 'Deep conceptual understanding.', resources: 'IA Maron', duration: 'Month 8-10'),
      RoadmapTask(title: 'CMI Entrance Prep', description: 'Chennai Mathematical Institute level problems.', resources: 'CMI Archive', duration: 'Year 2'),
      RoadmapTask(title: 'Linear Algebra', description: 'Study matrices and vector spaces.', resources: 'Gilbert Strang', duration: 'Month 14'),
      RoadmapTask(title: 'Probability Theory', description: 'Crucial for Statistics and Actuarial paths.', resources: 'NCERT/State Books', duration: 'Month 16'),
      RoadmapTask(title: 'Math Olympiad (RMO/INMO)', description: 'Test your skills at the national level.', resources: 'HBCSE', duration: 'Yearly'),
      RoadmapTask(title: 'Introduction to Proofs', description: 'Learn to write formal mathematical proofs.', resources: 'YouTube', duration: 'Ongoing'),
      RoadmapTask(title: 'Abstract Algebra', description: 'Intro to Groups, Rings, and Fields.', resources: 'Reference Books', duration: 'Month 20'),
      RoadmapTask(title: 'Data Science Basics', description: 'See how math applies to modern AI.', resources: 'Kaggle', duration: 'Break time'),
      RoadmapTask(title: 'ISI B.Stat Application', description: 'Fill forms for ISI Kolkata/Bangalore.', resources: 'isical.ac.in', duration: 'Month 22'),
      RoadmapTask(title: 'Final Board Revision', description: 'Aim for 100/100 in Mathematics.', resources: 'Board Papers', duration: 'Month 24'),
      RoadmapTask(title: 'Python for Math', description: 'Learn NumPy and Matplotlib.', resources: 'Coursera', duration: 'Post-Exam'),
    ],
    links: [OfficialLink(name: 'ISI Kolkata', url: 'isical.ac.in')],
  );
}

/// Returns the Research & Education career track.
CareerTrack getResearchTrack() {
  return CareerTrack(
    id: 'res',
    name: 'Research & Education',
    tagLine: 'The Scientist',
    idealFor: 'Curious minds who ask "Why?".',
    subjectCombo: 'PCM or PCB.',
    whyRecommended: 'Focus on pure sciences and academic excellence.',
    tasks: [
      RoadmapTask(title: 'Scientific Method', description: 'Learn how to form and test hypotheses.', resources: 'Online', duration: 'Month 1'),
      RoadmapTask(title: 'IAT Exam Prep', description: 'IISER Aptitude Test (Physics, Chem, Math, Bio).', resources: 'SciAstra', duration: '2 Years'),
      RoadmapTask(title: 'NEST Exam Prep', description: 'Entrance for NISER Bhubaneswar.', resources: 'NEST Website', duration: 'Year 2'),
      RoadmapTask(title: 'Advanced Physics (Mechanics)', description: 'Focus on conceptual depth.', resources: 'Resnick Halliday', duration: 'Months 3-6'),
      RoadmapTask(title: 'Organic synthesis', description: 'Understand how molecules are built.', resources: 'Clayden', duration: 'Year 1'),
      RoadmapTask(title: 'Scientific Journal Reading', description: 'Try reading a simplified science paper.', resources: 'Nature/ScienceMag', duration: 'Monthly'),
      RoadmapTask(title: 'Experimental Setup', description: 'Learn to document laboratory experiments.', resources: 'School Lab', duration: 'Weekly'),
      RoadmapTask(title: 'KVPY Style Mock Tests', description: 'High-level science aptitude tests.', resources: 'PYQs', duration: 'Month 15'),
      RoadmapTask(title: 'Modern Physics', description: 'Quantum mechanics and Nuclear physics.', resources: 'NCERT', duration: 'Month 18'),
      RoadmapTask(title: 'Evolutionary Biology', description: 'Study the origin of life and species.', resources: 'NCERT Bio', duration: 'Month 20'),
      RoadmapTask(title: 'Astronomy/Astrophysics', description: 'Introduction to space sciences.', resources: 'YouTube/ISRO', duration: 'Ongoing'),
      RoadmapTask(title: 'Teaching Practice', description: 'Explain a complex topic to a peer.', resources: 'Peer Group', duration: 'Weekly'),
      RoadmapTask(title: 'CUET UG Prep', description: 'Prepare for Central Universities (DU, BHU).', resources: 'CUET Portal', duration: 'Month 22'),
      RoadmapTask(title: 'Research Project', description: 'Write a small report on a local eco-issue.', resources: 'Local Fieldwork', duration: 'Holidays'),
      RoadmapTask(title: 'Final Enrollment', description: 'Join an IISER, NISER, or top University.', resources: 'Admission Portals', duration: 'Final Month'),
    ],
    links: [OfficialLink(name: 'IISER', url: 'iiseradmission.in')],
  );
}

/// Returns the Commerce & Finance career track.
CareerTrack getCommerceTrack() {
  return CareerTrack(
    id: 'comm',
    name: 'Commerce & Finance',
    tagLine: 'The Money Manager',
    idealFor: 'Money, Business, Economics.',
    subjectCombo: 'Commerce with Maths.',
    whyRecommended: 'A pathway to the corporate world and wealth management.',
    tasks: [
      RoadmapTask(title: 'Accountancy Basics', description: 'Journal entries, Ledger, and Trial Balance.', resources: 'TS Grewal', duration: 'Month 1-3'),
      RoadmapTask(title: 'Economics (Micro)', description: 'Supply, demand, and market equilibrium.', resources: 'Sandeep Garg', duration: 'Month 4-6'),
      RoadmapTask(title: 'CA Foundation Prep', description: 'Register with ICAI and start Law/Accounts.', resources: 'ICAI Portal', duration: 'Year 1'),
      RoadmapTask(title: 'Business Studies', description: 'Management principles and finance.', resources: 'NCERT', duration: 'Year 1'),
      RoadmapTask(title: 'Stock Market Basics', description: 'Learn what shares and dividends are.', resources: 'Varsity by Zerodha', duration: 'Ongoing'),
      RoadmapTask(title: 'Mathematics for Finance', description: 'Focus on Statistics and Probability.', resources: 'NCERT Math', duration: 'Year 2'),
      RoadmapTask(title: 'Company Law Intro', description: 'Basics of how companies are formed.', resources: 'ICAI Material', duration: 'Month 15'),
      RoadmapTask(title: 'CUET Prep (Commerce)', description: 'Aim for SRCC or Hindu College (Delhi).', resources: 'CUET Guide', duration: 'Month 18'),
      RoadmapTask(title: 'Financial Literacy', description: 'Learn about taxes and personal budgeting.', resources: 'YouTube', duration: 'Holidays'),
      RoadmapTask(title: 'IPMAT Prep', description: 'Entrance for IIM Indore/Rohtak (Integrated MBA).', resources: 'IMS/Career Launcher', duration: 'Year 2'),
      RoadmapTask(title: 'Excel Skills', description: 'Learn basic spreadsheets and formulas.', resources: 'Coursera/YouTube', duration: 'Month 20'),
      RoadmapTask(title: 'Economics (Macro)', description: 'GDP, Inflation, and Budgeting.', resources: 'NCERT', duration: 'Month 21'),
      RoadmapTask(title: 'Business Communication', description: 'Work on formal emailing and speaking.', resources: 'Online courses', duration: 'Monthly'),
      RoadmapTask(title: 'Final Board Exams', description: 'Focus on scoring 95%+ for top colleges.', resources: 'Board Papers', duration: 'Month 24'),
      RoadmapTask(title: 'Professional Registration', description: 'Sign up for CS or CMA if not doing CA.', resources: 'ICSI/ICMAI', duration: 'Post-Exam'),
    ],
    links: [OfficialLink(name: 'ICAI', url: 'icai.org')],
  );
}

/// Returns the Arts & Humanities career track.
CareerTrack getArtsTrack() {
  return CareerTrack(
    id: 'arts',
    name: 'Arts & Humanities',
    tagLine: 'The Social Leader',
    idealFor: 'Civil Services, Law, Journalism.',
    subjectCombo: 'History, Pol Science, Geo.',
    whyRecommended: 'Strongest base for UPSC/IAS and Social Leadership.',
    tasks: [
      RoadmapTask(title: 'NCERT History (Old/New)', description: 'Master Ancient and Medieval History.', resources: 'NCERT', duration: 'Month 1-4'),
      RoadmapTask(title: 'Political Science', description: 'Understand the Indian Constitution.', resources: 'Laxmikanth Basics', duration: 'Month 5-8'),
      RoadmapTask(title: 'Newspaper Analysis', description: 'Read "The Hindu" or "Indian Express" daily.', resources: 'Newspaper', duration: 'Daily'),
      RoadmapTask(title: 'Geography Basics', description: 'Physical and Indian Geography.', resources: 'NCERT Class 11-12', duration: 'Year 1'),
      RoadmapTask(title: 'CLAT Prep', description: 'Legal Reasoning and English for Law.', resources: 'LPT/LegalEdge', duration: 'Year 1'),
      RoadmapTask(title: 'Sociology/Psychology Intro', description: 'Understand human behavior and society.', resources: 'NCERT', duration: 'Month 10'),
      RoadmapTask(title: 'Critical Thinking', description: 'Learn to analyze bias in information.', resources: 'Online', duration: 'Ongoing'),
      RoadmapTask(title: 'Creative Writing', description: 'Write one essay per week on social issues.', resources: 'Personal Blog', duration: 'Weekly'),
      RoadmapTask(title: 'CUET Prep (Humanities)', description: 'Aim for JNU, DU, or BHU.', resources: 'CUET Guide', duration: 'Month 18'),
      RoadmapTask(title: 'Fine Arts/Design Intro', description: 'Portfolio building if interested in NID/NIFT.', resources: 'NID Website', duration: 'Holidays'),
      RoadmapTask(title: 'General Knowledge', description: 'Stay updated with international relations.', resources: 'VisionIAS/Insight', duration: 'Daily'),
      RoadmapTask(title: 'Public Speaking', description: 'Participate in Debates and MUNs.', resources: 'School Events', duration: 'Monthly'),
      RoadmapTask(title: 'Economics for Arts', description: 'Basic understanding of Indian Economy.', resources: 'NCERT', duration: 'Month 22'),
      RoadmapTask(title: 'Final Board Exams', description: 'High scores are vital for DU admissions.', resources: 'Board Papers', duration: 'Month 24'),
      RoadmapTask(title: 'Career Counseling', description: 'Choose between Law, UPSC path, or Liberal Arts.', resources: 'Expert Guidance', duration: 'Post-Exam'),
    ],
    links: [OfficialLink(name: 'UPSC', url: 'upsc.gov.in')],
  );
}
