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
    idealFor:
        'Students who love Chemistry and how medicines work, but not surgery.',
    subjectCombo: 'PCB or PCM (Maths allowed for B.Pharm).',
    whyRecommended:
        'You like biology/chemistry but prefer the lab/industry side over treating patients. Pharmacy is a booming industry.',
    tasks: [
      RoadmapTask(
        title: 'Chemistry Focus',
        description: 'Organic Chemistry is your main weapon.',
        resources: 'NCERT Chem',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'State CETs',
        description:
            'Pharmacy admissions often happen via State exams (MHT-CET, WBJEE etc).',
        resources: 'State Portals',
        duration: 'Exam: May',
      ),
      RoadmapTask(
        title: 'BITSAT',
        description: 'BITS Pilani has an excellent B.Pharm program.',
        resources: 'BITS Website',
        duration: 'Exam: June',
      ),
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
    whyRecommended:
        'You indicated a love for pure numbers and logic, distinct from machines. This track leads to becoming a Statistician, Data Scientist, or Mathematician.',
    tasks: [
      RoadmapTask(
        title: 'ISI Entrance',
        description: 'Indian Statistical Institute is the dream.',
        resources: 'TOMATO Book',
        duration: 'Start in Class 11',
      ),
      RoadmapTask(
        title: 'CMI Entrance',
        description: 'Chennai Mathematical Institute.',
        resources: 'CMI Papers',
        duration: 'Exam: May',
      ),
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
    idealFor: 'Curious minds who ask "Why?". Teaching & Professors.',
    subjectCombo: 'PCM or PCB.',
    whyRecommended:
        'You want to discover new things or teach. This path leads to IISERs, NISER, and PhDs.',
    tasks: [
      RoadmapTask(
        title: 'IAT Exam',
        description: 'IISER Aptitude Test.',
        resources: 'SciAstra',
        duration: 'Exam: June',
      ),
      RoadmapTask(
        title: 'KVPY/Inspire',
        description: 'Scholarships for basic sciences.',
        resources: 'DST Website',
        duration: 'Continuous',
      ),
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
    subjectCombo: 'Commerce (Maths recommended).',
    whyRecommended: 'You are interested in the financial engine of the world.',
    tasks: [
      RoadmapTask(
        title: 'Master Accountancy Basics',
        description: 'Learn Journal, Ledger, Trial Balance, and Financial Statements thoroughly. Strong foundation is key.',
        resources: 'TS Grewal Book, Class 11-12 Accounts NCERT',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'Economics & Business Studies',
        description: 'Understand Micro/Macro Economics, Demand-Supply, Business Management principles.',
        resources: 'NCERT Economics, Sandeep Garg',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'CA Foundation Registration',
        description: 'Register with ICAI for CA Foundation. Study Law, Accounts, Economics, and Quantitative Aptitude.',
        resources: 'ICAI Study Material',
        duration: 'After 10th or 12th',
      ),
      RoadmapTask(
        title: 'CUET/College Entrance Prep',
        description: 'Prepare for CUET or state exams for BCom in top colleges like SRCC, Hindu, Christ University.',
        resources: 'CUET Commerce Guide, College websites',
        duration: 'Class 12',
      ),
      RoadmapTask(
        title: 'Financial Literacy & Excel Skills',
        description: 'Learn personal finance, stock market basics, and MS Excel. Essential for all commerce careers.',
        resources: 'Zerodha Varsity, YouTube Excel tutorials',
        duration: 'Ongoing',
      ),
      RoadmapTask(
        title: 'BBA/IPMAT (Optional)',
        description: 'For Integrated MBA: prepare for IPMAT (IIM Indore/Rohtak) or BBA entrance exams.',
        resources: 'Career Launcher, IMS',
        duration: 'Class 12',
      ),
      RoadmapTask(
        title: 'Internships & Practical Experience',
        description: 'Get internship in CA office, bank, or local business. Real-world experience matters.',
        resources: 'Internshala, Local CA firms',
        duration: 'After 12th',
      ),
    ],
    links: [
      OfficialLink(name: 'ICAI', url: 'icai.org'),
      OfficialLink(name: 'CUET', url: 'cuet.samarth.ac.in'),
    ],
  );
}

/// Returns the Arts & Humanities career track.
CareerTrack getArtsTrack() {
  return CareerTrack(
    id: 'arts',
    name: 'Arts & Humanities',
    tagLine: 'The Social Leader',
    idealFor: 'Civil Services (UPSC), Law, Journalism, Design.',
    subjectCombo: 'History, Pol Science, Geography, Psychology.',
    whyRecommended:
        'You are interested in society, governance, or creative fields. This is the strongest base for UPSC/IAS.',
    tasks: [
      RoadmapTask(
        title: 'NCERT Mastery (Class 6-12)',
        description: 'Read all History, Polity, Geography, Economics NCERTs. Foundation for UPSC and all humanities.',
        resources: 'NCERT Books (Old+New)',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'Daily Newspaper Reading',
        description: 'Start reading The Hindu or Indian Express daily. Essential for current affairs and language.',
        resources: 'The Hindu, Indian Express',
        duration: 'Daily - Start NOW',
      ),
      RoadmapTask(
        title: 'CLAT Preparation (For Law)',
        description: 'If interested in becoming a lawyer, prepare for CLAT. Focus on Legal Reasoning, English, GK.',
        resources: 'Universal CLAT Guide, Career Launcher',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'CUET/DU Entrance',
        description: 'For top colleges (DU, JNU, BHU): prepare CUET. Aim for History, Pol Sci, Economics honors.',
        resources: 'CUET Humanities Guide',
        duration: 'Class 12',
      ),
      RoadmapTask(
        title: 'Writing & Communication Skills',
        description: 'Practice essay writing, debates, public speaking. Critical for all Arts careers.',
        resources: 'School debates, writing competitions',
        duration: 'Ongoing',
      ),
      RoadmapTask(
        title: 'Optional: Journalism/Mass Comm Prep',
        description: 'If interested in media: learn about journalism, create blog/YouTube channel for practice.',
        resources: 'Local newspapers, YouTube',
        duration: 'Class 12',
      ),
      RoadmapTask(
        title: 'UPSC Foundation (Early Start)',
        description: 'If targeting IAS/IPS: start basic prep - NCERT, basic current affairs, optionals thinking.',
        resources: 'VisionIAS, Drishti IAS (free material)',
        duration: 'After 12th',
      ),
      RoadmapTask(
        title: 'Social Work & Field Experience',
        description: 'Volunteer in NGOs, understand social issues firsthand. Real experience matters in Arts.',
        resources: 'Local NGOs, social campaigns',
        duration: 'Holidays',
      ),
    ],
    links: [
      OfficialLink(name: 'UPSC', url: 'upsc.gov.in'),
      OfficialLink(name: 'CLAT', url: 'consortiumofnlus.ac.in'),
      OfficialLink(name: 'CUET', url: 'cuet.samarth.ac.in'),
    ],
  );
}

// ==================== SPECIALIZED TRACKS ====================

/// Returns the CA-focused Commerce track.
CareerTrack getCATrack() {
  return CareerTrack(
    id: 'ca',
    name: 'Chartered Accountancy (CA)',
    tagLine: 'The Financial Expert',
    idealFor: 'Accounting, Taxation, Auditing.',
    subjectCombo: 'Commerce (Maths recommended).',
    whyRecommended: 'You excel at accounting and want to become a financial expert.',
    tasks: [
      RoadmapTask(
        title: 'CA Foundation Registration',
        description: 'Register with ICAI after 10th or 12th. Start studying 4 subjects: Accounts, Law, Economics, Maths.',
        resources: 'ICAI official material',
        duration: '4-6 months',
      ),
      RoadmapTask(
        title: 'Clear CA Foundation Exam',
        description: 'Pass all 4 papers. Target: 40% each + 50% aggregate. Study 4-6 hours daily.',
        resources: 'Coaching (Optional): ICAI, CA YouTube channels',
        duration: 'Next exam cycle',
      ),
      RoadmapTask(
        title: 'CA Intermediate Registration',
        description: 'Register for CA Inter (8 months articleship required later). Start Group 1 & 2.',
        resources: 'ICAI study material',
        duration: '1-2 years',
      ),
      RoadmapTask(
        title: 'Articleship (3 Years)',
        description: 'Work under a practicing CA. Learn real-world accounting, auditing, taxation.',
        resources: 'CA firms, Big 4 (if selected)',
        duration: '3 years',
      ),
      RoadmapTask(
        title: 'CA Final Exam',
        description: 'Clear Group 1 & 2 (6 papers each). Most challenging but most rewarding.',
        resources: 'CA coaching, study groups',
        duration: '6 months-1 year',
      ),
      RoadmapTask(
        title: 'Specialization & Practice',
        description: 'Choose: Audit, Tax, Corporate law, or start your own practice.',
        resources: 'ICAI CPE programs',
        duration: 'Career',
      ),
    ],
    links: [
      OfficialLink(name: 'ICAI', url: 'icai.org'),
      OfficialLink(name: 'CA Portal', url: 'eservices.icai.org'),
    ],
  );
}

/// Returns the BBA/MBA-focused Commerce track.
CareerTrack getBBATrack() {
  return CareerTrack(
    id: 'bba',
    name: 'Business Management (BBA/MBA)',
    tagLine: 'The Business Leader',
    idealFor: 'Management, Entrepreneurship, Corporate Jobs.',
    subjectCombo: 'Commerce (Any stream can do BBA).',
    whyRecommended: 'You want to become a business leader or manager.',
    tasks: [
      RoadmapTask(
        title: 'IPMAT/BBA Entrance Prep',
        description: 'Prepare for IPMAT (IIM Indore, Rohtak) or BBA entrances (Symbiosis, Christ, NMIMS).',
        resources: 'Career Launcher, IMS, Oliveboard',
        duration: 'Class 12',
      ),
      RoadmapTask(
        title: 'BBA Degree (3 Years)',
        description: 'Study Marketing, HR, Finance, Operations. Build communication skills, do internships.',
        resources: 'College curriculum',
        duration: '3 years',
      ),
      RoadmapTask(
        title: 'CAT/GMAT Preparation',
        description: 'Prepare for MBA entrance (IIMs, ISB, FMS). Focus on Quant, VARC, LRDI.',
        resources: 'IMS, TIME, Career Launcher',
        duration: 'Final year BBA',
      ),
      RoadmapTask(
        title: 'Summer Internships',
        description: 'Get internships in companies. Experience matters for MBA admissions.',
        resources: 'Internshala, LinkedIn',
        duration: 'Summer breaks',
      ),
      RoadmapTask(
        title: 'MBA from Top B-School',
        description: 'Get MBA from IIM/ISB/FMS. Specialize in Marketing/Finance/Ops/HR.',
        resources: 'B-School curriculum',
        duration: '2 years',
      ),
      RoadmapTask(
        title: 'Corporate Job or Startup',
        description: 'Join MNCs as Manager, Consultant, or start your own business.',
        resources: 'Campus placements, networking',
        duration: 'Career',
      ),
    ],
    links: [
      OfficialLink(name: 'IPMAT', url: 'iimindore.ac.in'),
      OfficialLink(name: 'CAT', url: 'iimcat.ac.in'),
    ],
  );
}

/// Returns the Law-focused Arts track.
CareerTrack getLawTrack() {
  return CareerTrack(
    id: 'law',
    name: 'Law & Judiciary',
    tagLine: 'The Legal Expert',
    idealFor: 'Becoming a Lawyer, Judge, Legal Advisor.',
    subjectCombo: 'Any stream (Arts preferred).',
    whyRecommended: 'You are passionate about justice and argumentation.',
    tasks: [
      RoadmapTask(
        title: 'CLAT Preparation',
        description: 'Prepare for Common Law Admission Test. Study Legal Reasoning, English, GK, Maths, Logic.',
        resources: 'Universal CLAT Guide, Career Launcher',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: '5-Year Integrated LLB',
        description: 'Join NLU or top law college. Study Constitutional Law, Criminal Law, Contract Law, etc.',
        resources: 'College curriculum',
        duration: '5 years',
      ),
      RoadmapTask(
        title: 'Moot Courts & Internships',
        description: 'Participate in moot courts. Intern with lawyers, courts, legal firms.',
        resources: 'College moot societies',
        duration: 'During LLB',
      ),
      RoadmapTask(
        title: 'Bar Council Enrollment',
        description: 'Register with State Bar Council. Get license to practice law.',
        resources: 'Bar Council of India',
        duration: 'After LLB',
      ),
      RoadmapTask(
        title: 'Junior Practice',
        description: 'Work under senior lawyers. Learn court procedures, client handling.',
        resources: 'Law chambers',
        duration: '2-3 years',
      ),
      RoadmapTask(
        title: 'Specialization',
        description: 'Choose: Criminal, Civil, Corporate, Tax law. Or aim for Judiciary exams.',
        resources: 'Bar exams, Judicial Services',
        duration: 'Career',
      ),
    ],
    links: [
      OfficialLink(name: 'CLAT', url: 'consortiumofnlus.ac.in'),
      OfficialLink(name: 'Bar Council', url: 'barcouncilofindia.org'),
    ],
  );
}

/// Returns the UPSC/Civil Services focused Arts track.
CareerTrack getUPSCTrack() {
  return CareerTrack(
    id: 'upsc',
    name: 'UPSC Civil Services (IAS/IPS/IFS)',
    tagLine: 'The Nation Builder',
    idealFor: 'Becoming IAS, IPS, IFS, IRS officers.',
    subjectCombo: 'Arts (History, PolSci) - Best foundation.',
    whyRecommended: 'You want to serve India at the highest level of governance.',
    tasks: [
      RoadmapTask(
        title: 'NCERT Foundation (Class 6-12)',
        description: 'Read ALL History, Polity, Geography, Economics NCERTs. This is 50% of UPSC prep.',
        resources: 'NCERT books (Old + New editions)',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'Daily Newspaper Habit',
        description: 'Read The Hindu or Indian Express daily. Make notes on current affairs.',
        resources: 'The Hindu, Indian Express',
        duration: 'Start NOW - daily',
      ),
      RoadmapTask(
        title: 'Graduate Degree',
        description: 'Get ANY degree (Arts preferred for strong UPSC base). Join DU/JNU if possible.',
        resources: 'College education',
        duration: '3 years',
      ),
      RoadmapTask(
        title: 'Choose Optional Subject',
        description: 'Pick 1 optional (Geography, History, PolSci, Sociology). Start early preparation.',
        resources: 'Standard books for optional',
        duration: 'During graduation',
      ),
      RoadmapTask(
        title: 'UPSC Prelims Prep',
        description: 'Study GS Paper 1 (1000+ MCQs) + CSAT. Solve 10+ years PYQs.',
        resources: 'VisionIAS, Unacademy',
        duration: '1 year focused',
      ),
      RoadmapTask(
        title: 'Mains + Interview',
        description: 'After clearing Prelims: prepare Mains (Essay + 4 GS + Optional). Then Personality Test.',
        resources: 'IAS coaching, test series',
        duration: '6-9 months',
      ),
      RoadmapTask(
        title: 'Service Allocation & Training',
        description: 'Based on rank: get IAS/IPS/IFS. Train at LBSNAA (Mussoorie). Start career!',
        resources: 'Govt training academies',
        duration: '1-2 years training',
      ),
    ],
    links: [
      OfficialLink(name: 'UPSC', url: 'upsc.gov.in'),
      OfficialLink(name: 'LBSNAA', url: 'lbsnaa.gov.in'),
    ],
  );
}
