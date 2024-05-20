import 'dart:io';

import 'package:card_maker/constants/images_path.dart';
import 'package:card_maker/widgets/input_fields.dart';
import 'package:card_maker/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:image_picker/image_picker.dart';

import '../../card_design_1/card_design_1.dart';
import '../../card_number_2/card_design_2.dart';
import '../../card_number_3/card_design_3.dart';
import '../../card_number_4/card_design_4.dart';
import '../../constants/colors.dart';
import '../../widgets/text_widget.dart';

class DataScreen extends StatefulWidget {
  DataScreen({super.key,required this.templateNumber});

  var templateNumber;

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  var nameC = TextEditingController(text: name);
  var companyC = TextEditingController(text: companyName);
  var phoneC = TextEditingController(text: phone);
  var addressC = TextEditingController(text: address);
  var webC = TextEditingController(text: website);
  var tagLineC = TextEditingController(text: tagLine);

  Future<void> pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        setState(() {
          image = pickedImage.path;
        });
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print(widget.templateNumber);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColor,
        title: TextWidget(text: "Card Information", fontSize: 18.dp, fontWeight: FontWeight.bold, isTextCenter: false, textColor: Colors.white),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              name = "";
              companyName = "";
              phone = "";
              address = "";
              tagLine = "";
              website = "";
              image = "";
              nameC.text= "";
              companyC.text= "";
              phoneC.text= "";
              addressC.text= "";
              webC.text= "";
              tagLineC.text= "";
            });
          }, child: Text("Clear",style: TextStyle(color: Colors.white),)),
          SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: GestureDetector(
                  onTap: (){
                    pickImage();
                  },
                  child: CircleAvatar(
                    radius: 70,
                    child: image == "" ? Text("Logo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.dp),) : null,
                    backgroundImage: image != "" ? FileImage(File(image)) :null,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Name"),
              InputField(inputController: nameC,hintText: "Name",),
              SizedBox(height: 10,),
              Text("Company Name"),
              InputField(inputController: companyC,hintText: "Company Name",),
              SizedBox(height: 10,),
              Text("Phone Number"),
              InputField(inputController: phoneC,hintText: "Phone Number",type: TextInputType.number,),
              SizedBox(height: 10,),
              Text("Address"),
              InputField(inputController: addressC,hintText: "Address",),
              SizedBox(height: 10,),
              Text("Website/Email"),
              InputField(inputController: webC,hintText: "Website/Email",),
              SizedBox(height: 10,),
              Text("Tag Line"),
              InputField(inputController: tagLineC,hintText: "Tag Line",textInputAction: TextInputAction.none,),
              // SubmitButton(
              //     height: 200,
              //     width: 200,
              //     title: "Card Data",
              //     press: (){
              //       showModalBottomSheet(
              //           backgroundColor: Colors.white,
              //           context: context,
              //           isScrollControlled: true,
              //           builder: (context)=>const CardInfo());
              //     }
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SubmitButton(
          title: "Generate Card",
            press: (){
            if(widget.templateNumber == 1){
              cardDesign1(context);
            }else if(widget.templateNumber == 2){
              cardDesign2(context);
            }else if(widget.templateNumber == 3){
              cardDesign3(context);
            }else if(widget.templateNumber == 4){
              cardDesign4(context);
            }
            setState(() {
              name = nameC.text;
              companyName = companyC.text;
              phone = phoneC.text;
              address = addressC.text;
              website = webC.text;
              tagLine = tagLineC.text;
            });
            }
        ),
      ),
    );
  }
}
// class CardInfo extends StatefulWidget {
//   const CardInfo({super.key});
//
//   @override
//   State<CardInfo> createState() => _CardInfoState();
// }
//
// class _CardInfoState extends State<CardInfo> {
//   var nameC = TextEditingController(text: name);
//   var companyC = TextEditingController(text: companyName);
//   var phoneC = TextEditingController(text: phone);
//   var addressC = TextEditingController(text: address);
//   var webC = TextEditingController(text: website);
//   var tagLineC = TextEditingController(text: tagLine);
//
//   Future<void> pickImage() async {
//     try {
//       final picker = ImagePicker();
//       final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//
//       if (pickedImage != null) {
//         image = pickedImage.path;
//       } else {
//         print('No image selected.');
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.only(right: 15,left: 15,top: 15,bottom: MediaQuery.of(context).viewInsets.bottom),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(onPressed: (){
//                   setState(() {
//                     name = nameC.text;
//                     companyName = companyC.text;
//                     phone = phoneC.text;
//                     address = addressC.text;
//                     website = webC.text;
//                     tagLine = tagLineC.text;
//                   });
//                   print(name);
//                   print(companyName);
//                   print(phone);
//                   print(address);
//                   print(website);
//                   print(tagLine);
//                   Navigator.pop(context);
//                 }, child: TextWidget(text: "save", fontSize: 14.dp, fontWeight: FontWeight.w500, isTextCenter: false, textColor: appColor))
//               ],
//             ),
//             SizedBox(height: 10,),
//             InputField(inputController: nameC,hintText: "Name",),
//             SizedBox(height: 10,),
//             InputField(inputController: companyC,hintText: "Company Name",),
//             SizedBox(height: 10,),
//             InputField(inputController: phoneC,hintText: "Phone Number",),
//             SizedBox(height: 10,),
//             InputField(inputController: addressC,hintText: "Address",),
//             SizedBox(height: 10,),
//             InputField(inputController: webC,hintText: "Website/Email",),
//             SizedBox(height: 10,),
//             InputField(inputController: tagLineC,hintText: "Tag Line",),
//             SizedBox(height: 10,),
//             SubmitButton(
//                 title: "Pick Image",
//                 press: ()async{
//                   await pickImage();
//                   print(image.toString());
//             }),
//             SizedBox(height: 10,)
//           ],
//         ),
//       ),
//     );
//   }
// }

String name = "",companyName = "",phone = "",address = "",website = "",tagLine = "",image = "";