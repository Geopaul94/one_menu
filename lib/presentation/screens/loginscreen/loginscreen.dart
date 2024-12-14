import 'package:flutter/material.dart';
import 'package:one_menu/presentation/bloc/login/login_bloc.dart';
import 'package:one_menu/presentation/screens/homepage/homepage.dart';
import 'package:one_menu/presentation/widgets/custom_loadingbutton.dart';
import 'package:one_menu/presentation/widgets/custom_textform_field.dart';
import 'package:one_menu/presentation/widgets/custome_button.dart';
import 'package:one_menu/presentation/widgets/custome_snackbar.dart';
import 'package:one_menu/presentation/widgets/custome_text.dart';
import 'package:one_menu/presentation/widgets/form_validartion.dart';
import 'package:one_menu/utility/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 24.0,
              ),
              onPressed: () {},
            ),
          ),
        ),
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LogingLoadingSuccessState) {
              customSnackbar(context, 'Logged In Successfully', green);
           WidgetsBinding.instance.addPostFrameCallback((_) {
               Navigator.of(context).pushAndRemoveUntil(
                 MaterialPageRoute(
                   builder: (context) => const Homepage(),
                 ),
                (Route<dynamic> route) => false,
               );
             });
            } else if (state is LogingLoadingErrorState) {
              customSnackbar(context, 'user email :must@test.com && password : password ', red);
            }
          },
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        h20,

                        CustomText(
                            text: "Log In",
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 28.sp,
                            color: primarytextcolor),
                        h60,

                    
                      // CustomTextFormField(
                      //     hintText: 'Password',
                      //     obscureText: true,
                      //     controller: _passwordController,
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Please enter your password';
                      //       }
                      //       if (value.length < 6) {
                      //         return 'Password must be at least 6 characters long';
                      //       }
                      //       return null;
                      //     },
                      //   ),












                        CustomTextFormField(hintText: 'Email Address',
                          controller: _emailController,
                          validator: validateEmail,
                          labelTextColor: textformlabeltextcolor,
                          width: 1.sw,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hintText: 'Password',width: 312.sw,
                          height: 44.sh,
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                        ),
                        h30,
                     

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Forgot password?',
                              color: const Color.fromARGB(255, 29, 47, 71),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        h20,
                        BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                          if (state is LogingLoadingState) {
                            return  loadingButton(onPressed:() {}, color:green);
                          }
                          return CustomElevatedButton(
                            text: 'Log in',
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {

                               FocusScope.of(context).unfocus();
                              context.read<LoginBloc>().add(onLoginButtonClickedEvent(email: _emailController.text, password: _passwordController.text));
                              }
                            },
                            width: double.infinity,
                            height: 52,
                            borderRadius: 8,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 232, 61, 61,),

                           
                          );
                        }),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
