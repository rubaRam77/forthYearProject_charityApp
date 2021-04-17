import 'package:flutter/material.dart';
class ReusableButton extends StatelessWidget {
  ReusableButton({this.text,this.onPressButton});
  final String text;
  final Function onPressButton;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressButton,
        child: Container(
            padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(43.0),
              color: Color(0xff6F5EE8),),

            child: Text(
              text,
              style: TextStyle(
              color: Colors.white,
              ),
          ),
        ),
    );
  }
}
// Card(
// color: Colors.deepPurple,
// //margin: EdgeInsets.symmetric(vertical: 9.0 ,horizontal: 9.0),
// child: Padding(
// padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
// child: Text(
// text,
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// ),
// ),