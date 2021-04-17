import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForMember.dart';
class Member1 extends StatefulWidget {
  @override
  _Member1State createState() => _Member1State();
}

class _Member1State extends State<Member1> {
  final _formKey=GlobalKey<FormState>();
  String _userName =' ';
  String _phone =' ';
  String _password =' ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              ReusableTextField(text: 'User Name',obscure: false,onChangedFunc: (value){ _userName=value; }, validationFunc: (String value){
                if(value.isEmpty ){return 'you must enter a user name'; }},),
              SizedBox(height: 10.0,),
              ReusableTextField(text: 'Password',obscure: true,onChangedFunc: (value){ _password=value; }, validationFunc: (String value){
                if(value.isEmpty ){return 'you must enter a password'; }
              },),
              SizedBox(height: 10.0,),
              ReusableTextField(text: 'Confirm Password',obscure: true,onChangedFunc: (value){ /*_confirmPassword=value;*/ }, validationFunc: (String value){
                if(value.isEmpty ){return 'you must enter a confirm password';}
                else if(value != _password){ return 'you entered an incorrect password confirmation';}
              },),
              SizedBox(height: 10.0,),
              ReusableTextField(text: 'phone',obscure: false,onChangedFunc: (value){ _phone=value; },
                validationFunc: (String value){
                  if(value.isEmpty ){return 'you must enter your phone number'; }},),
              SizedBox(height: 10.0,),
                      ReusableButton(
                        text: 'Next',
                        onPressButton: (){
                            if(_formKey.currentState.validate()) {
                              getFirstBageOfMemberFunc(_userName , _phone,_password );
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

