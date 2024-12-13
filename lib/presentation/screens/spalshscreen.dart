import 'package:flutter/material.dart';
import 'package:one_menu/main.dart';
import 'package:one_menu/presentation/widgets/custome_text.dart';
import 'package:one_menu/utility/constants.dart';

class Spalshscreen extends StatelessWidget {
  const Spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'One1', color: const Color.fromARGB(
                  255,
                  232,
                  61,
                  61,
                ),
                fontSize: 48,fontWeight: FontWeight.w800,fontFamily: 'InterTight',
              ),
              CustomText(
                text: 'Menu',
              color: primarytextcolor,fontSize: 48,fontWeight: FontWeight.w800,fontFamily: 'InterTight',
              ),

  
            ],
          ),
        ),
      ),
    );
  }
}
