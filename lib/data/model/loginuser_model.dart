class LoginuserModel {
  final String message;
  final int responseCode;
  final User user;

  LoginuserModel({
    required this.message,
    required this.responseCode,
    required this.user,
  });

  factory LoginuserModel.fromJson(Map<String, dynamic> json) {
    return LoginuserModel(
      message: json['message'],
      responseCode: json['response_code'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'response_code': responseCode,
      'user': user.toJson(),
    };
  }
}

class User {
  final String fname;
  final String lname;
  final String username;
  final String email;
  final String profilePic;

  User({
    required this.fname,
    required this.lname,
    required this.username,
    required this.email,
    required this.profilePic,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fname: json['fname'],
      lname: json['lname'],
      username: json['username'],
      email: json['email'],
      profilePic: json['profile_pic'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fname': fname,
      'lname': lname,
      'username': username,
      'email': email,
      'profile_pic': profilePic,
    };
  }
}


class LoginResponseModel {
  final int statusCode;
  final LoginuserModel? loginuser;

  LoginResponseModel({required this.statusCode, this.loginuser});
}
