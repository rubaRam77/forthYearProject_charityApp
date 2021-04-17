import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForCharity.dart';
class Charity1 extends StatefulWidget {
  @override
  _Charity1State createState() => _Charity1State();
}

class _Charity1State extends State<Charity1> {
  final _formKey=GlobalKey<FormState>();
String _name =' ';
String _phone =' ';
String _password =' ';
//String _confirmPassword=' ';
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
                    ReusableTextField(text: 'Name',obscure: false,onChangedFunc: (value){_name=value; }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you must enter a charity\'s name'; }},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Password',obscure: true,onChangedFunc: (value){ _password=value; }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you must enter a password'; }},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Confirm Password',obscure: true,onChangedFunc: (value){ /*_confirmPassword=value;*/ }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you must enter a confirm password';}
                      else if(value != _password){ return 'you entered an incorrect password confirmation';}},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'phone',obscure: false,onChangedFunc: (value){ _phone=value; }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you should enter a phone number'; }
                    },),
                    SizedBox(height: 10.0,),
                    ReusableButton(
                      text: 'Next',
                      onPressButton: (){
                        if(_formKey.currentState.validate()){
                          getFirstBageOfCharityFunc(_name, _phone, _password);
                        Navigator.pushNamed(context, '/charity2');}
                      },)
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

