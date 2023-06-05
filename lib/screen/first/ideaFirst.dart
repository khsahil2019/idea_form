import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import '../../constant/ui_constant.dart';
import '../../widget/button.dart';
import '../../widget/textField.dart';
import '../../widget/toast.dart';
import '../../widget/widgetfunction.dart';
import '../second/ideaSecond.dart';

class IdeaFirstScreen extends StatefulWidget {
  const IdeaFirstScreen({Key? key}) : super(key: key);

  @override
  State<IdeaFirstScreen> createState() => _IdeaFirstScreenState();
}

class _IdeaFirstScreenState extends State<IdeaFirstScreen> {
  List<File> filesList = [];
  List<Map<String, dynamic>> filesByteList = [];
  List<Map<String, dynamic>> companyCertByteList = [];
  List<Map<String, dynamic>> dPITCertByteList = [];
  List<Map<String, dynamic>> companyPanByteList = [];
  List<Map<String, dynamic>> companyTanByteList = [];
  String? ideaType;
  int ideaTypeMarks = 0;
  String? techno;
  int technoMarks = 0;
  String? form;
  String? reaction;
  String? venture;
  String? location;
  int locationMarks = 0;
  String? gender;
  int genderMarks = 0;
  String? education;
  int educationMarks = 0;

  int index = 0;
  double width = Get.width - 50;
  String? legalStatus;
  String? industry;
  bool isTechnology = false;
  int technologyMarks = 0;
  bool isSolution = false;
  bool isCustomer = false;
  bool isRevenue = false;
  bool isExpertAdvice = false,
      isSpace = false,
      isFunding = false,
      isFormCompany = false,
      isGrow = false;
  List ideaTypeList = [];
  List reactionList = [];
  int reactionMarks = 0;
  List technoList = [];
  List formList = [];
  List ventureList = [];
  List locationList = [];
  List genderList = [];
  List educationList = [];
  List pages = <Widget>[];
  List industryList = [];
  List legalStatusList = [];
  TextEditingController yearOfCorporationCTRL = TextEditingController();
  TextEditingController business_nameCTRL = TextEditingController();
  TextEditingController productUniqueCTRL = TextEditingController();
  TextEditingController featureCTRL = TextEditingController();
  TextEditingController productCTRL = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController designationCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController companyCtrl = TextEditingController();

  TextEditingController clientCTRL = TextEditingController();
  TextEditingController milestoneCTRL = TextEditingController();
  TextEditingController achieveCTRL = TextEditingController();
  TextEditingController teamSizeCTRL = TextEditingController();
  TextEditingController fromCtrl = TextEditingController();
  TextEditingController fromIncomeCtrl = TextEditingController();
  TextEditingController toCtrl = TextEditingController();
  TextEditingController toIncomeCtrl = TextEditingController();
  // TextEditingController noctrl = TextEditingController();
  TextEditingController somethingCtrl = TextEditingController();
  int myIdeaMarks = 0;
  int isTechnologyMarks = 0;
  List differentService = [];
  List<TextEditingController> differentServiceCTRL = [
    TextEditingController(),
  ];
  List coFounder = [];
  List<TextEditingController> coFounderCTRL = [
    TextEditingController(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getRawDataFromDatabase();
    Future.delayed(const Duration(milliseconds: 100), () {
      ideaTypeList
          .add(AppLocalizations.of(context)!.idea_desk_concept_in_my_mind);
      ideaTypeList.add(AppLocalizations.of(context)!.idea_desk_early_stage);
      ideaTypeList.add(AppLocalizations.of(context)!.idea_desk_growing_user);
      ideaTypeList.add(AppLocalizations.of(context)!.idea_desk_mature_i_want);
      industryList.add(AppLocalizations.of(context)!.idea_desk_energy);
      industryList.add(AppLocalizations.of(context)!.idea_desk_clean_tech);
      industryList.add(AppLocalizations.of(context)!.idea_desk_healthcare);
      industryList
          .add(AppLocalizations.of(context)!.idea_desk_software_as_service);
      industryList.add(AppLocalizations.of(context)!.idea_desk_education);
      industryList.add(AppLocalizations.of(context)!.idea_desk_transportation);
      industryList.add(AppLocalizations.of(context)!.idea_desk_customer_goods);
      industryList.add(AppLocalizations.of(context)!.idea_desk_fintech);
      industryList.add(AppLocalizations.of(context)!.idea_desk_others);
      legalStatusList.add(AppLocalizations.of(context)!.idea_desk_incorpo);
      legalStatusList.add(AppLocalizations.of(context)!.idea_desk_not_incorpo);
      technoList.add(AppLocalizations.of(context)!.technolist1);
      technoList.add(AppLocalizations.of(context)!.technolist2);
      technoList.add(AppLocalizations.of(context)!.technolist3);
      technoList.add(AppLocalizations.of(context)!.technolist4);
      formList.add(AppLocalizations.of(context)!.formList1);
      formList.add(AppLocalizations.of(context)!.formList2);
      formList.add(AppLocalizations.of(context)!.formList3);
      formList.add(AppLocalizations.of(context)!.formList4);
      formList.add(AppLocalizations.of(context)!.formList5);
      formList.add(AppLocalizations.of(context)!.formList6);
      formList.add(AppLocalizations.of(context)!.formList7);
      formList.add(AppLocalizations.of(context)!.formList8);
      formList.add(AppLocalizations.of(context)!.formList9);
      formList.add(AppLocalizations.of(context)!.formList10);
      formList.add(AppLocalizations.of(context)!.formList11);
      formList.add(AppLocalizations.of(context)!.formList12);

      reactionList.add(AppLocalizations.of(context)!.rlist1);
      reactionList.add(AppLocalizations.of(context)!.rlist2);
      reactionList.add(AppLocalizations.of(context)!.rlist3);
      reactionList.add(AppLocalizations.of(context)!.rlist4);

      ventureList.add(AppLocalizations.of(context)!.y);
      ventureList.add(AppLocalizations.of(context)!.n);

      locationList.add(AppLocalizations.of(context)!.local);
      locationList.add(AppLocalizations.of(context)!.few);
      locationList.add(AppLocalizations.of(context)!.state);
      locationList.add(AppLocalizations.of(context)!.whole);
      locationList.add(AppLocalizations.of(context)!.global);

      genderList.add(AppLocalizations.of(context)!.m);
      genderList.add(AppLocalizations.of(context)!.f);
      genderList.add(AppLocalizations.of(context)!.oth);
      genderList.add(AppLocalizations.of(context)!.all);

      educationList.add(AppLocalizations.of(context)!.noreq);
      educationList.add(AppLocalizations.of(context)!.clss5);
      educationList.add(AppLocalizations.of(context)!.clss10);
      educationList.add(AppLocalizations.of(context)!.clss12);

      educationList.add(AppLocalizations.of(context)!.gradu);
      educationList.add(AppLocalizations.of(context)!.postgradu);
      educationList.add(AppLocalizations.of(context)!.phd);

      differentService.add(Row(
        children: [
          Container(
            width: kIsWeb ? width * .5 : width * .99,
            child: IdeaTextField(
              controller: differentServiceCTRL.first,
            ),
          ),
        ],
      ));
      setState(() {});
      coFounder.add(Row(
        children: [
          Container(
              width: kIsWeb ? width * .4 : width * .99,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 0.5,
                ),
              )),
              child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  controller: coFounderCTRL.first,
                  decoration: InputDecoration(
                    // hintText: AppLocalizations.of(context)!.reg_email,
                    //border: InputBorder.none,
                    hintMaxLines: 3,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ))),
        ],
      ));

      // setState(() {});
    });
  }

  void submitIdea1() async {
    Map<String, dynamic> businessIdea1 = {
      // "userId": auth.currentUser!.uid,
      "createdAt": Timestamp.now(),
      "ideaType": ideaType,
      "isTechnology": {
        "techUsed": techno,
        "techForm": form,
        "somethingElse": somethingCtrl.text.isEmpty ? null : somethingCtrl.text
      },
      "isSolution": isSolution,
      "isCustomer": isCustomer,
      "industry": industry,
      "isRevenue": isRevenue,
      "legalStatus": legalStatus,
      "yearOfCorporation": yearOfCorporationCTRL.text,
    };
    // ideaController.myMap.addAll(businessIdea);
    // businessIdea1.addAll(businessIdea1);
    log(businessIdea1.toString());
    //print(businessIdea1.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OverflowBar(
                overflowAlignment: OverflowBarAlignment.start,
                spacing: 50,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth:
                          Get.width > 500 ? Get.width * .5 - 25 : Get.width,
                      // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expression of Interest and Acceleration Form",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Thank you for your interest in Rafts and Rivers consultancy services. Please complete the following form to provide us with essential details about your company and the specific areas where you require our expertise. We look forward to helping you achieve your goals.",
                            style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16)),

                        // ),
                        const SizedBox(
                          height: 20,
                        ),

                        label("My Idea"),
                        Container(
                          // width: kIsWeb ? width * .5 : width * .99,
                          decoration: BoxDecoration(
                              border: getUnderlineBorder(AppColors.teal)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Image.asset(
                                  "assets/img/drop.png",
                                  width: 20,
                                ),
                              ),
                              //iconSize: 40,
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: ideaType,
                              items: ideaTypeList
                                  .map<DropdownMenuItem<String>>((text) {
                                return DropdownMenuItem<String>(
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                        color: AppColors.teal,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  value: text,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  ideaType = value.toString();
                                  switch (ideaTypeList.indexOf(value)) {
                                    case 0:
                                      ideaTypeMarks = 4;
                                      break;
                                    case 1:
                                      ideaTypeMarks = 6;
                                      break;
                                    case 2:
                                      ideaTypeMarks = 9;
                                      break;
                                    case 3:
                                      ideaTypeMarks = 10;
                                      break;

                                    default:
                                  }
                                  // ignore: avoid_print
                                  print(ideaType);
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              // width: width * .8,
                              //width: kIsWeb ? width * .4 : width * .8,
                              child: Expanded(
                                child: Text(
                                  "My Business /idea is technology based",
                                  style: TextStyle(
                                      color: AppColors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              // width: width * .2,
                              // width: kIsWeb ? width * .2 : width * .2,
                              child: Switch(
                                onChanged: (val) {
                                  setState(() {
                                    technologyMarks = val ? 10 : 0;
                                    isTechnology = val;
                                  });
                                },
                                value: isTechnology,
                                activeColor: Colors.green,
                                activeTrackColor: AppColors.orange,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   height: 25,
                        // ),
                        isTechnology
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    //   width: kIsWeb ? width * .5 : width * .99,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border:
                                            getUnderlineBorder(AppColors.teal)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        icon: Container(
                                          margin: EdgeInsets.only(top: 25),
                                          child: Image.asset(
                                            "assets/img/drop.png",
                                            width: 20,
                                          ),
                                        ),
                                        isDense: true,
                                        // iconSize: 40,
                                        isExpanded: true,
                                        hint: Text(
                                          "Technology is used",
                                          style: TextStyle(
                                              color: AppColors.teal,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        value: techno,
                                        items: technoList
                                            .map<DropdownMenuItem<String>>(
                                                (text) {
                                          return DropdownMenuItem<String>(
                                            child: Text(
                                              text,
                                              style: TextStyle(
                                                  color: AppColors.teal,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            value: text,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          switch (technoList.indexOf(value)) {
                                            case 0:
                                            case 1:
                                              technologyMarks = 4;
                                              break;
                                            case 2:
                                              technologyMarks = 3;
                                              break;
                                            case 3:
                                              technologyMarks = 10;
                                          }

                                          setState(() {
                                            techno = value.toString();
                                            // ignore: avoid_print
                                            print(techno);
                                            print("object");
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    // width: kIsWeb ? width * .5 : width * .99,
                                    decoration: BoxDecoration(
                                        border:
                                            getUnderlineBorder(AppColors.teal)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        icon: Container(
                                          margin: EdgeInsets.only(top: 25),
                                          child: Image.asset(
                                            "assets/img/drop.png",
                                            width: 20,
                                          ),
                                        ),
                                        // iconSize: 40,
                                        isExpanded: true,
                                        hint: Text(
                                          "The form of technology used is",
                                          style: TextStyle(
                                              color: AppColors.teal,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        value: form,
                                        items: formList
                                            .map<DropdownMenuItem<String>>(
                                                (text) {
                                          return DropdownMenuItem<String>(
                                            child: Text(
                                              text,
                                              style: TextStyle(
                                                  color: AppColors.teal,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            value: text,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            form = value.toString();
                                            // ignore: avoid_print
                                            print(form);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  form == "Something else"
                                      ? Row(
                                          children: [
                                            Container(
                                              width: kIsWeb
                                                  ? width * .5
                                                  : width * .99,
                                              child: IdeaTextField(
                                                  controller: somethingCtrl,
                                                  label:
                                                      "Define Something else"),
                                            ),
                                          ],
                                        )
                                      : SizedBox(),
                                  SizedBox(
                                    height: 25,
                                  ),
                                ],
                              )
                            : SizedBox(),

                        Row(
                          children: [
                            Container(
                              // width: kIsWeb ? width * .4 : width * .8,
                              child: Expanded(
                                child: Text(
                                  "My business/idea provides an innovative solutions to a particular problem",
                                  style: TextStyle(
                                      color: AppColors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              //width: kIsWeb ? width * .2 : width * .2,
                              child: Switch(
                                onChanged: (val) {
                                  setState(() {
                                    isSolution = val;
                                  });
                                },
                                value: isSolution,
                                activeColor: Colors.green,
                                activeTrackColor: AppColors.orange,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              //width: kIsWeb ? width * .4 : width * .8,
                              child: Expanded(
                                child: Text(
                                  "My business/idea provides value to a potential customers beyond its cost",
                                  style: TextStyle(
                                      color: AppColors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              //width: kIsWeb ? width * .2 : width * .2,
                              child: Switch(
                                onChanged: (val) {
                                  setState(() {
                                    isCustomer = val;
                                  });
                                },
                                value: isCustomer,
                                activeColor: Colors.green,
                                activeTrackColor: AppColors.orange,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        label("Industry"),

                        Container(
                          // width: kIsWeb ? width * .5 : width * .99,
                          decoration: BoxDecoration(
                              border: getUnderlineBorder(AppColors.secondary)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Image.asset(
                                  "assets/img/drop.png",
                                  width: 20,
                                ),
                              ),
                              //iconSize: 40,
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: industry,
                              items: industryList
                                  .map<DropdownMenuItem<String>>((text) {
                                return DropdownMenuItem<String>(
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                        color: AppColors.teal,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  value: text,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  industry = value.toString();
                                  // ignore: avoid_print
                                  print(industry);
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              // width: kIsWeb ? width * .4 : width * .8,
                              child: Expanded(
                                child: Text(
                                  "Have your business/idea generated any revenue  ",
                                  style: TextStyle(
                                      color: AppColors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              //  width: kIsWeb ? width * .2 : width * .2,
                              child: Switch(
                                onChanged: (val) {
                                  setState(() {
                                    isRevenue = val;
                                  });
                                },
                                value: isRevenue,
                                activeColor: Colors.green,
                                activeTrackColor: AppColors.orange,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: AppColors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        label("Legal Status"),
                        Container(
                          // width: kIsWeb ? width * .5 : width * .99,
                          decoration: BoxDecoration(
                              border: getUnderlineBorder(AppColors.secondary)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Image.asset(
                                  "assets/img/drop.png",
                                  width: 20,
                                ),
                              ),
                              // iconSize: 40,
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: legalStatus,
                              items: legalStatusList
                                  .map<DropdownMenuItem<String>>((text) {
                                return DropdownMenuItem<String>(
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                        color: AppColors.teal,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  value: text,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  legalStatus = value.toString();
                                  // ignore: avoid_print
                                  // print(legalStatus);
                                });
                              },
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        label("Year of Corporation"),

                        // buildTextField(business_nameCTRL, ""),
                        Container(
                            //width: kIsWeb ? width * .5 : width * .99,
                            child: IdeaTextField(
                          controller: yearOfCorporationCTRL,
                        )),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutLinedButtonWidget(
                              text: "Next",
                              onTap: () {
                                // setState(() {
                                if (validate()) {
                                  submitIdea1();
                                  Get.to(() => IdeaSecondScreen());
                                }

                                //if (index > 0) index--;
                                // });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: Get.width > 500 ? Get.width * .4 : Get.width,
                      //minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          // width: kIsWeb ? width * .28 : width,
                          child: Text(
                            "ABOUT US:",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          // width: kIsWeb ? width * .3 : width,
                          child: Text(
                            "Welcome to Rafts and Rivers LLC, a leading consultancy firm specializing in providing tailored solutions to help Start-ups and Incubators achieve their goals and maximize their potential. With our extensive expertise and deep industry knowledge, we connect our clients with the resources and support necessary to thrive in today's competitive business landscape.",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 630,
                        )
                      ],
                    ),
                  ),

                  //  Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     SizedBox(
                  //       width: kIsWeb ? width * .28 : width,
                  //       child: Text(
                  //         "ABOUT US:",
                  //         style: TextStyle(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.black),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       height: 20,
                  //     ),
                  //     SizedBox(
                  //       width: kIsWeb ? width * .3 : width,
                  //       child: Text(
                  //         "Welcome to Rafts and Rivers LLC, a leading consultancy firm specializing in providing tailored solutions to help Start-ups and Incubators achieve their goals and maximize their potential. With our extensive expertise and deep industry knowledge, we connect our clients with the resources and support necessary to thrive in today's competitive business landscape.",
                  //         style: TextStyle(fontSize: 16, color: Colors.black),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }

  bool validate() {
    if (ideaType == null) {
      showToastMessage("Please select idea type");
      return false;
    }
    if (isTechnology) {
      if (techno == null) {
        showToastMessage("Please select technology");
        return false;
      }
      if (form == null) {
        showToastMessage("Please select form of technology");
        return false;
      }
    }
    // if(isSolution){}
    // if(isCustomer){}
    if (industry == null) {
      showToastMessage("Please select Industry type");
      return false;
    }
    // if(isRevenue){}
    if (legalStatus == null) {
      showToastMessage("Please select Legal status");
      return false;
    }
    // if (yearOfCorporationCTRL.text.isEmpty) {
    //   showToastMessage("Please mention year of Corporation");
    //   return false;
    // }

    return true;
  }
}
