import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color hinnntcolr;
  final IconData? perfixicon;
  final IconData? suffixicon;
  final Function()? suffixpressed;
  final FocusNode? focusnode;
  final Function(String?)? onsubmitted;
  final Color fillColor;
  final Color prefixColor;

  final Color focusColor;

  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.focusnode,
      this.validator,
      this.suffixpressed,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.hinnntcolr = Colors.black,
      this.perfixicon,
      this.onsubmitted,
      this.suffixicon,
      this.fillColor = Colors.white,
      this.focusColor = Colors.white,
      this.prefixColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          //backgroundColor: Color(0xffFFFFFF),
          ),
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: Styles.style14,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusColor: focusColor,
          prefixIcon: perfixicon != null ? Icon(perfixicon) : null,
          prefixStyle: TextStyle(color: prefixColor),
          suffixIcon: IconButton(
              color: Colors.black,
              onPressed: suffixpressed,
              icon: suffixicon != null ? Icon(suffixicon) : Icon(suffixicon))),
      onFieldSubmitted: onsubmitted,
      validator: validator!,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      focusNode: focusnode,
    );
  }
}
