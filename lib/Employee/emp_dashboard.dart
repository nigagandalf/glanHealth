import 'package:flutter/material.dart';

class EmpDashboard extends StatefulWidget {
  @override
  _EmpDashboardState createState() => _EmpDashboardState();
}

class _EmpDashboardState extends State<EmpDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Company Dashboard"),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/rooms');
                },
                child: SizedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 125.0, top: 25.0),
                        child: Text("Rooms"),
                      )),
                  width: 300,
                  height: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                child: SizedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 125.0, top: 25.0),
                        child: Text("Request"),
                      )),
                  width: 300,
                  height: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                child: SizedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 125.0, top: 25.0),
                        child: Text("Schedule"),
                      )),
                  width: 300,
                  height: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                child: SizedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 125.0, top: 25.0),
                        child: Text("History"),
                      )),
                  width: 300,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
