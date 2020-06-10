import 'package:sample/utils/enemurations.dart';
import 'package:sample/models/model.dart';

var user = UserModel(
  id: 1,
  name: 'PACKIASEELAN S',
  designation: 'Mobile Develper',
);

var skills = [
  DataModel(
    userId: 1,
    type: DataType.skills,
    name: 'Agile Development & Scrum',
    description: '',
    image: 'assets/images/skills_agile.png',
  ),
  DataModel(
    userId: 1,
    type: DataType.skills,
    name: 'Test Driven Development',
    description: '',
    image: 'assets/images/skills_tdd.png',
  ),
  DataModel(
    userId: 1,
    type: DataType.skills,
    name: 'Object Oriented Programming & Solid Principles',
    description: '',
    image: 'assets/images/skills_oops.png',
  ),
  DataModel(
    userId: 1,
    type: DataType.skills,
    name: 'Responsive Design',
    description: '',
    image: 'assets/images/skills_responsive.png',
  ),
  DataModel(
    userId: 1,
    type: DataType.skills,
    name: 'Cross Functional Teams',
    description: '',
    image: 'assets/images/skills_cross.png',
  ),
];

var about = AboutUserModel(
    image: 'assets/images/about_thumbnail.png',
    name: 'PACKIASEELAN S',
    from: 'CHENNAI, INDIA',
    points: [
      'I am a Mobile developer with 4+ yearas of experience in programming',
      'point 2',
      'point 3',
      'point 4',
      'point 5',
    ]);

var social = [
  SocialModel(
    name: 'medium',
    image: 'assets/images/about_medium.png',
    profileLink: 'https://medium.com/@packiaseelan14',
  ),
  SocialModel(
    name: 'linkedin',
    image: 'assets/images/about_linkedin.png',
    profileLink: 'https://www.linkedin.com/in/packiaseelan14/',
  ),
  SocialModel(
    name: 'twitter',
    image: 'assets/images/about_twitter.png',
    profileLink: 'https://twitter.com/packiaseelan14',
  ),
  SocialModel(
    name: 'github',
    image: 'assets/images/about_github.png',
    profileLink: 'https://github.com/Packiaseelan',
  ),
];
