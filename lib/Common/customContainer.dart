import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/widgets/materialDesign.dart';

class CustomContainer extends StatelessWidget{
  final IconData iconData;
  final VoidCallback? onTap;
  final String text;
  final Color? surfaceColor;
  final String? trailingText;
  const CustomContainer({super.key, required this.iconData, this.onTap, required this.text, this.trailingText, this.surfaceColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 77,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF337AB7)),
          borderRadius: BorderRadius.circular(21),
          color: surfaceColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(iconData, color: Color(0xFF0A3690),),
                  SizedBox(width: 10),
                  Text(text, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),),
                ],
              ),
              trailingText!=null ? SizedBox(
                  height:21,child: matDesign(text: trailingText!=null ? trailingText!: '',fontSize: 10, textColor: Color(0xFFFF1919), color: Color(0xFFFF1919).withOpacity(0.1),fontWeight: FontWeight.w600, borderRadius: 6,)) : Container()
            ],
          ),
        ),
      ),
    );
  }

}