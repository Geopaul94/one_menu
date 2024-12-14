import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

MaterialButton loadingButton(
    { 
    required VoidCallback onPressed,
    required Color color}) {
  return MaterialButton(
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    minWidth: double.infinity,
    height:52,
    color: color,
    child: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
      color: Colors.black,
      size: 40,
    )),
  );
}
