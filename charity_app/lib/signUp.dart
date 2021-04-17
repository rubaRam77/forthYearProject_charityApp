import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         backgroundColor: Color(0xffF1EFFC),
         body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment:MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Image(
                 image:AssetImage('images/‏‏titlePic .png'),
               ),
            SizedBox(height: 120.0),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/charity1');
              },
              child: ReUsableCard(pathOfIcon: 'images/charityIcon.png',text: 'As a charity'),
            ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/member1');
                },
                child: ReUsableCard(pathOfIcon: 'images/memberIcon.png',text: 'As a member',),
              ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/donor1');
                },
                child: ReUsableCard(pathOfIcon: 'images/donorIcon.png',text: 'As a donor'),
              ),
            ],
        ),
         ),
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  const ReUsableCard({this.pathOfIcon,this.text});
 final String pathOfIcon;
 final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(50.0, 10.0, 40.0, 10.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
        child: Row(
            children: [
                 Container(
                    width: 35.0,
                     height: 35.0,
                   child: Image(image: AssetImage(pathOfIcon))
                ),
                SizedBox(width: 20.0),
                 Text(text)
              ],
        ),
      ),
    );
  }
}

// class ReusableCard extends StatelessWidget {
//   ReusableCard({this.text});
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
//       child: Card(
//         margin: EdgeInsets.fromLTRB(50.0, 10.0, 40.0, 0.0),
//         child: Container(
//           width: 350.0,
//           height: 50.0,
//           padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
//           child: Text(
//             text,
//             style: TextStyle(
//               color: Color(0x55342D2D),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }