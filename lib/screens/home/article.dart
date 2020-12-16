import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f2f6),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.withOpacity(.3)))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
                        bottom: BorderSide(color: Colors.grey.withOpacity(.3)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    Image.asset(
                      'assets/depresi.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 24, bottom: 13),
                      child: Text(
                        'Penyebab Depresi Pada Mahasiswa',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                            color: Colors.black,
                        )
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.png'),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Abina Mahardika',style: TextStyle(color: Colors.teal[300], fontWeight: FontWeight.bold, fontFamily: 'Lato', fontSize: 17),),
                          Text('31m ago',style: TextStyle(fontSize: 12,color: Colors.grey, fontFamily: 'Lato', fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Depresi pada mahasiswa menjadi masalah kesehatan mental yang tidak dapat dianggap sepele. Kondisi ini dapat terjadi karena stres yang bertumpuk sehingga seseorang tidak stabil secara emosional. Maka dari itu, tekanan untuk belajar dapat memancing keinginan untuk bunuh diri.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                        fontFamily: 'Lato',
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.favorite,color: Colors.red,),
                              SizedBox(width: 4,),
                              Text("231",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(width: 24,),
                          Row(
                            children: <Widget>[
                              Icon(Icons.comment,),
                              SizedBox(width: 4,),
                              Text("231",style: TextStyle(fontWeight: FontWeight.bold),)
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