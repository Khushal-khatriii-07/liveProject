import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/Common/showModelBottomSheet.dart';
import 'package:liveproject/widgets/materialDesign.dart';

class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ()=>ShowModalBottomSheet(context),
          child: Text('touch')
      ),
    );
  }
  
}