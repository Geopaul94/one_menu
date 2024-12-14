// import 'package:one_menu/utility/urls/urls.dart';
// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// class Authentication {



//   static Future<Response?> userLogin(String email, String password) async {
//     try {
//       var user = {"email": email, "password": password};

//       var response = await client.post(Uri.parse( Apiurl.login),
//           body: jsonEncode(user),
//           headers: {"Content-Type": 'application/json'});
//       debugPrint(response.statusCode.toString());
//       if (kDebugMode) {
//         print(user);
//       }

//       debugPrint(response.body);
//       final responseBody = jsonDecode(response.body);
//       if (response.statusCode == 200) {
       

        
//         return response;
//       } else {
//         return response;
//       }
//     } catch (e) {}
//     return null;
//   }
    



    
// }


import 'package:one_menu/data/model/loginuser_model.dart';
import 'package:one_menu/utility/urls/urls.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:http/http.dart' as http;

class Authentication {
  static final client = http.Client();

  static Future<LoginResponseModel> userLogin(String email, String password) async {
    try {
      var user = {"email": email, "password": password};

      var response = await client.post(Uri.parse(Apiurl.login),
          body: jsonEncode(user),
          headers: {"Content-Type": 'application/json'});

      debugPrint(response.statusCode.toString());
      debugPrint(response.body);

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        LoginuserModel loginResponse = LoginuserModel.fromJson(responseBody);
        return LoginResponseModel(statusCode: response.statusCode, loginuser: loginResponse);
      } else {
        // If status code is not 200, return statusCode with null loginuser
        return LoginResponseModel(statusCode: response.statusCode);
      }
    } catch (e) {
      // Handle the exception by logging or showing an error message
      debugPrint("Error during login: $e");
      return LoginResponseModel(statusCode: 500); // Return 500 for a server error
    }
  }
}
