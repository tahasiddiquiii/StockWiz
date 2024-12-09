// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/colors.dart';
import '../constants/styling/app_style.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final Widget? label;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Color? color;
  final bool readOnly;
  final bool isEmailfield;
  final TextEditingController? controller;
  final TextInputFormatter? formatter;
  final TextInputType? keyboardType;
  final bool isContact;
  final bool? isEnable;
  final int? maxLine;
  FloatingLabelBehavior? floatingLabelBehavior;
  FocusNode? focusNode;
  void Function(String)? onChanged;
  final bool isRichText;
  final double? borderWidth; // Parameter for border width
  final Color? borderColor; // Parameter for border color
  final Color? textColor; // Parameter for typed text color
  final double? cornerRadius; // Parameter for corner radius
  final Color? cursorColor; // Parameter for cursor color
  final double? cursorWidth; // Parameter for cursor width
  final Radius? cursorRadius; // Parameter for cursor radius

  CustomTextField({
    super.key,
    this.label,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.isEmailfield = false,
    this.controller,
    this.formatter,
    this.keyboardType,
    this.isContact = false,
    this.isEnable = true,
    this.floatingLabelBehavior,
    this.maxLine,
    this.focusNode,
    this.onChanged,
    this.readOnly = false,
    this.isRichText = false,
    this.borderWidth,
    this.borderColor,
    this.textColor,
    this.cornerRadius,
    this.cursorColor,
    this.cursorWidth,
    this.cursorRadius,
  });

  @override
  Widget build(BuildContext context) {
    return isRichText
        ? Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: color ?? Colors.white,
                    borderRadius: BorderRadius.circular(cornerRadius ?? 8.0),
                    border: Border.all(
                      color: borderColor ?? Colors.grey.shade200,
                      width: borderWidth ?? 1.0,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (prefixIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 7, right: 10),
                          child: Transform.scale(scale: 4, child: prefixIcon!),
                        ),
                      if ((controller?.text.isEmpty ?? true) &&
                          hintText != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                          child: Text(
                            hintText!,
                            style: hintStyle ??
                                const TextStyle(color: Colors.grey),
                          ),
                        ),
                      if (sufixIcon != null)
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 5),
                            child: sufixIcon!,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (label != null)
                Positioned(
                  left: 10.0,
                  top: 0.0,
                  child: Container(
                    color: color ?? Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: label,
                  ),
                ),
            ],
          )
        : TextFormField(
            readOnly: readOnly,
            maxLength: isContact == true ? 10 : null,
            maxLines: maxLine ?? 1,
            onChanged: onChanged,
            enabled: isEnable,
            focusNode: focusNode,
            cursorColor: cursorColor ?? AppColors.blackColor,
            cursorWidth: cursorWidth ?? 2.0,
            cursorRadius: cursorRadius ?? const Radius.circular(2.0),
            controller: controller,
            style: TextStyle(
              color: textColor ?? AppColors.black,
            ),
            inputFormatters: [
              formatter ?? FilteringTextInputFormatter.deny(RegExp(r'[\\]')),
            ],
            decoration: InputDecoration(
              counterText: "",
              fillColor: color,
              filled: true,
              floatingLabelBehavior: floatingLabelBehavior,
              label: label,
              hintText: hintText,
              hintStyle: hintStyle,
              helperStyle: AppStyling.textStyleBlackF12W500(
                  color: AppColors.subHeadingGrey),
              prefixIcon: prefixIcon,
              suffixIcon: sufixIcon,
              prefixText: isContact ? '+91 ' : '',
              prefixStyle: TextStyle(color: Colors.black54, fontSize: 13.5.sp),
              labelStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(cornerRadius ?? 8.0), // Corner radius
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey.shade200,
                  width: borderWidth ?? 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(cornerRadius ?? 8.0), // Corner radius
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey.shade200,
                  width: borderWidth ?? 1.0,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(cornerRadius ?? 8.0), // Corner radius
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey.shade200,
                  width: borderWidth ?? 1.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(cornerRadius ?? 8.0), // Corner radius
                borderSide: BorderSide(
                  color: Colors.red.shade200,
                  width: borderWidth ?? 1.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(cornerRadius ?? 8.0), // Corner radius
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey.shade200,
                  width: borderWidth ?? 1.0,
                ),
              ),
            ),
            keyboardType: keyboardType,
          );
  }
}
