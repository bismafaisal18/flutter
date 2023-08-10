import 'package:flutter/material.dart';
import 'package:quizapp_bharatintern_flutterapp_task3/quizmain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> languagename=[
    "Python",
    "Java",
    "Javascript",
    "C++",
    "Linux"
  ];
  List<String> images=[
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png"

  ];

  Widget customcard(String languagename, String image) {
    return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 30.0,
        ),
        child: InkWell(
          onTap: () {Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(
            builder: (context) => getjson(languagename),
          ));
            },
          child: Material(
            color: Colors.deepPurple.shade200,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                      child:Container(
                        width: 150.0,
                        height: 150.0,
                        child: Column(
                          children:<Widget> [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: ClipOval(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    image,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      languagename,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "Quando",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text(
          "Quiz App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          customcard(languagename[0],images[0]),
          customcard(languagename[1],images[1]),
          customcard(languagename[2],images[2]),
          customcard(languagename[3],images[3]),
          customcard(languagename[4],images[4]),
        ],
      ),
    );
  }
}
