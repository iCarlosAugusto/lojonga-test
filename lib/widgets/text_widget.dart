import 'package:flutter/material.dart';

enum AvailableFontSizes { small, medium, big }

class TextWidget extends StatelessWidget {
  const TextWidget(this.content,
      {super.key,
      this.isFontWeight = false,
      this.fontSize ,
      this.color,
      this.margin,
      this.textAlign,
      this.customFontsize,
      this.customWeight,
      this.textOverflow,
    });

  final String content;
  final bool isFontWeight;
  final AvailableFontSizes? fontSize;
  final Color? color;
  final EdgeInsets? margin;
  final TextAlign? textAlign;
  final double? customFontsize;
  final FontWeight? customWeight;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    double calculateFontSize() {
      if (fontSize == AvailableFontSizes.small) return 12;

      if (fontSize == AvailableFontSizes.medium) return 16;

      if (fontSize == AvailableFontSizes.big) return 18;

      return 16;
    }

    return Container(
      margin: margin,
      child: Text(
        textAlign: textAlign,
        content,
        overflow: textOverflow,
        style: TextStyle(
            color: color,
            fontWeight:  isFontWeight ? FontWeight.w800 : customWeight ?? FontWeight.w500,
            fontSize: customFontsize ?? calculateFontSize(),
            fontFamily: 'Sora'
          ),
      ),
    );
  }
}