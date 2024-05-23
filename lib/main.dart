import 'package:flutter/material.dart';
import 'package:liveproject/Common/customContainer.dart';
import 'package:liveproject/Common/showModelBottomSheet.dart';
import 'package:liveproject/HomeScreenConnected.dart';
import 'package:liveproject/pages/BatteryTestReport.dart';
import 'package:liveproject/pages/Diagonist_test.dart';
import 'package:liveproject/pages/temperValve.dart';
import 'package:liveproject/splash_screen.dart';
import 'package:liveproject/widgets/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.gpp_bad_outlined, Colors.red, 'Are You Sure?', 'Are you certain you want to disconnect from this meter & link to a different meter!', 'Disconnect -->', 'No! Stay Connected'),
                child: Text('ConnectionRetry')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.gpp_bad_outlined, Colors.red, 'Uhh Ho! Error', 'The action couldn’t be performed! 🚫', 'Retry', 'Back To Home ->'),
                child: Text('ConnectionError')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.assignment_turned_in_outlined, Color(0xFF62E524), 'Images Uploaded!', '', '', 'The meter images has been uploaded successfully ✅'),
                child: Text('ImageUploaded')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.gpp_bad_outlined, Colors.red, 'Uhh Ho! Error', 'The passwords couldn’t be changed 🚫', 'Retry', '<- Back To Login'),
                child: Text('password error')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.gpp_bad_outlined, Colors.red, 'Uhh Ho! Error', 'The username or password seems incorrect!', 'Retry', ''),
                child: Text('login error')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.bluetooth_searching, Color(0xFF0A3690), 'Permission Required!', 'Please Turn ON your Bluetooth to proceed further', 'Turn ON Bluetooth', ''),
                child: Text('bleTurnOnPermission')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.bluetooth_searching, Color(0xFF0A3690), 'Permission Required!', 'Allow App to find, connect to, & determine the relative position of nearby devices?', 'Allow', '<-- Don’t Allow'),
                child: Text('bleAppPermission')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.bluetooth_disabled, Colors.red, 'Connection Lost!', 'Looks like the Bluetooth is turned off! Kindly turn it ON to process smoothly.', 'Turn ON Bluetooth', ''),
                child: Text('bleConnectionLost')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.gpp_bad_outlined, Colors.red, 'Couldn’t Connect!', 'Not able to pair to any meter 🚫 Please retry again or in sometime', 'Retry', '<- Back To Verification'),
                child: Text('meterPairingWithBluetoothError')),
            SizedBox(height: 40),
            InkWell(
                onTap: () => ShowModalBottomSheet(context).commonShowBottomModelSheet(context, Icons.bluetooth_disabled, Colors.red, 'Disconnected!', 'You have been disconnected from Meter 123POL55X successfully 🚫', 'Connect to New Meter ->', ''),
                child: Text('DisconnctedFromMeter')),
          ],
        )
      ),
    );
  }
}