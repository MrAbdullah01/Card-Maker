import 'package:card_maker/constants/colors.dart';
import 'package:card_maker/constants/images_path.dart';
import 'package:card_maker/privacy_policy.dart';
import 'package:card_maker/screens/data_screen/data_screen.dart';
import 'package:card_maker/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});

  List<String> cardImages = [card_1,card_2,card_3,card_4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColor,
        title: TextWidget(text: "Choose Card", fontSize: 18.dp, fontWeight: FontWeight.bold, isTextCenter: false, textColor: Colors.white),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
          }, icon: Icon(Icons.privacy_tip_outlined,color: Colors.white,))
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 20,mainAxisExtent: 300),
          itemCount: cardImages.length,
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DataScreen(templateNumber: index + 1,)));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Image.asset(cardImages[index],fit: BoxFit.fill,)),
          ),
        );
      })
    );
  }
}
