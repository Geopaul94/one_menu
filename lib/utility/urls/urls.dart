class Apiurl {
  //base url
  static const String baseUrl =  'http://13.235.254.238/api';

  

  //user Urls
  static const String googleLogin = '/users/google-login';
  static const String signUp = '/users/send-otp';
  static const String login = 'https://api-machine-test.hilalcart.com/login';
  static const String verifyOtp = '/users/verify-otp';
  static const String logginedUser = '/users/getuser';
  static const String editProfile = '/users/edit-profile';
  static const String getFollowing = '/users/fetch-following';
  static const String getFollowers = '/users/fetch-followers';
  static const String followUser = '/users/follow';
  static const String unfollowUser = '/users/unfollow';
  static const String suggessions = '/users/fetch-users';
  static const String getSingleUser = '/users/get-single-user';
  static const String getConnections = '/users/get-count';
  static const String searchAllUsers = '/users/searchallusers?searchQuery=';
}