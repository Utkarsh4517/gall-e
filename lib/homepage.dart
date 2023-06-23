import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galle/dropdown.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentValue = 'Hindi';
  String galiToShow = '';
  void updateDropDownValue(String newValue) {
    setState(() {
      currentValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/svg/color-morph.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: width * 0.1),
                        Text(
                          'Frustration is the key to downfall',
                          style: GoogleFonts.chivo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.05),
                        ),
                        Text(
                          'and Frustrating someone else is the key to success!!',
                          style: GoogleFonts.chivo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.03),
                        ),
                        Text(
                          'SO BECOME A PART OF THIS EPIC COMMUNITY BY CONTRIBUTING TO GALI - AI',
                          style: GoogleFonts.chivo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.01),
                        ),
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Text(
                          'Start by selecting your language',
                          style: GoogleFonts.chivo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.007),
                        ),
                        SizedBox(
                          height: width * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropDown(
                              onValueChanged: updateDropDownValue,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (currentValue == 'Hindi') {
                                  fetchHindiGali();
                                } else if (currentValue == 'Bhojpuri') {
                                  fetchBhojpuriGali();
                                } else if (currentValue == 'English') {
                                  fetchEnglishGali();
                                } else if (currentValue == 'Bengali') {
                                  fetchBengaliGali();
                                } else if (currentValue == 'Marathi') {
                                  fetchMarathiGali();
                                } else if (currentValue == 'Haryanvi') {
                                  fetchHaryanviGali();
                                }
                              },
                              child: Container(
                                width: width * 0.08,
                                height: width * 0.03,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    'Generate Gali',
                                    style: GoogleFonts.chivo(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.007,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: width * 0.05),
                        Text(
                          galiToShow,
                          style: GoogleFonts.chivo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.02),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> hindiGaali = [];
  List<String> bhojpuriGaali = [];
  List<String> bengaliGaali = [];
  List<String> marathiGaali = [];
  List<String> englishGaali = [];
  List<String> tamilGaali = [];
  List<String> haryanviGaali = [];

  /// methods to get gali from db
  void fetchHindiGali() async {
    CollectionReference hindiGali =
        FirebaseFirestore.instance.collection('hindi');
    QuerySnapshot hindiGaliCollection = await hindiGali.get();

    final hindiGali1 = hindiGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in hindiGali1) {
      hindiGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(hindiGaali.length);
    var randomElement = hindiGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchBhojpuriGali() async {
    CollectionReference bhojpuriGali =
        FirebaseFirestore.instance.collection('bhojpuri');
    QuerySnapshot bhojpuriGaliCollection = await bhojpuriGali.get();

    final bhojpuriGali1 = bhojpuriGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in bhojpuriGali1) {
      bhojpuriGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(bhojpuriGaali.length);
    var randomElement = bhojpuriGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchBengaliGali() async {
    CollectionReference bengaliGali =
        FirebaseFirestore.instance.collection('bengali');
    QuerySnapshot bengaliGaliCollection = await bengaliGali.get();

    final bengaliGali1 = bengaliGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in bengaliGali1) {
      bengaliGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(bengaliGaali.length);
    var randomElement = bengaliGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchMarathiGali() async {
    CollectionReference marathiGali =
        FirebaseFirestore.instance.collection('marathi');
    QuerySnapshot marathiGaliCollection = await marathiGali.get();

    final marathiGali1 = marathiGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in marathiGali1) {
      marathiGaali.addAll(gali.values.map((value) => value.toString()));
    }

    int randomIndex = Random().nextInt(marathiGaali.length);
    var randomElement = marathiGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchEnglishGali() async {
    CollectionReference englishGali =
        FirebaseFirestore.instance.collection('english');
    QuerySnapshot englishGaliCollection = await englishGali.get();

    final englishGali1 = englishGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in englishGali1) {
      englishGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(englishGaali.length);
    var randomElement = englishGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchTamilGali() async {
    CollectionReference tamilGali =
        FirebaseFirestore.instance.collection('tamil');
    QuerySnapshot tamilGaliCollection = await tamilGali.get();

    final tamilGali1 = tamilGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in tamilGali1) {
      tamilGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(tamilGaali.length);
    var randomElement = tamilGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }

  void fetchHaryanviGali() async {
    CollectionReference haryanviGali =
        FirebaseFirestore.instance.collection('haryanvi');
    QuerySnapshot haryanviGaliCollection = await haryanviGali.get();

    final haryanviGali1 = haryanviGaliCollection.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();

    for (var gali in haryanviGali1) {
      haryanviGaali.addAll(gali.values.map((value) => value.toString()));
    }
    int randomIndex = Random().nextInt(haryanviGaali.length);
    var randomElement = haryanviGaali[randomIndex];
    setState(() {
      galiToShow = randomElement;
    });
  }
}
