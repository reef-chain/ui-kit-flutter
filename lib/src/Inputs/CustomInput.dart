import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class CustomInput extends StatelessWidget {
  final bool isReadOnly;
  final String hintText;
  final FocusNode? focus;
  final bool isValueEditing;
  final dynamic onTextChanged;
  final dynamic validator;
  final TextEditingController? controller;
  const CustomInput({required this.isReadOnly,required this.isValueEditing ,required this.controller, required this.hintText,required this.focus,required this.onTextChanged,required this.validator, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: this.isValueEditing
              ? Border.all(color: const Color(0xffa328ab))
              : Border.all(color: const Color(0x00d7d1e9)),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            if (this.isValueEditing)
              const BoxShadow(
                  blurRadius: 15,
                  spreadRadius: -8,
                  offset: Offset(0, 10),
                  color: Color(0x40a328ab))
          ],
          color: this.isValueEditing
              ? const Color(0xffeeebf6)
              : const Color(0xffE7E2F2),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                focusNode: this.focus,
                readOnly: this.isReadOnly,
                controller: this.controller,
                onChanged: this.onTextChanged,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: this.isReadOnly
                        ? Styles.textLightColor
                        : Styles.textColor),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    border: InputBorder.none,
                    hintText: this.hintText,
                    hintStyle: TextStyle(color: Styles.textLightColor)),
                validator: this.validator,
              ),
            ),
          ],
        ),
      );
  }
}