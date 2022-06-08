class HDoctor {
  String? firstname;
  String? lastname;
  String? specialist;
  String? image;
  double? rating;
  String? location;
  String? descone;
  String? desctwo;
  HDoctor(
      {this.firstname,
      this.lastname,
      this.specialist,
      this.image,
      this.rating,
      this.location,
      this.descone,
      this.desctwo});
}

List<HDoctor> hDoctorList = [
  HDoctor(
      firstname: 'Mark X.',
      lastname: 'Lowney',
      specialist: 'Kidney Specialist',
      image: 'images/doctor1.png',
      rating: 4.3,
      location: "Bainbridge, Maryland",
      descone:
          "Dr. Mark X. Lowney was born in Bainbridge, Maryland, to an orthodontist and registered nurse. His family relocated to Connecticut, where his father established a thriving dental practice. It's no surprise that Dr. Lowney was drawn to the medical field.",
      desctwo:
          "As a women's health care provider, Dr.Lowney became aware of other concerns of his patients, particularly age-related concerns. This led him to become one of the first double board-certified physicians in the country specializing in both OB/GYN and Cosmetic Surgery."),
  HDoctor(
      firstname: 'Chad',
      lastname: 'Deal',
      specialist: 'Teeth Specialist',
      image: 'images/doctor2.png',
      rating: 4.7,
      location: 'Chattanooga, Tennessee',
      descone:
          "n accomplished and recognized cosmetic surgeon located in Chattanooga, Tennessee, Dr. Robert Chad Deal got his start in entrepreneurship when he purchased Southern Surgical Arts three years ago. Under new leadership, the company would experience immense growth, credited to his business model prioritizing scaling costs and efficiency.",
      desctwo:
          "He has gone above and beyond to create success for himself and his business in a time where COVID-19 greatly affected the economy. Most notably, he understood the importance of social media marketing. Dr. Deal's Instagram is verified and has amassed over 600,000 followers in only 18 months, leading to over half of his revenue now coming from out-of-town patients. Southern Surgical Arts has significant national recognition coming from a city of only 185,000 people."),
  HDoctor(
      firstname: 'Venus',
      lastname: 'Nicolino',
      specialist: 'Heart Specialist',
      image: 'images/doctor6.png',
      rating: 4.2,
      location: 'Philadelphia, Pennsylvania',
      descone:
          "Dr. V grew up in West Philly in a 600-square-foot home packed with seven people and a German Shepherd. Her mom never attended high school, and her dad busted his knuckles on old Chevys for a living. She paid attention to that work ethic that taught her self-help was fundamental. Now she's deep into the self-help world, toting an irreverent attitude that can never be mistaken for unengaged. Real people with real problems welcome genuine guidance.",
      desctwo:
          "Dr. V holds a master's degree in counseling psychology and a master's degree and a doctorate in clinical psychology. Dr. V is seemingly everywhere that finds folks in need of managing that unruly organ between the ears, be it social media, television, radio or print. Digitally, one can listen to and watch Dr. V dish out sharp advice on her podcast, The Tea with Dr. V, where she uses her warm and fiery style of psychological support to influence the current generation and those to come."),
  HDoctor(
      firstname: 'Jonathan',
      lastname: 'Kaplan',
      specialist: 'Bone Specialist',
      image: 'images/doctor4.png',
      rating: 4.5,
      location: 'Alexandria, Louisiana',
      descone:
          "Dr. Jonathan Kaplan, otherwise known as the Real Dr. Bae, grew up in Alexandria, Louisiana, with six older siblings. Of the seven, four of the siblings became doctors. Dr. Kaplan went to college at the University of Texas, followed by medical school at LSU New Orleans, surgical residency at LSU-Charity Hospital, and his plastic surgery fellowship at the Cleveland Clinic. Now he lives in San Francisco with his family, where he's the owner of Pacific Heights Plastic Surgery.",
      desctwo:
          "In 2011, he also founded BuildMyBod Health, a price-transparency and lead-generation platform. BuildMyBod uses an AI chatbot to quickly and easily provide consumers visiting a doctor's website with an automated, estimated cost of services the consumer is considering. And in turn, the doctor receives the consumer's contact info as a lead for following up. He knew how much it aggravated patients to be told they couldn't have a quote in advance, so he created a solution that would benefit everyone involved."),
];
