import 'package:GlanSpray/User/add_room.dart';
import 'package:GlanSpray/User/user_landing.dart';
import 'package:GlanSpray/User/user_login.dart';
import 'package:GlanSpray/User/request.dart';
import 'package:flutter/material.dart';

import 'Employee/emp_dashboard.dart';
import 'Employee/emp_landing.dart';
import 'Employee/history.dart';
import 'User/rooms.dart';
import 'Employee/schedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
      routes: {
        '/Emp-landing': (context) => EmpLanding(),
        '/Emp-Dashboard': (context) => EmpDashboard(),
        '/rooms': (context) => Rooms(),
        '/history': (context) => History(),
        '/schedule': (context) => Schedule(),
        '/requestSpray': (context) => DateTimeForm(),
        '/user-landing': (context) => User_landing(),
        '/user-login': (context) => User_login(),
        '/add-room': (context) => Add_room(),
      },
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              height: 820,
              width: 400,
              child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(
                          height: 350,
                          width: 220,
                          image: AssetImage("lib/assets/GlanHealth-logo.png")),
                      RaisedGradientButton(
                          child: Text(
                            'glanHealth Admin',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Colors.pink, Colors.blue],
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, '/user-login');
                          }),
                      SizedBox(height: 20),
                      RaisedGradientButton(
                          child: Text(
                            'User',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Avenir',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Colors.pink, Colors.blue],
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/user-login');
                          }),
                    ],
                  ))),
        ));
  }
}

//......................................................................
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
