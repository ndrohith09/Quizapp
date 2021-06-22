import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterquizstarv2/explorepage.dart';
import 'package:flutterquizstarv2/quizpage.dart';
import 'package:flutterquizstarv2/videopage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var path = 'assets/images';
  List<String> images = [
    "assets/images/Ajanta_ellora.jpg",
    "assets/images/fatehpur-sikri.jpg",
    "assets/images/Humayuns-Tomb.jpg",
    "assets/images/India-gate.jpg",
    "assets/images/Mysore_palace.jpg",
    "assets/images/Nalanda_university.jpeg",
    // "assets/images/Nalanda_university.jpeg",
    // "images/java.png",
    // "images/js.png",
    // "images/cpp.png",
    // "images/linux.png",
    // "images/TajMahal.jpeg"
  ];

  // List<String> des = [
  //   "",
  //   "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
  //   "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !",
  //   "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
  //   "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  // ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                // in changelog 1 we will pass the langname name to ther other widget class
                // this name will be used to open a particular JSON file
                // for a particular language
                builder: (context) => getjson(langname),
              ));
            },
            child: Material(
              color: Color.fromARGB(255, 246, 84, 70),
              elevation: 10.0,
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                height: 400,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          // changing from 200 to 150 as to look better
                          height: 150.0,
                          width: 150.0,
                          child: ClipOval(
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        langname,
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontFamily: "Kirang",

                          // fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(20.0),
                    //   child: Text(
                    //     des,
                    //     style: TextStyle(
                    //         fontSize: 15.0,
                    //         color: Colors.white,
                    //         fontFamily: "Gloria"),
                    //     maxLines: 5,
                    //     textAlign: TextAlign.justify,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 70,
            right: -15,
            top: 190,
            bottom: -80,
            child: Row(
              children: [
                Container(
                  // alignment: Alignment.,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GetDetails(langname),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.explore_rounded,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  // alignment: Alignment.,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => VideoPage(langname),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.video_collection_rounded,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 5, blurRadius: 2)
            ],
          ),
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(44, 57, 65, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Treasure Hunt',
                      style: TextStyle(
                        fontFamily: 'MateSC',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Ajanta Ellora", images[0]),
          // ElevatedButton(
          //   onPressed: () {},
          //   style: Butt
          //   child: Icon(Icons.add),
          // ),
          customcard("Fatehpur Sikri", images[1]),
          customcard("Humayuns Tomb", images[2]),
          customcard("India Gate", images[3]),
          customcard("Mysore Palace", images[4]),
          customcard("Nalanda University", images[5]),
          // customcard("Nalanda University", images[5]),
        ],
      ),
    );
  }
}
