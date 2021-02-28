import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatefulWidget {
  final heroTag;

  SecondPage({this.heroTag});

  @override
  _SecondPageState createState() => _SecondPageState(heroTag: heroTag);
}

class _SecondPageState extends State<SecondPage> {
  final heroTag;

  _SecondPageState({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: heroTag,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(heroTag),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              right: 15.0,
              left: 15.0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 30.0,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: Text(
                                'One button V-neck sling long-sleeved waist female stitching dress',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50.0,
                      height: 1.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '\$6500',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                ),
                              ),
                              FloatingActionButton(
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: Colors.white, size: 15.0),
                                ),
                                backgroundColor: Color(0xFF916144),
                                onPressed: () {},
                                elevation: 2.0,
                                mini: true,
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.9,
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 10.0),
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LAMINATED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.deepOrange,
                  size: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
