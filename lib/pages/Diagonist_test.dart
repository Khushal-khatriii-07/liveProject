import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/Common/showModelBottomSheet.dart';
import 'package:liveproject/pages/BatteryTestReport.dart';
import 'package:liveproject/pages/BleReport.dart';
import 'package:liveproject/pages/pulseDetectionReport.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../Common/customContainer.dart';
import '../widgets/materialDesign.dart';

class DiagonistTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DiagonistTest();
}

class _DiagonistTest extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A3690),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Image.asset('assets/images/Profile.png')
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey! Technician1 ⚡', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            Text('TECHID: #101POL6885204', style: TextStyle(fontSize: 15, color: Color(0xFFB1B1B1)))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back, color: Color(0xFF0A3690),)),
                Text('Diagonist Test', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                height: 457,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContainer(iconData: Icons.bluetooth, text: 'BLE', onTap: (){ShowModalBottomSheet(context).bleShowBottomModelSheet(context);},),
                    CustomContainer(iconData: Icons.battery_charging_full, text: 'BATTERY TEST', onTap: () {ShowModalBottomSheet(context).batteryShowBottomModalSheet(context);},),
                    CustomContainer(iconData: Icons.show_chart, text: 'PULSE DETECTION', onTap: () {ShowModalBottomSheet(context).pulseShowBottomModalSheet(context);},),
                    CustomContainer(iconData: Icons.cell_tower_sharp, text: 'NB', trailingText: 'Comming Soon', surfaceColor: Color(0xFFF0F0F0),),
                    CustomContainer(iconData: Icons.compress_outlined, text: 'VALVE/RELAY', trailingText: 'Comming Soon', surfaceColor: Color(0xFFF0F0F0))
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }

  // bleShowBottomModelSheet(BuildContext context) {
  //   return showModalBottomSheet(context: context, builder: (context){
  //     return Padding(
  //       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
  //           SizedBox(height: 20),
  //           Text('BLE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
  //           SizedBox(height: 20,),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('CONNECTION'),
  //               matDesign(onPressed: (){}, text: 'Connected', color: Color(0xFF3CBC00).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF3CBC00), fontSize: 13,)
  //             ],
  //           ),
  //           SizedBox(height: 20,),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('FIRMWARE VERSION'),
  //               matDesign(onPressed: (){}, text: '2.4.1', color: Color(0xFFA136E2).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFFA136E2), fontSize:13)
  //             ],
  //           ),
  //           SizedBox(height: 20,),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('BAUD RATE'),
  //               matDesign(onPressed: (){}, text: '123456', color: Color(0xFF337AB7).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF337AB7), fontSize:13)
  //             ],
  //           ),
  //           SizedBox(height: 20,),
  //           SizedBox(
  //               width: 339,
  //               height: 56,
  //               child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
  //         ],
  //       ),
  //     );
  //   });
  // }
  //
  // batteryShowBottomModalSheet(BuildContext context) {
  //   return showModalBottomSheet(context: context, builder: (context){
  //     double batteryValue = 95;
  //     return Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
  //           SizedBox(height: 20),
  //           Text('Battery Test Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
  //           SizedBox(height: 10),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Container(
  //                 decoration: BoxDecoration(
  //                     color: Color(0xFF3CBC00).withOpacity(0.1),
  //                     borderRadius: BorderRadius.circular(8)
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
  //                   child: Text('Healthy Battery', style: TextStyle(color: Color(0xFF3CBC00)),),
  //                 ),
  //               ),
  //               Text('${batteryValue.toInt()}%', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3CBC00)),)
  //             ],
  //           ),
  //           SizedBox(height: 20,),
  //           Container(
  //             height: 200,
  //             width: 300,
  //             child: SfRadialGauge(
  //               axes: <RadialAxis> [
  //                 RadialAxis(
  //                   startAngle: 180,
  //                   endAngle: 0,
  //                   showLabels: false,
  //                   axisLineStyle: AxisLineStyle(thickness: 0),
  //                   minimum: 0,
  //                   maximum: 100,
  //                   interval: 10,
  //                   ranges: <GaugeRange>[
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 0,
  //                       endValue: 10,
  //                       color: Color(0xFFFF1919),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 10,
  //                       endValue: 20,
  //                       color: Color(0xFFFF4343),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 20,
  //                       endValue: 30,
  //                       color: Color(0xFFFF7373),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 30,
  //                       endValue: 40,
  //                       color: Color(0xFFFAAC36),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 40,
  //                       endValue: 50,
  //                       color: Color(0xFFFF9B03),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 50,
  //                       endValue: 60,
  //                       color: Color(0xFFE7F825),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 60,
  //                       endValue: 70,
  //                       color: Color(0xFFD0FF83),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 70,
  //                       endValue: 80,
  //                       color: Color(0xFF88FA51),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 80,
  //                       endValue: 90,
  //                       color: Color(0xFF65E429),
  //                     ),
  //                     GaugeRange(
  //                       startWidth: 20,
  //                       endWidth: 20,
  //                       startValue: 90,
  //                       endValue: 100,
  //                       color: Color(0xFF3CBC00),
  //                     ),
  //                   ],
  //                   pointers: <GaugePointer>[
  //                     NeedlePointer(
  //                       value: batteryValue,
  //                       needleColor: Colors.black12,
  //                       knobStyle: KnobStyle(color: Colors.black),
  //                       enableAnimation: true,
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //               width: 339,
  //               height: 56,
  //               child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
  //         ],
  //       ),
  //     );
  //   });
  // }
  //
  // pulseShowBottomModalSheet(BuildContext context) {
  //   return showModalBottomSheet(context: context, builder: (context){
  //     return Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
  //           SizedBox(height: 20),
  //           Text('Pulse Detection Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
  //           SizedBox(height: 20,),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Row(
  //                 crossAxisAlignment: CrossAxisAlignment.end,
  //                 children: [
  //                   Text('Xx / Yy', style: TextStyle(fontSize: 36, color: Color(0xFF3CBC00)),),
  //                   SizedBox(width: 10,),
  //                   Text('UNITS', style: TextStyle(fontSize: 12, color: Color(0xFF70797E), fontFeatures: [FontFeature.subscripts()]),),
  //                 ],
  //               ),
  //               Image.asset('assets/images/img.png', scale: 3)
  //             ],
  //           ),
  //           SizedBox(height: 10,),
  //           Text('*1 pulse equals 0.01 cubical meters', style: TextStyle(color: Color(0xFF70797E), fontSize: 16),),
  //           SizedBox(height: 20),
  //           SizedBox(
  //               width: 339,
  //               height: 56,
  //               child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
  //
  //         ],
  //       ),
  //     );
  //   });
  // }

}
