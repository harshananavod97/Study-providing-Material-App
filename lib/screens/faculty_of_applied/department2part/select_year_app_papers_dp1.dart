import 'package:flutter/material.dart';
import 'package:flutter_downloader_example/components/back.dart';
import 'package:flutter_downloader_example/components/custombutton.dart';
import 'package:flutter_downloader_example/screens/about/about.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/pastpapers/fristpastthech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/pastpapers/secondpastech.dart';
import 'package:flutter_downloader_example/screens/faculty_of_applied/department2part/pastpapers/thirdpastech.dart';

import 'package:hexcolor/hexcolor.dart';

import 'pastpapers/forthpastech.dart';

class Selectyearpapersdp2 extends StatefulWidget {
  final c;
  const Selectyearpapersdp2(this.c);

  @override
  _Selectyearpapersdp2State createState() => _Selectyearpapersdp2State(this.c);
}

class _Selectyearpapersdp2State extends State<Selectyearpapersdp2> {
  final c;
  _Selectyearpapersdp2State(this.c);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#FFF9C4"),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Uppersection(size: size),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Customelevated("Frist Year", c, MyApp1dp2p()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Second year", c, MyApp2dp2p()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Third Year", c, MyApp3dp2p()),
                      SizedBox(
                        height: 30,
                      ),
                      Customelevated("Fourth year", c, MyApp4dp2p()),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Uppersection extends StatelessWidget {
  const Uppersection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        right: 50,
        bottom: 100,
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ));
          },
          icon: Icon(
            Icons.group,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      Positioned(left: 50, bottom: 100, child: Backbuttons()),
      Positioned(
        right: 50,
        bottom: 100,
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ));
          },
          icon: Icon(
            Icons.group,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      Image.asset(
        "images/applieduda.png",
        width: size.width,
        fit: BoxFit.fitWidth,
      ),
      Image.asset(
        "images/top.png",
        width: size.width,
        fit: BoxFit.fitWidth,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "University of Vavuniya",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            "Faculty of Applied Science",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "Select Your Year",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: HexColor("#373737")),
          ),
        ),
      ),
      Positioned(left: 50, bottom: 100, child: Backbuttons()),
      Positioned(
        right: 50,
        bottom: 100,
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ));
          },
          icon: Icon(
            Icons.group,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
    ]);
  }
}
