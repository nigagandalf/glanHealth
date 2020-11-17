import 'package:flutter/material.dart';
import 'package:masked_text/masked_text.dart';

class Add_room extends StatefulWidget {
  @override
  _Add_roomState createState() => _Add_roomState();
}

class _Add_roomState extends State<Add_room> {
  String _company = "Choose Company";
  var _companyvalue = ['intuit', 'prakat', 'Other'];
  int _selectedCompany = 0;
  List<DropdownMenuItem<int>> companyList = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[MyScaffoldBody()],
      )),
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
                  padding: const EdgeInsets.only(left: 48.0, top: 10),
                  child: Text(
                    'Add Room(s)',
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
    ));
  }
}

class MyScaffoldBody extends StatefulWidget {
  @override
  _MyScaffoldBodyState createState() => _MyScaffoldBodyState();
}

class _MyScaffoldBodyState extends State<MyScaffoldBody> {
  static final TextEditingController _textController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Form(
                // key: formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: Text(
                        "Select Company :",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Avenir',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    DDM(),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Text(
                        "Enter Room Mac Address :",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Avenir',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaskedTextField(
                      maskedTextFieldController: _textController,
                      mask: 'xx:xx:xx:xx:xx',
                      maxLength: 14,
                      inputDecoration: new InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Enter MAC address",
                        labelText: "MAC",
                      ),
                    ),

                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text(
                        "Enter Room Name :",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Avenir',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Room Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Enter Room Name",
                      ),
                    ),
                    SizedBox(height: 40),
                    //onPressed: performLogin,
                    // formKey.currentState.save(),

                    RaisedGradientButton(
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Avenir',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[Colors.pink, Colors.blue],
                        ),
                        onPressed: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Room Added!'),
                            ),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class DDM extends StatefulWidget {
  @override
  _DDMState createState() => _DDMState();
}

class _DDMState extends State<DDM> {
  @override
  var currentSelectedValue;
  final deviceTypes = ["Prakat", "Intuit", "XYZ"];
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text("Select Company"),
                value: currentSelectedValue,
                isDense: true,
                onChanged: (newValue) {
                  setState(() {
                    currentSelectedValue = newValue;
                  });
                  print(currentSelectedValue);
                },
                items: deviceTypes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
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
