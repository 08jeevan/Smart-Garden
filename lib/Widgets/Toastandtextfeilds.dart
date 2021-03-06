import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Toast messages
Widget flutterToast({String msg}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

// TextFeilds

final OutlineInputBorder kborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15.0),
  borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
);

class TextFields extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final String Function(String) validator;
  final int maxLines;
  final TextInputType type;

  TextFields({
    this.controller,
    this.name,
    this.validator,
    this.maxLines,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: type,
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none,
          fillColor: Colors.grey[200],
          filled: true,
          labelText: name,
          focusedErrorBorder: kborder,
          focusedBorder: kborder,
          enabledBorder: kborder,
          errorBorder: kborder,
        ),
        validator: validator,
      ),
    );
  }
}
