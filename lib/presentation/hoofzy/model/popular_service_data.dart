class PopularServiceData {
  PopularServiceData({
    this.cc = 0,
    this.image = '',
    this.title = '',
    this.desc = ''
  });

  int cc;
  String image;
  String title;
  String desc;

  static List<PopularServiceData> popularServiceList = <PopularServiceData>[
    PopularServiceData(
        cc: 0xFFFFCAB5,
        image: 'assets/hoofzy/vetniray.png',
        title: 'Veterinary',
        desc: 'Lorem ipsum dolor sit'
    ),
    PopularServiceData(
        cc:0xFFDFD6C8,
        image: 'assets/hoofzy/pet_service.png',
        title: 'Bording',
        desc: 'Lorem ipsum dolor sit'
    ),
    PopularServiceData(
        cc: 0xFFDBC3FC,
        image: 'assets/hoofzy/grooming.png',
        title: 'Groming',
        desc: 'Lorem ipsum dolor sit'
    ),
  ];
}
