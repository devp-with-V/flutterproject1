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
        title: 'CA Foundation',
        description: 'Entry to Chartered Accountancy.',
        resources: 'ICAI',
        duration: 'After 12th',
      ),
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
    idealFor: 'Civil Services (UPSC), Law, Journalism, Design.',
    subjectCombo: 'History, Pol Science, Geography, Psychology.',
    whyRecommended:
        'You are interested in society, governance, or creative fields. This is the strongest base for UPSC/IAS.',
    tasks: [
      RoadmapTask(
        title: 'NCERT Reading',
        description: 'Read History/PolSci NCERTs for base.',
        resources: 'School Books',
        duration: 'Class 11-12',
      ),
      RoadmapTask(
        title: 'CLAT',
        description:
            'If interested in Law, prepare for National Law Universities.',
        resources: 'CLAT Consortium',
        duration: 'Exam: Dec/May',
      ),
      RoadmapTask(
        title: 'UPSC Prep',
        description: 'Start reading newspapers daily.',
        resources: 'The Hindu',
        duration: 'Daily',
      ),
    ],
    links: [OfficialLink(name: 'UPSC', url: 'upsc.gov.in')],
  );
}
