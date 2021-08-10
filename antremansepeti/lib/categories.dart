import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Categories extends StatelessWidget {
  List<String> kategoriUrl = [
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/00748a6a-feac-49cc-bd98-a5757bd73027.jpg", //fitness
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/fdf11f72-fafb-486b-8c47-6c7a0694c405.jpg", //yoga,
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/8ed65d3f-c516-4064-8443-37da5ae05524.jpg", //bjj
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/6528252a-515a-40e8-9eac-161bf87d162a.jpg", //pilates
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/c6186b53-53ec-4abb-ad78-6907f22248a4.jpg", //boks & muay thai
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/92fb9ed8-b1a3-4c0b-900b-64d00a44fb93.jpg", //canlı yayinlar
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/24403bf2-e028-4d25-bb7d-7b8d9e2c3a12.jpg", //fizyoterapi
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/86bd6025-db8f-485a-ab15-2cc119962420.jpg", //beslenme
    "https://alpha.uscreencdn.com/360xnull/13348/uploads/dfbf89fd-86ff-4f95-ad78-31d22299a732.jpg", //diğer sporlar
  ];

  List<String> kategoriText = [
    "FİTNESS",
    "YOGA",
    "BJJ",
    "PİLATES",
    "BOKS & MUAY THAİ",
    "CANLI YAYINLAR",
    "FİZYOTERAPİ",
    "BESLENME",
    "DİĞER SPORLAR"
  ];
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: new CustomLayoutOption(startIndex: -1, stateCount: 3)
          .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
        new Offset(-370.0, -40.0),
        new Offset(0.0, 0.0),
        new Offset(370.0, -40.0)
      ]),
      itemWidth: 300.0,
      itemHeight: 200.0,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => print("deneme"),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  kategoriUrl[index],
                ),
              ),
            ),
            child: Container(
              width: double.maxFinite,
              // padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    kategoriText[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 9,
      autoplay: true,
      autoplayDisableOnInteraction: true,
    );
  }
}
