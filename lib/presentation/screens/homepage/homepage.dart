import 'package:flutter/material.dart';
import 'package:one_menu/presentation/widgets/custome_text.dart';
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
                Row(
                  children: [
                    CustomText(text: 'Beef Burger'),
                    Container(
                      width: 83,
                      height: 24,
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 52,
                            color: const Color.fromARGB(31, 240, 165, 0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 240, 165, 0),
                                ),
                                CustomText(
                                  text: '3.4',
                                  color: const Color.fromARGB(
                                    255,
                                    240,
                                    165,
                                    0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(
                                  229, 232, 236, 1),
                              borderRadius: BorderRadius.circular(
                                  22), 
                              border: Border.all(
                                color: Colors
                                    .grey, 
                                width: 1,
                              ),
                            ),
                            child: const Center(
                     
                              child: Icon(
                                Icons.favorite_border,size: 16,
                                color: primarytextcolor, 
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(children: [CustomText(text: '\$15.23')],)
              ],
            ),
          )
        ],
      )),
    );
  }
}
