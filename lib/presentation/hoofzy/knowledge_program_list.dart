class KnowledgeProgramData {
  KnowledgeProgramData({
    this.cc = 0,
    this.image = '',
    this.title = ''
  });

  int cc;
  String image;
  String title;

  static List<KnowledgeProgramData> knowledgeList = <KnowledgeProgramData>[
    KnowledgeProgramData(
        cc: 0xFFCEF5FF,
        image: 'assets/hoofzy/legal_care.png',
        title: 'Legal'
    ),
    KnowledgeProgramData(
        cc: 0xFFDEEAFF,
        image: 'assets/hoofzy/travel.png',
        title: 'Travel'
    ),
    KnowledgeProgramData(
        cc: 0xFFFFD1AB,
        image: 'assets/hoofzy/nutrition.png',
        title: 'Nutrition'
    ),
    KnowledgeProgramData(
        cc: 0xFFFFD1C9,
        image: 'assets/hoofzy/winter_care.png',
        title: 'Winter Care'
    ),
  ];
}
