Map<String ,dynamic> pinaryData={};
Map<String ,dynamic> secondaryData={};
Map<String,dynamic> charityData={};
Function getFirstBageOfCharityFunc(String name , String phone, String password){
  pinaryData={
     'name':name,
    'phone':phone,
    'password':password,
  };
}
Function PostForCharityRegister(  String email,String location,String publicationNumber,String publicationDate,
    String establishmentDate, String bankNumber, String maxAmount,){
  secondaryData={
  'email':email,
  'location':location,
 ' publicationNumber':publicationNumber,
  'publicationDate':publicationDate,
  'establishmentDate': establishmentDate,
  'bankNumber' :bankNumber,
  'maxAmount': maxAmount,//deldte this
};
  charityData=pinaryData;
  charityData.addAll(secondaryData);

  //TODO:after i know what is the url here http.Post('url',body:json.encode(CharityData));
}
//getSecondBageOfCharityFunc
// Function getDataOfCharityFunc(){

