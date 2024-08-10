// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:razin_shop/config/theme.dart';

class IncrementButton extends StatelessWidget {
  final Color? buttonColor;
  final Color? iconColor;
  final void Function()? onTap;
  const IncrementButton({
    Key? key,
    this.buttonColor,
    this.iconColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor ?? colors(context).primaryColor?.withOpacity(0.1),
      borderRadius: BorderRadius.circular(4.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.r),
        onTap: onTap,
        child: Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: iconColor ?? colors(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}