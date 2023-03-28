

import 'package:flutter/material.dart';
import "package:flutter/services.dart";
class CustomFormField extends StatelessWidget{
  CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator
}):super(key:key);

final String hintText;
final List<TextInputFormatter>? inputFormatters;
final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Text("");
  }}