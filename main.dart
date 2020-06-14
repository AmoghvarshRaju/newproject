import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'PARIMZA',
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                 Container(
                  padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child: Text(
                    'EDUPLA',
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                 Container(
                  padding: EdgeInsets.fromLTRB(310.0, 175.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL ID',
                    labelStyle: TextStyle(
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left:20.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Monteserrat',
                      decoration: TextDecoration.underline
                    ),
                  ),
                 ),
                ),
                SizedBox(height:40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('G'),
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text('Log in with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monteserrat'
                          ),
                          ),
                        ),
                      ],
                    )
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 'New to Parimza ?',
                 style: TextStyle(
                   fontFamily: 'Monteserrat'
                 ),
               ),
               SizedBox(width: 5.0),
               InkWell(
                 onTap: () {},
                 child: Text('Register',
                 style: TextStyle(
                   color: Colors.blue,
                   fontFamily: 'Monteserrat',
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline
                 )
                 ),
               )
             ],
           )
        ],
      ),
    );
  }
}