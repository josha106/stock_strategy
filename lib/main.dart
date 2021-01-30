import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userImageurl =
      'https://blog.kakaocdn.net/dn/bhk3Sg/btquM9BVthu/1Par8gNR9w6UB96dEQ7k70/img.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(userImageurl))),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Yang Mi',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 100,
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    decoration: BoxDecoration(color: Color(0xffe3e3e3)),
                    child: Text('KOSPI'),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    decoration: BoxDecoration(color: Color(0xffe3e3e3)),
                    child: Text('KOSDAQ'),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    decoration: BoxDecoration(color: Color(0xffe3e3e3)),
                    child: Text('NASDAQ'),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(color: Color(0xffe3e3e3)),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xffe3e3e3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child:
                    Center(child: Text('검색', style: TextStyle(fontSize: 18))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
