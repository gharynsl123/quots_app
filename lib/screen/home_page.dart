import 'package:flutter/material.dart';
import 'package:quots_app/screen/belajar_page.dart';
import 'package:quots_app/screen/hidup_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> title = [
    "Gagal",
    "Kita",
    "Pendidikan",
    "Hidup",
    "Mencari Ilmu",
    "Peria",
    "Tiket Masa Depan",
    "Cita Cita mu",
    "Pendidikan",
    "Murid"
  ];
  List<String> subTitle = [
    "Saya belum gagal. Saya baru saja menemukan 10.000 cara yang tidak akan berhasil",
    "Kita adalah apa yang kita percayai",
    "Pendidikan adalah senjata paling mematikan di dunia, karena dengan pendidikan, Anda dapat mengubah dunia",
    "Hiduplah seolah engkau mati besok. Belajarlah seolah engkau hidup selamanya",
    "Jika seseorang bepergian dengan tujuan mencari ilmu, maka Allah akan menjadikan perjalanannya seperti perjalanan menuju surga",
    "Jika anda mendidik seorang pria, maka seorang pria akan terdidik. Tapi jika anda mendidik seorang wanita, sebuah generasi akan terdidik",
    "Pendidikan adalah tiket ke masa depan. Hari esok dimiliki oleh orang-orang yang mempersiapkan dirinya sejak hari ini",
    "Gantungkan cita-cita mu setinggi langit! Bermimpilah setinggi langit. Jika engkau jatuh, engkau akan jatuh di antara bintang-bintang",
    "Pendidikan bukan persiapan untuk hidup. Pendidikan adalah hidup itu sendiri",
    "Murid yang dipersenjatai dengan informasi akan senantiasa memenangkan pertempuran"
  ];
  List<String> sourceName = [
    "Thomas Alva Edison",
    "C.S Lewis",
    "Nelson Mandela",
    "Mahatma Gandhi",
    "Nabi Muhammad SAW",
    "Brigham Young",
    "Malcolm X",
    "Ir. Soekarno",
    "John Dewey",
    "Meladee McCarty",
  ];

  List<String> img = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
//        Row Button
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5.0,right: 5.0, top: 5.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Color(0xff00D1FF))),
                  color: Color(0xff00D1FF),
                  child: Text(
                    'Belajar',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BelajarPage()));
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 5.0, top: 5.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Color(0xff00D1FF))),
                  color: Color(0xff00D1FF),
                  child: Text(
                    'Hidup',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute (builder: (context) => HidupPage()));
                  },
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

//        Headr Content Whit Notif
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: MediaQuery.of(context).size.width - 176,
            width: MediaQuery.of(context).size.width - 000,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0.0, 2.0),
                      color: Colors.black26)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://baxcompany.com/wp-content/uploads/2017/08/background-quotes-1024x683.jpg'))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("AYO, Tetap Semangat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Tooltip(
                            message: "Hai",
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.info_outline),
                                onPressed: () {
                                  _showDialogEditLocation(context);
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

//        Text
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Text(
            "Top Search",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),

//        list Horizontal
        Container(
          decoration: BoxDecoration(
            //untuk Border Radius
            borderRadius: BorderRadius.circular(15.0),
          ),
          height: MediaQuery.of(context).size.height - 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
//                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: title.length,
                        itemBuilder: (context, index) {
                          final nama = title[index].toString();
                          final deskripsi = subTitle[index].toString();
                          final source = sourceName[index].toString();
                          final gambar = img[index].toString();
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            width: 400,
                            decoration: BoxDecoration(
                              //untuk Border Radius
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(
                                      //withOpacity itu adalah ketebalan warna yang kita berikan
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.luminosity),
                                  image: AssetImage(gambar)),
                            ),
                            height: 300.0,
                            padding: EdgeInsets.only(top: 15.0, left: 10),
                            child: GestureDetector(
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: topContent(
                                              nama, deskripsi, source),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
              ),
            ],
          ),
        )
      ],
    );
  }

  //Notif Void
  void _showDialogEditLocation(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Informasi',
              style: TextStyle(color: Color(0xff00D1FF)),
              textAlign: TextAlign.center,
            ),
            content: Text(
                "Aplikasi Ini Masih Dalam Taham Awal Data yang tersedia Hanyalan Data Paslu tetapi Ada Beberapa Data yang Asli."),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
          );
        });
  }

  topContent(String nama, String deskripsi, String source) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Text(
              nama,
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
              deskripsi,
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
                source,
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
