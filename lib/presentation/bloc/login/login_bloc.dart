import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';
import 'package:one_menu/data/model/loginuser_model.dart';
import 'package:one_menu/data/repository/authentication.dart';

part 'login_event.dart';
part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginInitial()) {
//     on<onLoginButtonClickedEvent>(
//       (event, emit) async {
//         emit(LogingLoadingState());
//         final response =  await Authentication.userLogin(event.email, event.password);

//         if (response != null && response.statusCode == 200) {
//           return emit(LogingSucessState());
        
//         } else if (response != null) {
//           final responseData = jsonDecode(response.body);
//           return emit(LogingLoadingErrorState(error: responseData["message"]));
//         } else {
//           return emit(LogingLoadingErrorState(error: "something went wrong"));
//         }
//       },
//     );
//   }}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<onLoginButtonClickedEvent>(
      (event, emit) async {
        // Start with a loading state
        emit(LogingLoadingState());

        // Perform the login operation
        final loginResponse = await Authentication.userLogin(event.email, event.password);

        // Check the status code and handle success or error
        if (loginResponse.statusCode == 200 && loginResponse.loginuser! != null) {
          emit(LogingLoadingSuccessState(loginResponse.loginuser!));
        } else if (loginResponse.statusCode == 401) {
          emit(LogingLoadingErrorState(error: "Unauthorized: Invalid credentials."));
        } else if (loginResponse.statusCode == 500) {
          emit(LogingLoadingErrorState(error: "Server error. Please try again later."));
        } else {
          emit(LogingLoadingErrorState(error: "Something went wrong. Please try again."));
        }
      },
    );
  }
}
