import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import '../../constant/ui_constant.dart';
import '../../controller/ideaController.dart';
import '../../widget/button.dart';
import '../../widget/textField.dart';
import '../../widget/toast.dart';
import '../../widget/widgetfunction.dart';
import '../first/ideaFirst.dart';
import '../third/ideaThird.dart';

class IdeaSecondScreen extends StatefulWidget {
  const IdeaSecondScreen({Key? key}) : super(key: key);

  @override
  State<IdeaSecondScreen> createState() => _IdeaSecondScreenState();
}

class _IdeaSecondScreenState extends State<IdeaSecondScreen> {
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

      differentService.add(Container(
        // width: kIsWeb ? width * .5 : width * .99,
        child: IdeaTextField(
          controller: differentServiceCTRL.first,
        ),
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

  void submitIdea2() async {
    Map<String, dynamic> businessIdea2 = {
      // "userId": auth.currentUser!.uid,
      "createdAt": Timestamp.now(),

      "ideaName": business_nameCTRL.text,
      "productDescription": productCTRL.text,
      "uniqueSellingPoint": productUniqueCTRL.text,
      "differentService": differentServiceCTRL.map((e) => e.text).toList(),
      "milestone": milestoneCTRL.text,
      "reaction": reaction,
      "ageGroup": {"from": fromCtrl.text, "to": toCtrl.text},
      "incomeGroup": {"from": fromIncomeCtrl.text, "to": toIncomeCtrl.text},
      "location": location,
      "gender": gender,
      "education": education,
      "teamSize": teamSizeCTRL.text,
    };
    ideaController.ideaData.addAll(businessIdea2);

    print(ideaController.ideaData.toString());
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
                spacing: 30,
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
                        // Text("Expression of Interest and Acceleration Form",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 18)),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // Text(
                        //     "Thank you for your interest in Rafts and Rivers consultancy services. Please complete the following form to provide us with essential details about your company and the specific areas where you require our expertise. We look forward to helping you achieve your goals.",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         // fontWeight: FontWeight.bold,
                        //         fontSize: 16)),

                        // ),
                        const SizedBox(
                          height: 40,
                        ),

                        label("Name of Business/Idea"),

                        // buildTextField(business_nameCTRL, ""),
                        Container(
                            // width: kIsWeb ? width * .5 : width * .99,
                            child:
                                IdeaTextField(controller: business_nameCTRL)),

                        SizedBox(
                          height: 15,
                        ),

                        // Row(children: [
                        //   Text(AppLocalizations.of(context)!.idea_desk_service_why_is_unique),
                        // ]),

                        label("What is your product or service."),

                        Container(
                            //width: kIsWeb ? width * .5 : width * .99,
                            child: IdeaTextField(controller: productCTRL)),
                        SizedBox(
                          height: 15,
                        ),
                        // Row(children: [
                        //   Text(AppLocalizations.of(context)!.why_it_is_unique),
                        // ]),

                        label("Why it is Unique?"),

                        Container(
                            // width: kIsWeb ? width * .5 : width * .99,
                            child:
                                IdeaTextField(controller: productUniqueCTRL)),
                        SizedBox(
                          height: 20,
                        ),

                        Container(
                            // width: kIsWeb ? width * .5 : width * .99,
                            child: label2(
                                "Why is your product/service is different from other already available product/service. (Use plus '+' button to add every 'new' difference/feature)")),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        SizedBox(
                          // width: width * .5,
                          child: ListView.builder(
                              shrinkWrap: true,
                              // scrollDirection: Axis.vertical,
                              physics: const ScrollPhysics(),
                              itemCount: differentService.length,
                              itemBuilder: (context, index) {
                                return differentService[index];
                              }),
                        ),
                        //   ],
                        // ),

                        const SizedBox(height: 10.0),

                        ///// Button Increment & decrement
                        Row(
                          mainAxisAlignment: kIsWeb
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.end,
                          children: [
                            //  kIsWeb ? SizedBox(width: width * .2) : SizedBox(),
                            GestureDetector(
                                onTap: () {
                                  if (differentService.length > 1) {
                                    setState(() {
                                      differentService.removeLast();
                                      differentServiceCTRL.removeLast();
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Icon(
                                    Icons.remove,
                                    size: 20,
                                    color: AppColors.teal,
                                  ),
                                )),
                            GestureDetector(
                                onTap: () {
                                  differentServiceCTRL
                                      .add(TextEditingController());
                                  differentService.add(Container(
                                    // width:
                                    //     kIsWeb ? width * .5 : width * .99,
                                    child: IdeaTextField(
                                      controller: differentServiceCTRL.last,
                                    ),
                                  ));
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColors.teal,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Container(
                            //width: kIsWeb ? width * .5 : width * .99,
                            child: label2(
                                "What are the major product/services milestone that have been met to date?(Discussed and appreciated , tested ,being used by people) ?")),
                        Container(
                          // width: kIsWeb ? width * .5 : width * .99,
                          child: IdeaTextField(
                            controller: milestoneCTRL,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(

                            //width: kIsWeb ? width * .5 : width * .99,
                            child: label2(
                                "Have you discussed the idea/venture/product/service with your closed one?")),
                        Container(
                          //width: kIsWeb ? width * .5 : width * .99,
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
                              isExpanded: true,
                              hint: Text(
                                "",
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              value: venture,
                              items: ventureList
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
                                  venture = value.toString();
                                  // ignore: avoid_print
                                  print(venture);
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        venture != "No"
                            ? Container(
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
                                    isExpanded: true,
                                    hint: Text(
                                      "What was their reaction?",
                                      style: TextStyle(
                                          color: AppColors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    value: reaction,
                                    items: reactionList
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
                                        reaction = value.toString();
                                        // ignore: avoid_print
                                        print(reaction);
                                      });
                                      switch (reactionList.indexOf(value)) {
                                        case 0:
                                          reactionMarks = 5;
                                          break;
                                        case 1:
                                          reactionMarks = 7;
                                          break;
                                        case 2:
                                          reactionMarks = 10;
                                          break;
                                        case 3:
                                          reactionMarks = 4;
                                          break;
                                        default:
                                      }
                                    },
                                  ),
                                ),
                              )
                            : SizedBox(),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Who are your customers/clients",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Expanded(
                              // width: kIsWeb ? width * .2 : width * .4,
                              child: Text(
                                "Age Group",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                // width: kIsWeb ? width * .1 : width * .15,
                                // child: buildTextFieldi(fromctrl, "From", 2)),
                                child: IdeaTextField3(
                              controller: fromCtrl,
                              label: "From",
                              color: AppColors.orange,
                            )),
                            SizedBox(
                              width: kIsWeb ? width * .1 : width * .2,
                            ),
                            Expanded(
                                // width: kIsWeb ? width * .1 : width * .15,
                                child: IdeaTextField3(
                              controller: toCtrl,
                              label: "To",
                              color: AppColors.orange,
                            )),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              //  width: kIsWeb ? width * .2 : width * .4,
                              child: Text(
                                "Monthly Income",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                //width: kIsWeb ? width * .1 : width * .25,
                                child: IdeaTextField3(
                                  controller: fromIncomeCtrl,
                                  label: "From",
                                  color: AppColors.orange,
                                )),
                            SizedBox(
                              width: kIsWeb ? width * .1 : width * .1,
                            ),
                            Expanded(
                                flex: 1,
                                //width: kIsWeb ? width * .1 : width * .25,
                                // child: buildTextFieldin(toIncomeCtrl, "To", 2)
                                child: IdeaTextField3(
                                  controller: toIncomeCtrl,
                                  label: "To",
                                  color: AppColors.orange,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        label("Location"),
                        Container(
                          height: 40,
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
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: location,
                              items: locationList
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
                                switch (locationList.indexOf(value)) {
                                  case 0:
                                  case 1:
                                    locationMarks = 0;
                                    break;
                                  case 2:
                                    locationMarks = 2;
                                    break;
                                  case 3:
                                    locationMarks = 6;
                                    break;
                                  case 4:
                                    locationMarks = 10;
                                    break;
                                  default:
                                }
                                setState(() {
                                  location = value.toString();
                                  // ignore: avoid_print
                                  print(location);
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        label("Gender"),
                        Container(
                          height: 40,
                          //width: kIsWeb ? width * .5 : width * .99,
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
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: gender,
                              items: genderList
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
                                switch (genderList.indexOf(value)) {
                                  case 0:
                                    genderMarks = 10;
                                    break;
                                  case 1:
                                    genderMarks = 6;
                                    break;
                                  case 2:
                                    genderMarks = 5;
                                    break;
                                  case 3:
                                    genderMarks = 2;
                                    break;
                                  default:
                                }
                                setState(() {
                                  gender = value.toString();
                                  // ignore: avoid_print
                                  print(gender);
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        label("Education"),

                        Container(
                          height: 40,
                          //  width: kIsWeb ? width * .5 : width * .99,
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
                              isExpanded: true,
                              hint: Text(
                                "Select your choice",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              value: education,
                              items: educationList
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
                                switch (educationList.indexOf(value)) {
                                  case 0:
                                    educationMarks = 10;
                                    break;
                                  case 1:
                                    educationMarks = 8;
                                    break;
                                  case 2:
                                    educationMarks = 7;
                                    break;
                                  case 3:
                                    educationMarks = 5;
                                    break;
                                  case 4:
                                    educationMarks = 2;
                                    break;
                                  default:
                                }
                                setState(() {
                                  education = value.toString();
                                  // ignore: avoid_print
                                  print(education);
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
                            Expanded(
                              // width: kIsWeb ? width * .3 : width * .7,
                              child: Text(
                                "Present team size",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   width: width * .1,
                            // ),

                            Expanded(
                                //width: kIsWeb ? width * .2 : width * .15,
                                child: IdeaTextField2(
                              controller: teamSizeCTRL,
                              label: "Nos.",
                              color: AppColors.orange,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            OutLinedButtonWidget(
                              text: "Back",
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            OutLinedButtonWidget(
                              text: "Next",
                              onTap: () {
                                if (validateSecond()) {
                                  submitIdea2();
                                  Get.to(() => IdeaThirdScreen());
                                }
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
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
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
                          height: 1030,
                        ),
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

  bool validateSecond() {
    if (business_nameCTRL.text.isEmpty) {
      showToastMessage("Please Write your Business Name");
      return false;
    }
    if (productCTRL.text.isEmpty) {
      showToastMessage("Please Write your Product or Service");
      return false;
    }
    if (productUniqueCTRL.text.isEmpty) {
      showToastMessage("Please Write Why it is unique");
      return false;
    }
    for (var i = 0; i < differentServiceCTRL.length; i++) {
      if (differentServiceCTRL[i].text.isEmpty) {
        showToastMessage(
            "Please Write Why your product/service is different from Available product/service");
        return false;
      }
    }
    // if (differentServiceCTRL.toString().isEmpty) {
    //   showToastMessage(
    //       "Please mention why your product/service is different from Available product/service");
    //   return false;
    // }
    if (milestoneCTRL.text.isEmpty) {
      showToastMessage("Please mention major product/services milestone");
      return false;
    }
    if (venture == null) {
      showToastMessage(
          "Please Select status of discussed idea/venture/product/service with your closed one ");
      return false;
    }
    if (venture == AppLocalizations.of(context)!.y) {
      if (reaction == null) {
        showToastMessage("Please select reaction of the closed one");
        return false;
      }
    }
    // if (reaction == null) {
    //   showToastMessage("Please select reaction of your known");
    //   return false;
    // }
    if (fromCtrl.text.isEmpty) {
      showToastMessage("Please mention your target age from");
      return false;
    }
    if (int.parse(fromCtrl.text) < 18) {
      showToastMessage("Target age must above than 18");
      return false;
    }
    if (toCtrl.text.isEmpty) {
      showToastMessage("Please mention your target age upto");
      return false;
    }
    if (int.parse(toCtrl.text) > 100) {
      showToastMessage("Target age cant be more than 100");
      return false;
    }
    if (fromIncomeCtrl.text.isEmpty) {
      showToastMessage("Please mention monthly income from");
      return false;
    }
    if (toIncomeCtrl.text.isEmpty) {
      showToastMessage("Please mention monthly income to");
      return false;
    }
    if (location == null) {
      showToastMessage("Please select Location");
      return false;
    }
    if (gender == null) {
      showToastMessage("Please select gender");
      return false;
    }
    if (education == null) {
      showToastMessage("Please select Education");
      return false;
    }
    if (teamSizeCTRL.text.isEmpty) {
      showToastMessage("Please mention team Size");
      return false;
    }

    return true;
  }
}
