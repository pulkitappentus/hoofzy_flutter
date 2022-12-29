class TrendingCommunityData {
  TrendingCommunityData({
    this.image = '',
    this.title = '',
    this.desc = '',
    this.profileImage = ''
  });

  String image;
  String title;
  String desc;
  String profileImage;

  static List<TrendingCommunityData> trendingCommunityList = <TrendingCommunityData>[
    TrendingCommunityData(
        image: 'assets/hoofzy/trending_community_image.png',
        title: 'Jess Dsouza',
        desc: 'I dont always bark...',
        profileImage: 'assets/hoofzy/profile.png',
    ),
    TrendingCommunityData(
      image: 'assets/hoofzy/trending_community_image.png',
      title: 'Jess Dsouza',
      desc: 'I dont always bark...',
      profileImage: 'assets/hoofzy/profile.png',
    ),
    TrendingCommunityData(
      image: 'assets/hoofzy/trending_community_image.png',
      title: 'Jess Dsouza',
      desc: 'I dont always bark...',
      profileImage: 'assets/hoofzy/profile.png',
    ),
  ];
}
