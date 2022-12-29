class TrainingProgramData {
  TrainingProgramData({
    this.cc = 0,
    this.image = '',
    this.title = '',
    this.desc = ''
  });

  int cc;
  String image;
  String title;
  String desc;

  static List<TrainingProgramData> hotelList = <TrainingProgramData>[
    TrainingProgramData(
        cc: 0xFFFFE767,
        image: 'assets/hoofzy/dog_walking_service.png',
        title: 'Dog Walking',
        desc: 'Lorem ipsum dolor sit'
    ),
    TrainingProgramData(
        cc:0xFFFFC09B,
        image: 'assets/hoofzy/training_service.png',
        title: 'Training',
        desc: 'Lorem ipsum dolor sit'
    ),
    TrainingProgramData(
        cc: 0xFF94E2FF,
        image: 'assets/hoofzy/pet_training_service.png',
        title: 'Pet Sitting',
        desc: 'Lorem ipsum dolor sit'
    ),
    TrainingProgramData(
        cc: 0xFFFFE767,
        image: 'assets/hoofzy/pet_service.png',
        title: 'Training',
        desc: 'Lorem ipsum dolor sit'
    ),
  ];
}
