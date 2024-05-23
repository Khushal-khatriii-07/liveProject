import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BatteryTestReport extends StatelessWidget{
  double batteryValue = 95;

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Battery Test Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF3CBC00).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text('Healthy Battery', style: TextStyle(color: Color(0xFF3CBC00)),),
                  ),
                ),
                Text('${batteryValue.toInt()}%', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3CBC00)),)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: SfRadialGauge(
                axes: <RadialAxis> [
                  RadialAxis(
                    startAngle: 180,
                    endAngle: 0,
                    showLabels: false,
                    axisLineStyle: AxisLineStyle(thickness: 0),
                    minimum: 0,
                    maximum: 100,
                    interval: 10,
                    ranges: <GaugeRange>[
                      GaugeRange(
                          startWidth: 20,
                          endWidth: 20,
                          startValue: 0,
                          endValue: 10,
                          color: Color(0xFFFF1919),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 10,
                        endValue: 20,
                        color: Color(0xFFFF4343),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 20,
                        endValue: 30,
                        color: Color(0xFFFF7373),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 30,
                        endValue: 40,
                        color: Color(0xFFFAAC36),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 40,
                        endValue: 50,
                        color: Color(0xFFFF9B03),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 50,
                        endValue: 60,
                        color: Color(0xFFE7F825),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 60,
                        endValue: 70,
                        color: Color(0xFFD0FF83),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 70,
                        endValue: 80,
                        color: Color(0xFF88FA51),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 80,
                        endValue: 90,
                        color: Color(0xFF65E429),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 90,
                        endValue: 100,
                        color: Color(0xFF3CBC00),
                      ),
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: batteryValue,
                        needleColor: Colors.black12,
                        knobStyle: KnobStyle(color: Colors.black),
                        enableAnimation: true,
                      )
                    ],
                  )
                ],
              ),
            ),
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