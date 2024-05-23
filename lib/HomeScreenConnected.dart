import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/gradientBall.dart';
import 'package:liveproject/pages/Diagonist_test.dart';
import 'package:liveproject/pages/temperValve.dart';
import 'package:liveproject/widgets/materialDesign.dart';

class HomeScreenConnected extends StatefulWidget{
  @override
  State<HomeScreenConnected> createState() => _HomeScreenConnectedState();
}

class _HomeScreenConnectedState extends State<HomeScreenConnected> {
  bool isSwitched1 = false;

  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFebf9e9),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A3690),
        leading: Image.asset('assets/images/Profile.png'),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey! Technician1 ⚡', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            Text('TECHID: #101POL6885204', style: TextStyle(fontSize: 14, color: Color(0xFFB1B1B1)))
          ],
        ),
        actions: [
          Builder(builder: (context){
            return Padding(padding: EdgeInsets.only(right: 18), child: IconButton(color: Colors.white, onPressed: () { Scaffold.of(context).openDrawer(); }, icon: Icon(Icons.dashboard),));
          })
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 50),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/Profile.png')),
              title: Text('Developer2 🧑🏻‍💻', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0A3690)),),
              subtitle: Row(
                children: [
                  Icon(Icons.badge_outlined, color: Color(0xFF0A3690),size: 10,),
                  SizedBox(width: 5,),
                  Text('ID1202POL5285333', style: TextStyle(color: Color(0xFF0A3690), fontSize: 8, fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.bluetooth_searching, color: Color(0xFF0A3690),),
              title: Text('Connect To BP', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.backup_outlined, color: Color(0xFF0A3690),),
              title: Text('Upload BP Data', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.playlist_add_circle_outlined, color: Color(0xFF0A3690),),
              title: Text('Diagnostic Test', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DiagonistTest()));},
            ),
            ListTile(
              leading: Icon(Icons.sell_outlined, color: Color(0xFF0A3690),),
              title: Text('Tariff Update', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.compress_outlined, color: Color(0xFF0A3690),),
              title: Text('Tamper-Permission To Turn On Valve', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.memory, color: Color(0xFF0A3690),),
              title: Text('FOTA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_outlined, color: Color(0xFF0A3690),),
              title: Text('Capture Meter Picture', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined, color: Color(0xFF0A3690),),
              title: Text('Help', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined, color: Color(0xFF0A3690),),
              title: Text('Connect Logout', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: heightSize-620,
              width: widthSize,
              color: Colors.white,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: BlurryContainer(
                        blur: 25,
                        height: heightSize,
                        width: widthSize,
                        elevation: 6,
                        padding: EdgeInsets.only(left: 10),
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 21, top: 18, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Customer ID:', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),),
                                      SizedBox(width: 5),
                                      matDesign(text: '123POL55x', color: Color(0xFF0A3690).withOpacity(0.1), textColor: Color(0xFF0A3690), traillingIconData: Icons.keyboard_arrow_down, borderRadius: 100, fontWeight: FontWeight.w600,)
                                    ],
                                  ),
                                  Text('METER NO- XXXXXXXXXX', style: TextStyle(fontSize: 12, color: Color(0xFF838A8F), fontWeight: FontWeight.w400),),
                                  Row(
                                    children: [
                                      matDesign(text: 'Connected', fontSize: 8, textColor: Color(0xFF3CBC00), fontWeight: FontWeight.w500, leadingIconData: Icons.circle),
                                      SizedBox(width: 10,),
                                      Text('last sync Time- 15:34:22 | 03 Mar 2024', style: TextStyle(fontSize: 6, color: Color(0xFF337AB7), fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                  matDesign(text: 'DisConnect Connection', color: Color(0xFFFF1919).withOpacity(0.1), textColor: Colors.red, leadingIconData: Icons.bluetooth_disabled, fontSize: 7, fontWeight: FontWeight.w500, borderRadius: 100,)
                                ],
                              ),
                              Image.asset('assets/images/meter.png')
                            ],
                          ),
                        ),
                  )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 21,
              child:Center(
                child: Text('METER SYNCED SUCCESSFULLY', style: TextStyle(color: Colors.lightGreen, fontSize: 8, fontWeight: FontWeight.w500),),
              ),
            ),
            Container(
              width: widthSize,
              color: Colors.white,
              child: Stack(
                children: [
                  const Positioned(
                    top: 160,
                    left: -120,
                    child: GradientBall(
                      size: Size.square(260),
                      colors: [Color(0xFF337AB7), Color(0xFF07123C)], alignmentBegin: Alignment.topRight, alignmentEnd: Alignment.bottomLeft,
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    right: -140,
                    child: GradientBall(
                      size: Size.square(236),
                      alignmentBegin: Alignment.topLeft,
                      alignmentEnd: Alignment.bottomRight,
                      colors: [Color(0xFF337AB7), Color(0xFF07123C)],
                    ),
                  ),
                  const Positioned(
                    top: 440,
                    right: 10,
                    child: GradientBall(
                      size: Size.square(130),
                      colors: [Color(0xFF337AB7), Color(0xFF07123C)], alignmentBegin: Alignment.centerLeft, alignmentEnd: Alignment.centerRight,
                    ),
                  ),
                  const Positioned(
                    top: 570,
                    left: -10,
                    child: GradientBall(
                      size: Size.square(130),
                      colors: [Color(0xFF337AB7), Color(0xFF07123C)], alignmentBegin: Alignment.centerLeft, alignmentEnd: Alignment.centerRight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: widthSize,
                      child: Column(
                        children: [
                          BlurryContainer(
                            blur: 10,
                            height: 77,
                            width: 339,
                            elevation: 6,
                            padding: EdgeInsets.all(10),
                            color: Colors.white60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹ ${16180.33}', style: TextStyle(color: Color(0xFF0A3690), fontSize: 25, fontWeight: FontWeight.w700),),
                                    Text('Current Balance', style: TextStyle(color: Color(0xFF838A8F), fontSize: 10),),
                                  ],
                                ),
                                Image.asset('assets/images/moneybag.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          BlurryContainer(
                              blur: 10,
                              height: 77,
                              width: 339,
                              elevation: 6,
                              padding: EdgeInsets.all(10),
                              color: Colors.white60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.sell_outlined, color: Color(0xFF0A3690),),
                                      SizedBox(width: 10),
                                      Text('Tariff Update', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xFFD4E2FD),
                                      radius: 25,
                                      child: Icon(Icons.arrow_circle_right_outlined, color: Color(0xFF0A3690),weight: 100,)),
                                ],
                              )
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlurryContainer(
                                  blur: 10,
                                  height: 215,
                                  width: 145,
                                  elevation: 6,
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xFFFFFFFF),
                                          radius: 25,
                                          child: Icon(Icons.compress, color: Color(0xFF0A3690),weight: 100,)),
                                      Text('Valve', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600, ),),
                                      Text('The valve is turned on 🟢', style: TextStyle(fontSize: 11, color: Color(0xFF848484)),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('ON', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF4B4A4A)),),
                                          Switch(value: isSwitched1, onChanged: (value) => setState(() {
                                            isSwitched1 = value;
                                          }),
                                            activeColor: Colors.white, activeTrackColor: Color(0xFF62E524),
                                            inactiveThumbColor: Colors.white,
                                            inactiveTrackColor: Color(0xFF337AB7),
                                            trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                            if (states.contains(MaterialState.disabled)) {
                                              return null;
                                            }
                                            return Color(0xFF337AB7);
                                          }),// Use the default color.},)
                                          )
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              BlurryContainer(
                                  blur: 10,
                                  height: 215,
                                  width: 145,
                                  elevation: 6,
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0xFFFFFFFF),
                                          radius: 25,
                                          child: Icon(Icons.perm_contact_calendar_outlined, color: Color(0xFF0A3690),weight: 100,)),
                                      Text('Mode', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600, ),),
                                      Text('Meter on remote 👨🏻‍🔧', style: TextStyle(fontSize: 11, color: Color(0xFF848484)),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('REMOTE', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF4B4A4A)),),
                                          Switch(value: isSwitched2, onChanged: (value) => setState(() {
                                            isSwitched2 = value;
                                          }),
                                            activeColor: Colors.white, activeTrackColor: Color(0xFF62E524),
                                            inactiveThumbColor: Colors.white,
                                            inactiveTrackColor: Color(0xFF337AB7),
                                            trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                              if (states.contains(MaterialState.disabled)) {
                                                return null;
                                              }
                                              return Color(0xFF337AB7);
                                            }),// Use the default color.},)
                                          )
                                        ],
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TamperValve()));},
                            child: BlurryContainer(
                                blur: 10,
                                height: 77,
                                width: 339,
                                elevation: 6,
                                padding: EdgeInsets.all(10),
                                color: Colors.white60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.compress, color: Color(0xFF0A3690),),
                                        SizedBox(width: 10),
                                        SizedBox(
                                          width: 200,
                                          child: Text('Tamper-Permission To Turn On Valve', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward, color: Color(0xFF0A3690),weight: 100,),
                                  ],
                                )
                            ),
                          ),
                          SizedBox(height: 20),
                          BlurryContainer(
                              blur: 10,
                              height: 77,
                              width: 339,
                              elevation: 6,
                              padding: EdgeInsets.all(10),
                              color: Colors.white60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.memory, color: Color(0xFF0A3690)),
                                      SizedBox(width: 10),
                                      Text('FOTA', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                          height:20,
                                          child: matDesign(text: '2.4.1', textColor: Color(0xFFA136E2), color: Color(0xFFA136E2).withOpacity(0.1), fontSize: 10, borderRadius: 6,)),
                                      SizedBox(width: 25),
                                      Icon(Icons.arrow_forward, color: Color(0xFF0A3690),weight: 100,),
                                    ],
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                  )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
