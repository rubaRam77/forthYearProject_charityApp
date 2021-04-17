import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForMember.dart';
class Member2 extends StatefulWidget {
  @override
  _Member2State createState() => _Member2State();
}

class _Member2State extends State<Member2> {
  final _formKey=GlobalKey<FormState>();
  String _firstName=' ';
  String _lastName=' ';
  String _Age=' ';
  String _nationalNumber=' ';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Enter this information please'
                    ),
                    SizedBox(height: 40.0,),
                    ReusableTextField(text: 'First name',obscure: false,onChangedFunc: (value){ _firstName=value; }, validationFunc: (String value){
                if(value.isEmpty ){return 'you must enter your first name'; }},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Last name',obscure: false,onChangedFunc: (value){ _lastName=value; }, validationFunc: (String value){
                if(value.isEmpty ){return 'you must enter your last name'; }},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Age',obscure: false,onChangedFunc: (value){ _Age=value; }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you must enter your age'; }},),
                    SizedBox(height: 10.0,),
                    // ReusableTextField(text: 'Work',),
                    // SizedBox(height: 10.0,),
                    ReusableTextField(text: 'National Number',obscure: false,onChangedFunc: (value){ _nationalNumber=value; }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you must enter your national number'; }},),
                    SizedBox(height: 10.0,),
                    // ReusableTextField(text: 'Salary',),
                    // SizedBox(height: 10.0,),
                    ReusableButton(text: 'Send',onPressButton: (){
                      if(_formKey.currentState.validate()) {
                       postForMemberRegister(_firstName ,_lastName, _Age,_nationalNumber);
                        Navigator.pushNamed(context, '/member2');
                      }}
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
