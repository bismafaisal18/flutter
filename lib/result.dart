import 'package:flutter/material.dart';
import 'home.dart';

class ResultPage extends StatefulWidget {
  final int marks;

  ResultPage({required this.marks});

  @override
  State<ResultPage> createState() => _ResultPageState(marks);
}

class _ResultPageState extends State<ResultPage> {
  int marks;
  _ResultPageState(this.marks);
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message = "";
  String image = "";

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    } else {
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text(
          "Result",
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 100,
          ),

          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Material(
                  elevation: 10.0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Material(
                          child: Container(
                            width: 300.0,
                            height: 300.0,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage(
                                  image,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 15.0,
                          ),
                          child: Center(
                            child: Text(
                              message,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "Quando",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 25.0,
                        ),
                        side: BorderSide(width: 3.0, color: Colors.indigo),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        splashFactory: InkSplash.splashFactory,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
