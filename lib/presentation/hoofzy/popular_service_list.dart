class PopularServiceList {
  PopularServiceList({
    this.cc = 0,
    this.image = '',
    this.title = '',
    this.desc = ''
  });

  int cc;
  String image;
  String title;
  String desc;

  static List<PopularServiceList> popularServiceList = <PopularServiceList>[
    PopularServiceList(
        cc: 0xFFFFCAB5,
        image: 'assets/hoofzy/vetniray.png',
        title: 'Veterinary',
        desc: 'Lorem ipsum dolor sit'
    ),
    PopularServiceList(
        cc:0xFFDFD6C8,
        image: 'assets/hoofzy/pet_service.png',
        title: 'Bording',
        desc: 'Lorem ipsum dolor sit'
    ),
    PopularServiceList(
        cc: 0xFFDBC3FC,
        image: 'assets/hoofzy/grooming.png',
        title: 'Groming',
        desc: 'Lorem ipsum dolor sit'
    ),
  ];
}
