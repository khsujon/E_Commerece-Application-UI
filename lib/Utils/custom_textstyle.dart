import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:flutter/material.dart';

TextStyle customTextStyle({
  double? size,
  FontWeight? weight,
}) {
  return TextStyle(
    fontSize: size,
    fontWeight: weight,
    color: textColor,
  );
}
