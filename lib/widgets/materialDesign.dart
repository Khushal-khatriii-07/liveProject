import 'package:flutter/material.dart';
class matDesign extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? borderRadius;
  final Color? textColor;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final IconData? traillingIconData;
  final IconData? leadingIconData;
  const matDesign({super.key, this.onPressed, required this.text, this.color, this.traillingIconData, this.borderRadius, this.textColor, this.fontSize, this.leadingIconData, this.fontWeight,});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color != null ? color : Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius != null ? borderRadius! : 0),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              leadingIconData != null ? Icon(leadingIconData, size: fontSize, color: textColor,) : Container(),
              Text(text, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: fontSize),),
              traillingIconData != null ? Icon(traillingIconData) : Container()
            ],
          ),
        ),
      ),
    );
  }
}