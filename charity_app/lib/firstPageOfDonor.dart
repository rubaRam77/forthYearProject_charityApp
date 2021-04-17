import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForDonor.dart';
class Donor1 extends StatefulWidget {
  @override
  _Donor1State createState() => _Donor1State();
}

class _Donor1State extends State<Donor1> {
  final _formKey=GlobalKey<FormState>();
  String _userName =' ';
  // String _email =' ';
  String _password =' ';
  String _phone=' ';
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
              if(value.isEmpty ){return 'you should enter your name'; }},),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Password',obscure: true,onChangedFunc: (value){ _password=value; }, validationFunc: (String value){
              if(value.isEmpty ){return 'you should enter a password'; }
              },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Confirm Password',obscure: true,onChangedFunc: (value){ /*_confirmPassword=value;*/ }, validationFunc: (String value){
                      if(value.isEmpty ){return 'you should enter a confirm password';}
                      else if(value != _password){ return 'you entered an incorrect password confirmation';}
                    },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'phone',obscure: false,onChangedFunc: (value){ _phone=value; },
                          validationFunc: (String value){
                          if(value.isEmpty ){return 'you should enter your phon number'; }},),
                    SizedBox(height: 10.0,),
                    //Are you a permanent or temporary donor? (radio button)
                    Container(

                    ),
                    ReusableButton(
                      text: 'Send',
                        onPressButton: (){
                            if(_formKey.currentState.validate()) {
                              postForDonorRegister(_userName , _phone,_password );
                              //go to profile
                              //Navigator.pushNamed(context,'');
                            }
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
