import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<onLoginButtonClickedEvent>(
      (event, emit) async {
        emit(LogingLoadingState());
        final response =null;
         //   await AuthenticationRepo.userLogin(event.email, event.password);

        if (response != null && response.statusCode == 200) {
          return emit(LogingSucessState());
        
        } else if (response != null) {
          final responseData = jsonDecode(response.body);
          return emit(LogingLoadingErrorState(error: responseData["message"]));
        } else {
          return emit(LogingLoadingErrorState(error: "something went wrong"));
        }
      },
    );
  }}