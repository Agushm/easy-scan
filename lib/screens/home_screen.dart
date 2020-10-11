import 'package:EasyScan/screens/saved_pdf.dart';
import 'package:flutter/material.dart';
import 'package:EasyScan/widgets/home_card.dart';
import 'package:EasyScan/screens/images_to_pdf.dart';
import 'package:EasyScan/screens/scan_and_convert.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Easy Scan",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeCard(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ScanAndConvert())),
              iconData: Icons.image_search,
              text: 'Scan and convert',
            ),
            HomeCard(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ImageToPdf())),
              iconData: Icons.picture_as_pdf_outlined,
              text: 'Images to Pdf',
            ),
            HomeCard(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SavedPdfScreen())),
              iconData: Icons.save_rounded,
              text: 'History',
            ),
            // This widget is needed to be implemented for recent projects
            // Expanded(
            //     child: Container(
            //         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            //         margin: const EdgeInsets.only(top: 20),
            //         decoration: BoxDecoration(
            //             color: Colors.grey.shade300,
            //             borderRadius: const BorderRadius.only(
            //                 topLeft: Radius.circular(50),
            //                 topRight: Radius.circular(50))),
            //         child: GridView.builder(
            //             gridDelegate:
            //                 const SliverGridDelegateWithFixedCrossAxisCount(
            //                     crossAxisCount: 2,
            //                     mainAxisSpacing: 1,
            //                     crossAxisSpacing: 1),
            //             itemBuilder: (context, index) {
            //               return Container(
            //                   margin: const EdgeInsets.symmetric(horizontal: 10),
            //                   child: Center(
            //                     child: Text(
            //                       index.toString(),
            //                     ),
            //                   ));
            //             })))
          ]),
    );
  }
}
