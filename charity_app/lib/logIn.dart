import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForLogin.dart';
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey= GlobalKey<FormState>();
  String _userName=' ';
  String _password =' ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF1EFFC),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image:AssetImage('images/login.png'),
                ),
                    SizedBox(height: 60.0,),
                    ReusableTextField(text: 'User Name',obscure: false,
                        onChangedFunc: (value){ setState(() {
                      _userName=value;
                       }); },
                        validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter your user name'; }
                        },),
                    GestureDetector(
                      onTap: (){ //alert
                        },
                      child: Text('do you forget User Name?',
                      style: TextStyle(
                       color: Color(0x55342D2D),
                      ),
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    ReusableTextField(text: 'Password',obscure: true,
                      onChangedFunc: (value){ setState(() {
                      _password=value;
                        }); },
                      validationFunc: (String value){
                      if(value.isEmpty){return 'you must enter your password'; }
                      else if(value.length<8){ return 'password must be more than 8 characters';}
                    },),
                    GestureDetector(
                      onTap: (){ //alert
                      },
                      child: Text('do you forget the Password?',
                        style: TextStyle(
                          color: Color(0x55342D2D),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    ReusableButton(
                      text: 'Log In',
                      onPressButton: (){
                        if(_formKey.currentState.validate()){
                            PostForLoginFunc(_userName,_password);
                          //go to profile
                          //Navigator.pushNamed(context,'');
                         }
                      },)
                  ],
                ),
          ),
        ),
          ),
        );
  }
}
