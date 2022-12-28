class BestSellingProductList {
  BestSellingProductList({
    this.cc = 0,
    this.image = '',
    this.title = '',
    this.price = ''
  });

  int cc;
  String image;
  String title;
  String price;

  static List<BestSellingProductList> bestProductList = <BestSellingProductList>[
    BestSellingProductList(
        cc: 0xFFFFFFA5,
        image: 'assets/hoofzy/every_dawg.png',
        title: 'Every Dawg',
        price: '₹ 499'
    ),
    BestSellingProductList(
        cc: 0xFFB2FCD7,
        image: 'assets/hoofzy/i_am_pro.png',
        title: 'IAMSO PRO',
        price: '₹ 599'
    ),
    BestSellingProductList(
        cc: 0xFFFFD2D1,
        image: 'assets/hoofzy/nutram.png',
        title: 'Nutram',
        price: '₹ 439'
    ),
  ];
}
