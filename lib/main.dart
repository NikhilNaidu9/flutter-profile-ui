import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ClipPath(
          child: Container(
            color: Colors.black.withOpacity(0.8),
          ),
          clipper: getClipper(),
        ),
        Positioned(
          width: 350.0,
          left: 25.0,
          top: MediaQuery.of(context).size.height / 5,
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcStTNkJwERTUw2En1a4gS85ZdXn3mRkWni_MQDPZkC1yPnz8sfn&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(75.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 7.0, color: Colors.black)
                    ]),
              ),
              SizedBox(
                height: 90.0,
              ),
              Text(
                "Nick Noddy",
                style: TextStyle(
                    fontFamily: 'Monteserrat',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Available",
                style: TextStyle(
                    fontFamily: 'Monteserrat',
                    fontStyle: FontStyle.italic,
                    fontSize: 17.0),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: 95.0,
                height: 30.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.greenAccent,
                  color: Colors.green,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Edit Name',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: 95.0,
                height: 30.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.redAccent,
                  color: Colors.red,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
