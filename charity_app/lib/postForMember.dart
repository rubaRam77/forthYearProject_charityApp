Map<String ,dynamic> pinaryData={};
Map<String ,dynamic> secondaryData={};
Map<String,dynamic> memberData={};

Function getFirstBageOfMemberFunc(String userName , String phone,String password ){
  pinaryData={
    'userName':userName,
    'phone':phone,
    'password':password,
  };
}
Function postForMemberRegister( String firstName, String lastName, String Age, String nationalNumber){
  secondaryData={
    'firstName':firstName,
    'lastName':lastName,
    'age':Age,
    //healthyStatus,
    'nationalNumber':nationalNumber,
  };
  memberData=pinaryData;
  memberData.addAll(secondaryData);

  //TODO:after i know what is the url here http.Post('url',body:json.encode(memberData));

}