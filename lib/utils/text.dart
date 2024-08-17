import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modifiedText extends StatelessWidget {
  const modifiedText(
    {Key? key, required this.text, required this.size, required this.color}
  ): super(key: key);

  final Color color;
  final double size;
  final String text;

  @override
  Widget build(BuildContext context){
    return Text(text, style: GoogleFonts.lato(color: color, fontSize: size));
  }
}

class boldText extends StatelessWidget {
  const boldText({
    Key? key, required this.text, required this.color, required this.size
  }): super(key:key);

  final Color color;
  final double size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color, fontSize: size, fontWeight: FontWeight.bold));
  }
}



