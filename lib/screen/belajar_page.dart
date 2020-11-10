import 'package:flutter/material.dart';
import 'package:quots_app/widget/belajar_bar.dart';

class BelajarPage extends StatefulWidget {
  @override
  _BelajarPageState createState() => _BelajarPageState();
}

class _BelajarPageState extends State<BelajarPage> {
  List<String> titleBelajar = [
    "Senjata",
    "Hiduplah",
    "Berhenti Belajar",
    "Tujuan",
    "Jika Tidak",
    "Wawasan",
    "Pahitnya Proses Belajar",
    "Lelah itu...",
    "Menertawakan Mu",
    "Banyak Ilmu"
  ];
  List<String> subBelajar = [
    "Pendidikan adalah merupakan senjata yang paling mematikan di dunia, karena hanya dengan pendidikan anda bisa mengubah dunia.",
    "Hiduplah seolah kau engkau akan mati besok dan belajarlah seolah engkau hidup selamanya.",
    "Mereka yang ingin berhenti belajar dan menuntut ilmu akan menadi pemilik masa lalu, tetapi mereka yang terus giat belajar akan menjadi pemilik masa depan.",
    "Tujuan hidup kita memang bukan hanya tentang belajar dan belajar tetapi jikalau itu saja tidak bisa kita peroleh, lalu apa yang akan kita capai.",
    "jika tidak ingin merasakan pahitnya dalam proses mencari ilmu, maka bersiaplah untuk menahan rasa sakitnya kebodohan sepanjang hidup.",
    "Pendidikan bukan hanya persoalan ke sekolah dan kampus lalu mendaptkan ijazah, tapi soal memperluas wawasan serta menyerap ilmu kehidupan.",
    "Jika tidak ingin merasakan pahitnya dalam proses mencari ilmu, maka bersiaplah untuk menahan rasa sakitnya kebodohan sepanjang hidup.",
    "Lelah itu bukan yang sedang sekolah atau kuliah, tetapi yang lela itu adalah mereka yang banting tulang dalam membiayai pendidikanmu.",
    "Jika mereka menertawakanmu dalam proses belajarmu maka tawa itu harus berubah menjadi tepuk tangan meriah karena hasil dari kerja kerasmu.",
    "Jika hidup tidak bisa memberikan banyak ilmu pengetahuan kepada orang lain, maka berikanlah ilmu minimal untuk diri sendiri sebagai bekal."
  ];
  List<String> sourceBelajar = [
    "Nelson Mandela",
    "Mahatama Gandhi",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya",
    "saya tidak tahu sumbernya"
  ];
  List<String> imgBelajar = [
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
        appBar: belajarBar(),
        body: Container(
          child: ListView.builder(
              itemCount: titleBelajar.length,
              itemBuilder: (BuildContext context, int index) {
                final belajar = titleBelajar[index].toString();
                final subs = subBelajar[index].toString();
                final namas = sourceBelajar[index].toString();
                final backGambar = imgBelajar[index].toString();
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 200.0,
                  child: GestureDetector(
                    child: Stack(
                      children: <Widget>[
                        background(backGambar),
                        Container(
                          child: topContent(belajar, subs, namas),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
    );
  }
  background(String backGambar) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(backGambar)),
      ),
    );
  }

  topContent(String belajar, String subs, String namas ) {
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
              belajar,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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
              subs,
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
                namas,
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

