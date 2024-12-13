import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:one_menu/utility/constants.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;

  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final String? hintText;

  final FontSizeResolvers? fontsize;
  final Color focusedErrorBorderColor;
  final TextStyle? errorTextStyle;
  final Color labelTextColor;
  final Color hintTextColor;
  final double? height;
  final double? width;





  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.hintText,
    this.focusedErrorBorderColor = Colors.black,
    this.errorTextStyle,
    this.labelTextColor = primarytextcolor,
    this.hintTextColor = textformlabeltextcolor,
    this.height,
    this.width,
    this.fontsize,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
         style: const TextStyle(fontFamily: 'PlusJakartaSans'),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromRGBO(229, 232, 236, 1),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
                   errorStyle: const TextStyle(color: red, fontFamily: 'PlusJakartaSans'),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintTextColor,
            fontSize: 16.sp,
            fontFamily: 'PlusJakartaSans',
          ),
     
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0), borderSide: const BorderSide(color: Color.fromRGBO(229, 232, 236, 1), width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
          const BorderSide(color: Color.fromRGBO(229, 232, 236, 1), width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primarytextcolor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: red),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: red),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}











// class CustomTextFormField extends StatefulWidget {
//   final TextEditingController controller;
//   final bool obscureText;
//   final FormFieldValidator<String>? validator;
//   final String? hintText;
//   final FontSizeResolvers? fontsize;
//   final Color focusedErrorBorderColor;
//   final TextStyle? errorTextStyle;
//   final Color labelTextColor;
//   final Color hintTextColor;
//   final double height;
//   final double width;

//   const CustomTextFormField({
//     super.key,
//     required this.controller,
//     this.obscureText = false,
//     this.validator,
//     this.hintText,
//     this.focusedErrorBorderColor = Colors.black,
//     this.errorTextStyle,
//     this.labelTextColor = primarytextcolor,
//     this.hintTextColor = textformlabeltextcolor,
//     this.height = 48.0,
//     this.width = 312.0,
//     this.fontsize,
//   });

//   @override
//   _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
// }

// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   bool _obscureText = true;

//   @override
//   void initState() {
//     super.initState();
//     _obscureText = widget.obscureText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: widget.height,
//       width: widget.width,
//       child: TextFormField(
//         controller: widget.controller,
//         obscureText: _obscureText,
//         style: const TextStyle(fontFamily: 'PlusJakartaSans'),
//         decoration: InputDecoration(
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
//           suffixIcon: widget.obscureText
//               ? IconButton(
//                   icon: Icon(
//                     _obscureText ? Icons.visibility_off : Icons.visibility,
//                     color: const Color.fromRGBO(229, 232, 236, 1),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _obscureText = !_obscureText;
//                     });
//                   },
//                 )
//               : null,
//           errorStyle: const TextStyle(color: red, fontFamily: 'PlusJakartaSans'),
//           hintText: widget.hintText,
//           hintStyle: TextStyle(
//             color: widget.hintTextColor,
//             fontSize: 16.sp,
//             fontFamily: 'PlusJakartaSans',
//           ),
//           labelStyle: TextStyle(
//             color: widget.labelTextColor,
//             fontSize: 12.sp,
//             fontFamily: 'PlusJakartaSans',
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: const BorderSide(color: Color.fromRGBO(229, 232, 236, 1), width: 1.0),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: const BorderSide(color: Color.fromRGBO(229, 232, 236, 1), width: 1.0),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: const BorderSide(color: Colors.black, width: 1.0),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: const BorderSide(color: red, width: 1.0),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.0),
//             borderSide: const BorderSide(color: red, width: 1.0),
//           ),
//         ),
//       ),
//     );
//   }
// }
