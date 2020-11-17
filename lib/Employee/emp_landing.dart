import 'package:flutter/material.dart';

class EmpLanding extends StatefulWidget {
  @override
  _EmpLandingState createState() => _EmpLandingState();
}

class _EmpLandingState extends State<EmpLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(130.0),
          child: Column(
            children: <Widget>[
              new MyStatefulWidget(),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Emp-Dashboard');
                },
                child: Text(
                  "Ok !!",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Company 2', 'Company 3', 'Company 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
