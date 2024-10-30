import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class TextformFieldWidget extends StatefulWidget {
  const TextformFieldWidget(
      {super.key,
      this.controller,
      this.digitLength,
      this.inputFormatters,
      this.keyboardType,
      this.userTextColor,
      this.userTextfont,
      this.height,
      this.width,
      this.onChanged,
      this.validator,
      this.onTap});
  final TextEditingController? controller;
  final int? digitLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Color? userTextColor;
  final double? userTextfont;
  final double? height;
  final double? width;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  @override
  State<TextformFieldWidget> createState() => _TextformFieldWidgetState();
}

class _TextformFieldWidgetState extends State<TextformFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      style: TextStyle(
          color: widget.userTextColor ?? AppColors.whiteColor,
          fontSize: widget.userTextfont ?? 13.sp,
          fontFamily: "GoogleSans"),
      cursorColor: AppColors.whiteColor,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      cursorErrorColor: AppColors.whiteColor,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          height: 1,
          color: AppColors.redColor,
          fontSize: 13.sp,
          fontFamily: "GoogleSans",
        ),
        contentPadding: EdgeInsets.all(15.h),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.whiteColor,
            width: 2.r,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.whiteColor,
            width: 2.r,
          ),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor, width: 2.r)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.whiteColor, width: 2.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.whiteColor,
            width: 2.r,
          ),
        ),
      ),
    );
  }
}
