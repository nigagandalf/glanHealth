import 'package:GlanSpray/User/request.dart';
import 'package:flutter/material.dart';
//
//
//

class User_landing extends StatefulWidget {
  @override
  _User_landingState createState() => _User_landingState();
}

class _User_landingState extends State<User_landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for Scaffold.of.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.black87,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/GlanHealth-logo.png',
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                  height: 102,
                  width: 82,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 58.0, top: 10),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Avenir',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ))
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 200),
                      RaisedGradientButton(
                          child: Text(
                            'Request Sanitization',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Colors.pink, Colors.blue],
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/requestSpray');
                          }),
                      SizedBox(height: 40),
                      RaisedGradientButton(
                          child: Text(
                            'Add Room(s)',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Colors.pink, Colors.blue],
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/add-room');
                          }),
                      SizedBox(height: 40),
                      RaisedGradientButton(
                          child: Text(
                            'Check History',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Colors.pink, Colors.blue],
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/history');
                          }),
                    ],
                  )),
            ],
          ),
        ),
      ),
      color: Colors.white,
    );
  }
}

//...................................................................

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
