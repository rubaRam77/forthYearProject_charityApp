import 'package:charity_app/secondPageOfCharity.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';
import 'signUp.dart';
import 'firstPageOfCharity.dart';
import 'firstPageOfMember.dart';
import 'firstPageOfDonor.dart';
import 'secondPageOfCharity.dart';
import 'secondPageOfMember.dart';
import 'logIn.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          initialRoute: '/',
          routes: {
            '/':(context)=>Home(),
            '/signUp':(context)=>SignUp(),
            '/logIn':(context)=>LogIn(),
            '/charity1':(context)=>Charity1(),
            '/charity2':(context)=>Charity2(),
            '/donor1':(context)=>Donor1(),
            '/member1':(context)=>Member1(),
            '/member2':(context)=>Member2(),
          },
    );
  }
}
