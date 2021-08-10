import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class OneCikanlar extends StatelessWidget {
  // const OneCikanlar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> oneCikanlar = [
      "https://alpha.uscreencdn.com/499xnull/images/programs/524121/horizontal/big_13348_2Fcatalog_image_2F524121_2FP4QQg1aVQwygOxPaXXon_sepetpl.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/975316/horizontal/big_13348_2Fcatalog_image_2F975316_2Fso9fUULoS3daorM0fJO3_anakapak.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/827385/horizontal/big_13348_2Fcatalog_image_2F827385_2FQTF3mWU3QReeIeqlgWrF_ek.kapak1.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/542705/horizontal/big_13348_2Fcatalog_image_2F542705_2FmzRfE1SOCgbwXQ1cNgQF_esra1.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/525021/horizontal/big_13348_2Fcatalog_image_2F525021_2FuVSCGURlSsOXYxKsp9cB_tabatakarina.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/699592/horizontal/big_13348_2Fcatalog_image_2F699592_2FyBokhnFaTDiQSQtcY4u8_fsenkapak.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/736789/horizontal/big_13348_2Fcatalog_image_2F736789_2FcbxAAnllT0OVuRzvOlpI_movement101.1.jpg",
      "https://alpha.uscreencdn.com/499xnull/images/programs/1118782/horizontal/big_13348_2Fcatalog_image_2F1118782_2FDVnZG0YlTuGG8DTdWCUD_bhmana.jpg",
    ];
    List<String> isimler = [
      "Ağırsağlam ile Powerlifting Development  \n by Furkan Kaya",
      "Ceyhan Çelik ile bireysel futbol drilleri \n by Ceyhan Çelik",
      "Ebru Karaduman ile 6 Haftada 2 Beden İncelme! \n by Ebru Karaduman",
      "Esra Güngör ile Pilates \n by Esra Güngör",
      "Karina ile HIIT Tabata \n by  Karina",
      "Furkan Şen ile MAXIM-US by \nFurkan Şen",
      "Emir Eraslan ile Movement 101 by \n Emir Eraslan",
      "Balaban Hybrid Method by \n Ertan Balaban",
    ];
    return Container(
      height: 170.0,
      width: double.maxFinite,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    oneCikanlar[index],
                  ),
                ),
              ),
              child: Container(
                width: double.maxFinite,
                // padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    SizedBox(
                      height: 138,
                    ),
                    Text(
                      isimler[index],
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        autoplay: true,
        autoplayDisableOnInteraction: true,
        itemCount: 8,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
