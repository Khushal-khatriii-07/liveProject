import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/widgets/materialDesign.dart';

class BleReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('BLE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('CONNECTION'),
                matDesign(onPressed: (){}, text: 'Connected', color: Color(0xFF3CBC00).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF3CBC00), fontSize: 13,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('FIRMWARE VERSION'),
                matDesign(onPressed: (){}, text: '2.4.1', color: Color(0xFFA136E2).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFFA136E2), fontSize:13)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('BAUD RATE'),
                matDesign(onPressed: (){}, text: '123456', color: Color(0xFF337AB7).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF337AB7), fontSize:13)
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: 339,
                height: 56,
                child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
          ],
        ),
      ),

    );
  }

}