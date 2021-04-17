import 'package:flutter/material.dart';
import 'ReusableTextField.dart';
import 'ReUsableButton.dart';
import 'postForCharity.dart';
class Charity2 extends StatefulWidget {
  @override
  _Charity2State createState() => _Charity2State();
}

class _Charity2State extends State<Charity2> {
  String _email=' ';
  String _location=' ';
  String _publicationNumber=' ';
  String _publicationDate=' ';
  String _establishmentDate=' ';
  String _bankNumber=' ';
  String _maxAmount=' ';
  final _formKey=GlobalKey<FormState>();
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
                    ReusableTextField(text: 'Email',obscure: false, onChangedFunc: (value){ setState(() {_email=value;}); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter an email'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Location',obscure: false, onChangedFunc: (value){ setState(() {
                      _location=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the charity\'s location'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Publication Number',obscure: false, onChangedFunc: (value){ setState(() {
                      _publicationNumber=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the charity\'s publication Number'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Publication date',obscure: false,onChangedFunc: (value){ setState(() {
                      _publicationDate=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the charity\'s publication date'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Date of Establishment',obscure: false,onChangedFunc: (value){ setState(() {
                      _establishmentDate=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the Date of charity\'s Establishment'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Bank account number',obscure: false,onChangedFunc: (value){ setState(() {
                      _bankNumber=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the charity\'s bank Number'; }
                      },),
                    SizedBox(height: 10.0,),
                    ReusableTextField(text: 'Max value can be covered',obscure: false,onChangedFunc: (value){ setState(() {
                      _maxAmount=value;
                    }); },
                      validationFunc: (String value){
                        if(value.isEmpty ){return 'you must enter the Max value can be covered'; }
                      },),
                    SizedBox(height: 10.0,),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10.0, 10.0, 50.0, 40.0),
                      child: Card(
                        child: Text(
                          'Logo',
                          style: TextStyle(
                            color: Color(0xff342D2D),
                          ),
                        ),
                      ),
                    ),
                    ReusableButton(text: 'Send',onPressButton: (){
                      if(_formKey.currentState.validate()){
                        PostForCharityRegister(_email,_location,_publicationNumber,_publicationDate,
                          _establishmentDate,
                          _bankNumber,_maxAmount,
                        );
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
