import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../constants/colors.dart';
class PreviewScreen extends StatelessWidget {
  final pw.Document doc;
  const PreviewScreen({
    Key? key,
    required this.doc,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined,color: Colors.white,),
        ),
        centerTitle: true,
        title: Text("Preview",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        child: PdfPreview(
          build: (PdfPageFormat pageFormat) => doc.save(),
          allowSharing: true,
          allowPrinting: true,
          initialPageFormat: PdfPageFormat.a4,
          pdfFileName: "mydoc.pdf",
        ),
      ),
    );
  }
}