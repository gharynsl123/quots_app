import 'package:flutter/material.dart';
import 'package:quots_app/detail/detail_hidup.dart';
import 'package:quots_app/widget/hidup_bar.dart';

class HidupPage extends StatefulWidget {
  @override
  _HidupPageState createState() => _HidupPageState();
}

class _HidupPageState extends State<HidupPage> {
  List<String> titleHidup = [
    "Berhenti Menyalahkan Segalanya",
    "Ambil Risiko, Bermimpi Lebih Besar, dan Berharap Besar",
    "Kerjakan dengan Lebih dan Sepenuh Hati",
    "Lakukan Apa yang Membuatmu Bahagia",
    "Jangan Pernah Menyerah Apapun yang Terjadi",
    "Syukuri dan Hargai Hal-Hal yang Anda Miliki",
    "Nikmati dan Hargai Perubahan dalam Kehidupan",
    "Keraguan adalah Musuh Terbesar dalam Meraih Mimpi",
    "Memaafkan Membuat Anda Menjadi Pribadi yang Semakin Kuat",
    "Selalu Lakukan Perubahan Kecil ke Arah yang Lebih Baik",

  ];
  List<String> subHidup = [
    "Tindakan menyalahkan hanya akan membuang waktu. Sebesar apapun kesalahan yang Anda timpakan ke orang lain, dan sebesar apapun Anda menyalahkannya, hal tersebut tidak akan mengubah Anda",
    "Ambillah risiko yang lebih besar dari apa yang dipikirkan orang lain aman. Berilah perhatian lebih dari apa yang orang lain pikir bijak. Bermimpilah lebih dari apa yang orang lain pikir masuk akal",
    "Ia yang mengerjakan lebih dari apa yang dibayar pada suatu saat akan dibayar lebih dari apa yang ia kerjakan",
    "Jangan tanyakan pada diri Anda apa yang dibutuhkan dunia. Bertanyalah apa yang membuat Anda hidup, kemudian kerjakan. Karena yang dibutuhkan dunia adalah orang yang antusias",
    "Janganlah pernah menyerah ketika Anda masih mampu berusaha lagi. Tidak ada kata berakhir sampai Anda berhenti mencoba",
    "Janganlah menganggap remeh hal-hal yang terdekat dengan hati Anda. Rangkullah mereka seperti sama berharganya dengan hidup Anda, karena tanpa mereka hidup adalah sia-sia",
    "Perubahan itu menyakitkan, Ia menyebabkan orang merasa tidak aman, bingung, dan marah. Orang menginginkan hal seperti sediakala, karena mereka ingin hidup yang mudah",
    "Satu-satunya batasan untuk meraih mimpi kita adalah keragu-raguan kita akan hari ini. Marilah kita maju dengan keyakinan yang aktif dan kuat",
    "Orang yang lemah tidak mampu memaafkan. Memaafkan adalah ciri orang yang kuat",
    "Kembangkan sikap untuk selalu menjadi lebih baik. Membuat perbedaan yang kecil dalam tindakan akan menghasilkan perbedaan yang besar dalam hasil yang diperoleh",
  ];
  List<String> sourceHidup = [
    "Wayne Dyer",
    "Claude T. Bissell",
    "Napoleon Hill",
    "Harold Whitman",
    "Brian Dyson",
    "Peribahasa Cina",
    "Richard Marcinko.",
    "Franklin Roosevelt",
    "Mahatma Gandhi",
    "Brian Tracy"
  ];
  List<String> imgHidup = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hidupBar(),
      body: Container(
        child: ListView.builder(
            itemCount: titleHidup.length,
            itemBuilder: (BuildContext context, int index) {
              final hidup = titleHidup[index].toString();
              final subsHidup = subHidup[index].toString();
              final namaHidup = sourceHidup[index].toString();
              final backHidup = imgHidup[index].toString();
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 200.0,
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      background(backHidup),
                      Container(
                        child: topContent(hidup, subsHidup, namaHidup),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DeatilHidup(itemNamaHidup: hidup,
                        itemSubHidup: subsHidup, itemSourceHidup: namaHidup, itemImgHidup: backHidup,)
                    ));
                  },
                ),
              );
            }),
      ),
    );
  }

  background(String backHidup) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(backHidup)),
      ),
    );
  }

  topContent(String hidup, String subsHidup, String namaHidup ) {
    return new Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Text(
              hidup,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.lightBlue,
            padding: EdgeInsets.symmetric(horizontal: 90.0),
          ),
          SizedBox(
            height: 8.0,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              subsHidup,
              style: TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.only(top: 25.0),
              width: MediaQuery.of(context).size.width - 000,
              child: Text(
                namaHidup,
                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.end,
              ),
            ),
          )
        ],
      ),
    );
  }
}

