import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './data.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ApiTest extends StatefulWidget {
  @override
  _ApiTestState createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  String baseUrl =
      'https://946971854797916:5Q0zFIYtxq8O-wHkopokbWl048w@api.cloudinary.com/v1_1/ifeoluwajoshua/resources/image/upload';

  //'https://123456789987654:azdRJBNv1B3TBQLI4rK4xK1dPXD@api.cloudinary.com/v1_1/demo/resources/image';

 Future<List<Resources>> getPhotos() async {
    return await http.get(baseUrl).then((response) {
      Data an = Data.fromJson(json.decode(response.body.toString()));
      return an.resources;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: getPhotos,
            child: Text('rub')),
        centerTitle: true,
      ),
     body: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              List<Resources> resources = snapshot.data;
              return GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.74,
                shrinkWrap: false,
                children: resources.map((i) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Column(
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Hero(
                              tag: i.secureUrl,
                              child: Image.network(
                                i.secureUrl,
                                width: MediaQuery.of(context).size.width,
                                height: 208,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            }
            else {
            return Center(child: CircularProgressIndicator());
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getPhotos(),
      ),
    );
  }
}


class PortView extends StatefulWidget {
  @override
  _PortViewState createState() => _PortViewState();
}

class _PortViewState extends State<PortView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //  double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: Column(
        children: <Widget>[
          TextLiquidFill(
            boxHeight:50,
          //  boxBackgroundColor: Colors.red,
        text: 'Porfolio',
        waveColor: Colors.blueAccent,
        textStyle: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
  ),

          SizedBox(
            height: 10,
          ),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                child: Container(
                  width: width,
                  height: 150,
                  color: Color.fromRGBO(0, 0, 200, 5),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Business \nBranding',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FjallaOne-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 90,
              child: FaIcon(
                FontAwesomeIcons.arrowAltCircleRight,
                size: 35,
              ),
            )
          ]),
          SizedBox(height: 10),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                child: Container(
                  width: width,
                  height: 150,
                 color: Color.fromRGBO(0, 0, 200, 5),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Event\nManagement',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FjallaOne-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 90,
              child: FaIcon(
                FontAwesomeIcons.arrowAltCircleRight,
                size: 35,
              ),
            )
          ]),
          SizedBox(height: 10),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                child: Container(
                  width: width,
                  height: 150,
                  color: Color.fromRGBO(0, 0, 200, 5),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Model \nManagement',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FjallaOne-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 90,
              child: FaIcon(
                FontAwesomeIcons.arrowAltCircleRight,
                size: 35,
              ),
            )
          ]),
          SizedBox(height: 10),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                elevation: 4,
                shadowColor: Colors.white,
                child: Container(
                  width: width,
                  height: 150,
                  color: Color.fromRGBO(0, 0, 200, 5),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Digital \nMarketing',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FjallaOne-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 90,
              child: FaIcon(
                FontAwesomeIcons.arrowAltCircleRight,
                size: 35,
              ),
            )
          ]),
        ],
      ),
    );
  }
}

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
        TextLiquidFill(
            boxHeight:50,
          //boxBackgroundColor: Colors.red,
        text: "Customer's reviews",
        waveColor: Colors.blueAccent,
        textStyle: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
  ),
      SizedBox(
        height: 10,
      ),
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((url) {
          int index = imgList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Color.fromRGBO(0, 0, 255, 1)
                  : Colors.white,
            ),
          );
        }).toList(),
      ),
      SizedBox(
        height: 20,
      ),
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
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: MaterialButton(
                onPressed: () {},
                height: 50,
                child: Text(
                  'Write review✍',
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: MaterialButton(
              onPressed: () {},
              height: 50,
              child: Text(
                'Rate me⭐',
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
    ]);
  }
}

final List<String> imgList = [
  // 'https://res.cloudinary.com/ifeoluwajoshua/image/upload/v1594742346/Screenshot_20200714-165655_siz9qr.png'
  'https://res.cloudinary.com/ifeoluwajoshua/image/upload/v1594742231/Screenshot_20200714-165638_xt5a1p.png'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

enum Direction { vertical, horizontal }

class SlideFadeTransition extends StatefulWidget {
  ///The child on which to apply the given [SlideFadeTransition]
  final Widget child;

  ///The offset by which to slide and [child] into view from [Direction].
  ///Defaults to 1.0
  final double offset;

  ///The curve used to animate the [child] into view.
  ///Defaults to [Curves.easeIn]
  final Curve curve;

  ///The direction from which to animate the [child] into view. [Direction.horizontal]
  ///will make the child slide on x-axis by [offset] and [Direction.vertical] on y-axis.
  ///Defaults to [Direction.vertical]
  final Direction direction;

  ///The delay with which to animate the [child]. Takes in a [Duration] and
  /// defaults to 0.0 seconds
  final Duration delayStart;

  ///The total duration in which the animation completes. Defaults to 800 milliseconds
  final Duration animationDuration;

  SlideFadeTransition({
    @required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  });
  @override
  _SlideFadeTransitionState createState() => _SlideFadeTransitionState();
}

class _SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  Animation<Offset> _animationSlide;

  AnimationController _animationController;

  Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    //configure the animation controller as per the direction
    if (widget.direction == Direction.vertical) {
      _animationSlide =
          Tween<Offset>(begin: Offset(0, widget.offset), end: Offset(0, 0))
              .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    } else {
      _animationSlide =
          Tween<Offset>(begin: Offset(widget.offset, 0), end: Offset(0, 0))
              .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    }

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

    Timer(widget.delayStart, () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}

/* Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FullScreen(i)));*/