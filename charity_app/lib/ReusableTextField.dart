import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReusableTextField extends StatelessWidget {
  ReusableTextField({this.text,this.obscure,this.onChangedFunc,this.validationFunc});
  final String text;
  final bool obscure;
  final Function onChangedFunc;
  final Function validationFunc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(50.0, 10.0, 40.0, 0.0),
        child: Container(
        child: TextFormField(
          style: TextStyle(
            color: Colors.black,
          ),
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: text,
            hintStyle: TextStyle(
                color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide.none,
            )
          ),
          validator: validationFunc,
          onChanged: onChangedFunc,
        ),
        ),
      ),
    );
  }
}