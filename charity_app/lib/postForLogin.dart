//TODO: import 'http';
import 'dart:convert';
Function PostForLoginFunc(String userName,String password) {
  final Map<String, dynamic> LoginData = {
    'userName': userName,
    'password': password,
  };
 //TODO:after i know what is the url here http.Post('url',body:json.encode(LoginData));
}


//TODO: Function fetchData(){
// http.get('url').then(http.Response response)
//     {
//       final Map<String, dynamic> fetchedData=json.decode(response.body);
//       return fetchedData['ok']
//
//       }
//     };
// }
