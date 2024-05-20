import 'dart:io';
import 'package:card_maker/constants/images_path.dart';
import 'package:card_maker/screens/data_screen/data_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../preview_screen/preview_screen.dart';


Future<void> cardDesign2(BuildContext context) async{
  final pdf = pw.Document();
  //final pageTheme = await _myPageTheme(PdfPageFormat.standard);
  final addressImage = pw.MemoryImage(
    (await rootBundle.load(addressIcon)).buffer.asUint8List(),
  );
  final emailImage = pw.MemoryImage(
    (await rootBundle.load(emailIcon)).buffer.asUint8List(),
  );
  final phoneImage = pw.MemoryImage(
    (await rootBundle.load(phoneIcon)).buffer.asUint8List(),
  );

  final imagePath = image;

  final imageFile = File(imagePath);
  final logo = image != "" ?  pw.MemoryImage(
    imageFile.readAsBytesSync(),
  ) : pw.MemoryImage(
    (await rootBundle.load(profile)).buffer.asUint8List(),
  );

  List<pw.Widget> widgets = [];

  final row = pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.start,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Row(
          children: [
            pw.Container(
              height: 250,
              width: 260,
              decoration: pw.BoxDecoration(
                color: PdfColor.fromInt(0xfff1f1f1)
              ),
              child:pw.Center(child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    image != "" ? pw.Container(
                      height: 70,
                      width: 70,
                      decoration: pw.BoxDecoration(
                          shape: pw.BoxShape.circle,
                      ),
                      child: pw.Center(
                          child: pw.Image(
                              fit: pw.BoxFit.cover,
                              logo)
                      ),
                    ): pw.SizedBox(),
                    pw.SizedBox(height: 5,),
                    pw.Text(companyName,style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColor.fromInt(0xff8bc53f)
                    )),
                    pw.SizedBox(height: 5,),
                    pw.Text(tagLine,style: pw.TextStyle(
                      fontSize: 16,
                      fontWeight: pw.FontWeight.normal,
                      color: PdfColor.fromInt(0xff8bc53f),
                    )),
                  ]
              )),
            ),
            pw.Container(
              height: 250,
              width: 260,
              decoration: pw.BoxDecoration(
                color: PdfColor.fromInt(0xff8bc53f)
              ),
              child:pw.Center(child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Text(name,style: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColor.fromInt(0xfff1f1f1)
                    )),
                    pw.SizedBox(height: 5,),
                    pw.Text("Managing Director",style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.normal,
                        color: PdfColor.fromInt(0xfff1f1f1)
                    )),
                    pw.SizedBox(height: 25,),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(horizontal: 50),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.Image(addressImage, width: 15, height: 15),
                                pw.SizedBox(width: 5),
                                pw.Text(address,style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColor.fromInt(0xfff1f1f1),
                                )),
                              ]
                          ),
                          pw.SizedBox(height: 5),
                          pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.Image(emailImage, width: 15, height: 15),
                                pw.SizedBox(width: 5),
                                pw.Text(website,style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColor.fromInt(0xfff1f1f1),
                                )),
                              ]
                          ),
                          pw.SizedBox(height: 5),
                          pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.Image(phoneImage, width: 15, height: 15),
                                pw.SizedBox(width: 5),
                                pw.Text(phone,style: pw.TextStyle(
                                  fontSize: 14,
                                  fontWeight: pw.FontWeight.normal,
                                  color: PdfColor.fromInt(0xfff1f1f1),
                                )),
                              ]
                          ),
                        ]
                      )
                    )
                  ]
              )),
            ),
          ],
        ),
        pw.SizedBox(height: 20),
        pw.Container(
          height: 210,
          width: 520,
          color: PdfColor.fromInt(0xfff1f1f1),
          child: pw.Center(child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              image != "" ? pw.Container(
                height: 70,
                width: 70,
                decoration: pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                ),
                child: pw.Center(
                    child: pw.Image(
                        fit: pw.BoxFit.cover,
                        logo)
                ),
              ): pw.SizedBox(),
              pw.SizedBox(height: 5,),
              pw.Text(companyName,style: pw.TextStyle(
                fontSize: 24,
                fontWeight: pw.FontWeight.bold,
                color: PdfColor.fromInt(0xff8bc53f)
              )),
              pw.SizedBox(height: 5,),
              pw.Text(tagLine,style: pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.normal,
                color: PdfColor.fromInt(0xff8bc53f),
              )),
            ]
          )),
        ),
        pw.Container(
          height: 40,
          width: 520,
          color: PdfColor.fromInt(0xff8bc53f),
          child: pw.Center(child: pw.Text(website,style: pw.TextStyle(color: PdfColor.fromInt(0xfff1f1f1)))),
        )
      ]
  );


  widgets.add(row);
  pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(35.0),
      build: (context) => widgets
  ));

  Navigator.push(context, MaterialPageRoute(builder: (context)=>PreviewScreen(doc: pdf,)));
}
