import 'package:flutter/material.dart';
import 'ReUsableButton.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              Image(
                image:AssetImage('images/homePic.png'),
              ),
              SizedBox(
                height: 70.0,
              ),
              ReusableButton(text:'Sign Up' ,onPressButton:(){ Navigator.pushNamed(context, '/signUp');} ),
              // FlatButton(
              //   onPressed: (){
              //     setState(() {
              //       Navigator.pushNamed(context, '/signUp');
              //       // sizeButtonfromsides = 90.0;
              //       // topAndBottomAlign =30.0;
              //       // textColor = 'deepPurple';
              //       // bottonColor = 'white';
              //     });
              //   },
              //   child: Card(
              //     //shape: r,
              //     color: Colors.deepPurple,
              //     margin: EdgeInsets.only(top: 200),
              //     child: Padding(
              //       padding: EdgeInsets.fromLTRB(sizeButtonfromsides, topAndBottomAlign, sizeButtonfromsides, topAndBottomAlign),
              //       child: Text(
              //         'Sign Up',
              //         style: TextStyle(
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 35.0,
              ),
              ReusableButton(text:' Log In ' ,onPressButton:(){ Navigator.pushNamed(context, '/logIn');} ),
              // FlatButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, '/logIn');
              //   },
              //   child: Card(
              //     color: Colors.deepPurple,
              //     //margin: EdgeInsets.symmetric(vertical: 9.0 ,horizontal: 9.0),
              //     child: Padding(
              //       padding: EdgeInsets.fromLTRB(61.0, 20.0, 61.0, 20.0),
              //       child: Text(
              //         'Log In',
              //         style: TextStyle(
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )
      ),
    );
  }
}
