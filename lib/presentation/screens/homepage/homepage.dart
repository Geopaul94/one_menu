import 'package:flutter/material.dart';
import 'package:one_menu/utility/constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: 311,
            height: 244,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              border: Border.all(
                color: containercolor,
                width: 1.0, 
              ),
              color: containercolor,
            ),
            child: Column(
              children: [
              ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        child: Image.network(
          'https://shorturl.at/MqEfp',
          height: 180,
          width: 311,
          fit: BoxFit.fill,
        ),
      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
