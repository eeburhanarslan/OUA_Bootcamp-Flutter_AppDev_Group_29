// ignore_for_file: deprecated_member_use
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget {
  final String? value;
  final int? color1;
  final Function? pressed;

  // ignore: use_key_in_widget_constructors
  const calculatorButton({this.value, this.color1, this.pressed});

  @override
  Widget build(BuildContext context) {
    var child2 = null;
    return Container(
      margin: EdgeInsets.all(4),
      child: SizedBox(
        // ignore: prefer_const_constructors
        child: FlatButton(
          color: Color(color1!),
          onPressed: () {
            pressed!(value);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            value!,
            style: GoogleFonts.roboto(
            textStyle: TextStyle(
            fontSize: 25,

            ),
          ),
          ),

        ),
        width: 80,
        height: 80,
        ),
    );
  }
}