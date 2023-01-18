import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef Validator = String? Function(String?);

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.validator,
    required this.controller,
    required this.hintText,
  });

  final Validator? validator;

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF3F4F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        errorMaxLines: 6,
        hintText: hintText,
        prefixIcon: Icon(
          Icons.comment,
          size: 15.r,
        ),
      ),
    );
  }
}
