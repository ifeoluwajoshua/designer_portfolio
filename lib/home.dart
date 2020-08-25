import 'package:flutter/material.dart';
import './port.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  launchUrl() async {
    const url = 'https://wa.me/2349037952330';
    try {
      launch(url);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: height * 0.09),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    greeting(),
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'FjallaOne-Regular'),
                  ),
                  SizedBox(
                    width: width * 0.5,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 100,
                    child: Image.asset(
                      'images/admin.png',
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      ScaleAnimatedTextKit(
                        repeatForever: true,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "Hello I'm Adesiyan Jesutobiloba",
                            "Forex Trader",
                            "Sex fuck boy"
                          ],
                          textStyle: TextStyle(
                              fontSize: 20.0, fontFamily: "FjallaOne-Regular", color: Colors.white,),
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                      ColorizeAnimatedTextKit(
                        repeatForever: true,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "Axon Digital Agency",
                            "Axon Digital Agency",
                          ],
                          textStyle: TextStyle(
                              fontSize: 35.0, fontFamily: "FjallaOne-Regular"),
                          colors: [
                            Colors.purple,
                            Colors.blue,
                            Colors.yellow,
                            Colors.red,
                          ],
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                    ],
                  ),
                ],
              ),
              //SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue[200],
                            Color.fromRGBO(0, 0, 200, 2),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: launchUrl,
                        height: 50,
                        child: Text(
                          'Contact me',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue[200],
                          Color.fromRGBO(0, 0, 200, 2),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApiTest(),
                          ),
                        );
                      },
                      height: 50,
                      //color: Colors.blue,
                      child: Text(
                        'See my work',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Who We're",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'FjallaOne-Regular',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TypewriterAnimatedTextKit(
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [
                          "Axon Digital Agency is brand registered under the Corporate Affairs Commission with RC 3077403.We offer profession services in the following fields.\n\nBusiness Branding\nEvent Management\nModel Management\nDigital Marketing",
                        ],
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "FjallaOne-Regular",
                          //fontFamily: "Agne",
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              SlideFadeTransition(
                  delayStart: Duration(milliseconds: 800), child: PortView()),
              SizedBox(height: height * 0.02),
              Review(),
              //CarouselWithIndicatorDemo(),
              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  color: Color.fromRGBO(0, 0, 200, 2),
                  height: 10,
                  thickness: 4,
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Follow Me',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'FjallaOne-Regular',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Let us be social',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'FjallaOne-Regular',
                            color: Colors.white70,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            FaIcon(
                              FontAwesomeIcons.facebook,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.twitter),
                            SizedBox(
                              width: 5,
                            ),
                            FaIcon(FontAwesomeIcons.linkedin),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Copyright Axon digitals 2020',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  // fontFamily: 'FjallaOne-Regular',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
