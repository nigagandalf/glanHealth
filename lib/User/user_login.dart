import 'package:flutter/material.dart';

class User_login extends StatefulWidget {
  @override
  _User_loginState createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  String error = '';
  String _email;
  String _password;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.pink, Colors.blue],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //key: scaffoldKey,
        //appBar: new AppBar(
        // title: new Text("Form Page"),
        // ),
        body: Container(
            padding: const EdgeInsets.only(top: 50.0),
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("lib/assets/twoleaves.png"),
            //         fit: BoxFit.cover)),
            child: Column(children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Form(
                  //        key: formKey,
                  child: new Column(
                    children: <Widget>[
                      Image(
                          height: 120,
                          width: 220,
                          image: AssetImage("lib/assets/GlanHealth-logo.png")),
                      SizedBox(height: 20),
                      new Text(
                        'User Login',
                        style: new TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient),
                      ),
                      SizedBox(height: 30),
                      new TextFormField(
                        decoration: new InputDecoration(labelText: "E-mail"),
                        onChanged: (val) {
                          setState(() => _email = val);
                        },
                        validator: (val) =>
                            !val.contains('@') ? 'Invalid Email' : null,
                        onSaved: (val) => _email = val,
                        //controller: _textController,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(labelText: "Password"),
                        onChanged: (val) {
                          setState(() => _password = val);
                        },
                        validator: (val) =>
                            val.length < 6 ? 'Password too short' : null,
                        // onSaved: (val) => _password = val,
                        obscureText: true,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      RaisedGradientButton(
                          child: Text(
                            'Login',
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
                            Navigator.pushNamed(context, '/user-landing');
                          }),

                      // FloatingActionButton.extended(
                      //   label: Text('Login',
                      //       style: TextStyle(
                      //         //color: Colors.blueGrey[100],
                      //         fontFamily: 'Avenir',
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15.0,
                      //       )),
                      //   backgroundColor:
                      //       Color.alphaBlend(Colors.green, Colors.green),

                      //   //onPressed: _submit,
                      //   onPressed: () // async {
                      //       {
                      //     // dynamic result =
                      //     //     await _auth.signIn(_email, _password);

                      //     // if (result == null) {
                      //     //   setState(() => error = 'please error');
                      //     // } else {
                      //     // Navigator.push(
                      //     //     context,
                      //     //     new MaterialPageRoute(
                      //     //         builder: (context) => new Tab_Bar()));
                      //     Navigator.pushNamed(context, '/user-landing');
                      //     // }
                      //     // dynamic result = await _auth.sighInAnon();
                      //     // if (result == null) {
                      //     //   print('erroe');
                      //     // } else {
                      //     //   print('signin');
                      //     //   print(result.uid);
                      //     // }
                      //   },
                      //   // on pressed ended
                      // ),
                    ],
                  ),
                ),
              ),
            ])));
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
