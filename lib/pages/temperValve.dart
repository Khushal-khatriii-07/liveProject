import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class TamperValve extends StatelessWidget{
  final ImagePickerDemo controller = ImagePickerDemo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 18, right: 18, bottom: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap:(){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back, color: Color(0xFF0A3690), size: 17,)),
                    SizedBox(width: 5,),
                    Text('Tamper Valve on Permission', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),)
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reason of tamper', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),),
                      TextFormField(
                        cursorColor: Color(0xFF0A3690),
                        decoration: InputDecoration(
                          hintText: 'State the reason for meter tamper here...',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0A3690)),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF0A3690)),
                              borderRadius: BorderRadius.circular(12),
                          ),
                          
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Upload Images',  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),),
                      Obx(()=> controller.images.length == 0 ? Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF0A3690)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Upload relevant images'),
                              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690)),child: Text('Capture', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                            ],
                          ),
                        ) : Container(),),
                      SizedBox(height: 10,),
                      Text('Why the valve should be turned on?', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600), ),
                      TextFormField(
                        cursorColor: Color(0xFF0A3690),
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Document reasons why the valve should be switched on',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF0A3690)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF0A3690)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690)), child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)))
              ],
            ),
          ),
        ),
    );
  }

}

class ImagePickerDemo extends GetxController{
  final RxList images = [].obs;
  Future<void> pickFile() async{
    ImagePicker picker = ImagePicker();
    try{
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      if(pickedFile!= null){
        images.add(File(pickedFile.path.toString()));
      }
    }catch(e){
      print('error is: ${e.toString()}');
    }
  }
}