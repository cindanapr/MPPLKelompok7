import 'package:flutter/material.dart';

class Article3 extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f2f6),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.withOpacity(.3)))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Article',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[300]),
                          ),
                          Text(
                            'Thursday, Dec 17',
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey.withOpacity(.3)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/consultation.jpg',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 24, bottom: 13),
                        child: Text(
                            'Beberapa Hal Positif yang Akan Didapat Dari Konseling',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato',
                              color: Colors.black,
                            )),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar.png'),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Rahman Sinuga',
                              style: TextStyle(
                                  color: Colors.teal[300],
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                  fontSize: 17),
                            ),
                            Text('2 days ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                            'Meskipun memang benar bahwa setiap orang akan mengalami kesedihan dan gejala depresi setelah kejadian yang menyusahkan, kesedihan yang terus-menerus dan terus-menerus hadir dalam depresi ringan menimbulkan kekhawatiran dan memerlukan perawatan medis. \n\nApa penyebab depresi ringan? Seperti depresi lainnya, depresi ringan juga diyakini sebagai kondisi multifaktorial. Yang berarti disebabkan oleh faktor genetik, ketidakseimbangan biokimia, tekanan hidup, dan faktor lingkungan.Pada dasarnya penyebab utama dari depresi ringan tidak diketahui. \n\nNamun, sebagian dari mereka memiliki faktor-faktor lain, seperti penyakit kronis, gangguan kejiwaan lain, atau akibat penggunaan narkoba. Apa yang harus dilakukan? Jika seseorang terbukti mengalami gejala yang merupakan ciri-ciri depresi ringan sebaiknya segera memilih tindakan untuk mengobatinya. \n\nBeberapa langkah ini mungkin bisa menjadi pilihan untuk mengobati depresi ringan, seperti: \n1. Mengunjungi Dokter, \n2. Perubahan Gaya Hidup, serta \n3. Konsultasi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.2,
                              fontFamily: 'Lato',
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "231",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.comment,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "231",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
