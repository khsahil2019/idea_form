import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idea_form/services/ideaServices.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
// import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:idea_form/widget/button.dart';
import 'package:idea_form/widget/filePicker.dart';
import 'package:idea_form/widget/textField.dart';
import 'package:idea_form/widget/toast.dart';
import 'package:idea_form/widget/widgetfunction.dart';
// import 'package:open_file/open_file.dart';

// import '../../../constants/ui_constant.dart';
// import '../../../controller/authController.dart';
// import '../../../widgets/widgetFunctiion.dart';
import 'constant/ui_constant.dart';
import 'services/firebaseStorage.dart';
import 'widget/show_loading.dart';

class CreateBusinessIdeaScreen extends StatefulWidget {
  const CreateBusinessIdeaScreen({Key? key}) : super(key: key);

  @override
  State<CreateBusinessIdeaScreen> createState() => _CreateBusinessIdeaScreen();
}

class _CreateBusinessIdeaScreen extends State<CreateBusinessIdeaScreen> {
  DateTime startOfPeriod = DateTime.now().subtract(Duration(days: 10));
  DateTime endOfPeriod = DateTime.now().add(Duration(days: 10));
  int _selectedTab = 0;

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
              width: kIsWeb ? width * .5 : width * .99,
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

  // getRawDataFromDatabase() {
  //   FireStoreService().getRawData("businessIdea").then((value) {
  //     if (value != null) {
  //       showLoading("We are fetching your data..");
  //       Future.delayed(const Duration(milliseconds: 1000), () {
  //         setState(() {
  //           dismissLoadingWidget();
  //           log("set state");
  //         });
  //       });
  //       log(value.toString());
  //       if (ideaTypeList.contains(value["ideaType"])) {
  //         ideaType = value["ideaType"];
  //         isTechnology = value["isTechnology"]["techUsed"] != null;
  //         techno = value["isTechnology"]["techUsed"];
  //         form = value["isTechnology"]["techForm"];
  //         isSolution = value["isSolution"];
  //         isCustomer = value["isCustomer"];
  //         industry = value["industry"];
  //         isRevenue = value["isRevenue"];
  //         legalStatus = value["legalStatus"];
  //         if (value["isTechnology"]["somethingElse"] != null)
  //           somethingCtrl.text = value["isTechnology"]["somethingElse"];
  //         if (value["ideaName"] != null) {
  //           index = 1;
  //           business_nameCTRL.text = value["ideaName"];
  //           productCTRL.text = value["productDescription"];
  //           productUniqueCTRL.text = value["uniqueSellingPoint"];

  //           milestoneCTRL.text = value["milestone"];
  //           venture = value["reaction"] != null
  //               ? AppLocalizations.of(context)!.y
  //               : null;
  //           reaction = value["reaction"];
  //           fromCtrl.text = value["ageGroup"]["from"];
  //           toCtrl.text = value["ageGroup"]["to"];
  //           fromIncomeCtrl.text = value["incomeGroup"]["from"];
  //           toIncomeCtrl.text = value["incomeGroup"]["to"];
  //           location = value["location"];
  //           gender = value["gender"];
  //           education = value["education"];
  //           teamSizeCTRL.text = value["teamSize"];
  //         }
  //         // isExpertAdvice = value["isExpertAdvice"];
  //         // isSpace = value["isSpace"];
  //         // isFunding = value["isFunding"];
  //         // isFormCompany = value["isFormCompany"];
  //         // isGrow = value["isGrow"];
  //       } else {
  //         showToastMessage(
  //             "We found some error in your data. This may be due to language change. Please fill the form again.",
  //             duration: 5);
  //       }
  //     }
  //   });
  // }

  void submitIdea() async {
    Map<String, dynamic> businessIdea = {
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
      "isExpertAdvice": isExpertAdvice,
      "isSpace": isSpace,
      "isFunding": isFunding,
      "isFormCompany": isFormCompany,
      "isGrow": isGrow,
      "myName": nameCtrl.text,
      "myEmail": emailCtrl.text,
      "myMobile": mobileCtrl.text,
      "myDesignation": designationCtrl.text,
      "coFounder": coFounderCTRL.map((e) => e.text).toList(),
      "companyCtrl": companyCtrl.text
    };
    // ideaController.myMap.addAll(businessIdea);

    if (filesByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      String? urls = await FirebaseStorageService.uploadFile("businessIdea", "",
          byteData: filesByteList.first["fileByte"]);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea["attachment"] = urls;
      }
    }
    if (companyCertByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyCertByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea["companyCert"] = urls;
      }
    }
    if (dPITCertByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: dPITCertByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea["dPITCert"] = urls;
      }
    }
    if (companyPanByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyPanByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea["companyPan"] = urls;
      }
    }
    if (companyTanByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyTanByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea["companyTan"] = urls;
      }
    }
    print(businessIdea.toString());
    showLoading("Uploading Idea..");
    IdeaServices().createBusinessIdea(businessIdea).then((value) => {
          if (value != null)
            {
              dismissLoadingWidget(),
              showToastMessage("Idea Submitted Successfully"),
              setState(() {
                index = 0;
              })
            }
          else
            {
              showLoading("Uploading Files.."),
              showToastMessage("Something went wrong")
            }
        });
    // log("mobile number  " + businessIdea["myMobile"].toString());
    // log("my name  " + businessIdea["myName"].toString());
    // log("year of corporation  " + businessIdea["yearOfCorporation"].toString());
    // log("my email  " + businessIdea["myEmail"].toString());
    // log("my Company name  " + businessIdea["companyCtrl"].toString());
    // ideaController.createBusinessIdea(businessIdeaDetail,
    //     files: filesList, bytesList: filesByteList, marks: calculateMarks());
  }

  @override
  Widget build(BuildContext context) {
    log(isCustomer.toString());
    pages.clear();
    pages.add(buildPage1);
    pages.add(buildPage2);
    pages.add(buildPage3);
    pages.add(buildPage4);
    return Scaffold(
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? 66 : 25),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 25,
              ),
              pages[index],
              const SizedBox(
                height: 25,
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Row(
              mainAxisAlignment: (index == 0)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceEvenly,
              children: [
                if (index != 0)
                  OutLinedButtonWidget(
                    text: "Back",
                    onTap: () {
                      setState(() {
                        if (index > 0) index--;
                      });
                    },
                  ),
                index != 3
                    ? OutLinedButtonWidget(
                        text: "Next",
                        onTap: () {
                          if (index == 0) {
                            if (validate()) {
                              setState(() {
                                //submitIdea();
                                index++;
                              });
                            }
                          } else if (index == 1) {
                            if (validateSecond()) {
                              setState(() {
                                // submitIdea();
                                index++;
                              });
                            }
                          } else if (index == 2) {
                            // if (validateThird()) {
                            setState(() {
                              // submitIdea();
                              index++;
                            });
                            // }
                          }
                        },
                      )
                    : index == 3
                        ? OutLinedButtonWidget(
                            text: "Submit",
                            onTap: () {
                              if (validateForth()) {
                                setState(() {
                                  submitIdea();
                                  // index++;
                                });
                              }
                            },
                          )
                        : Container()
              ])),
    );
  }

  Widget get buildPage1 {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Expression of Interest and Acceleration Form",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: kIsWeb ? width * .9 : width,
          child: Text(
              "Thank you for your interest in Rafts and Rivers consultancy services. Please complete the following form to provide us with essential details about your company and the specific areas where you require our expertise. We look forward to helping you achieve your goals.",
              style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kIsWeb ? width * .5 : width,
                      child: Text(
                        "Give wings to your ideas, turn them into a success story, came along we will nurture your Idea/Concept  and help you building your own Start-Up",
                        //**** */
                        style: TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Text(AppLocalizations.of(context)!.idea_desk_my_idea_is,
                    //         style: TextStyle(color: Colors.teal))
                    //   ],
                    // ),
                    label("My Idea"),
                    Container(
                      width: kIsWeb ? width * .5 : width * .99,
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
                            "",
                            style: TextStyle(
                                color: AppColors.teal,
                                fontWeight: FontWeight.bold),
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
                          width: kIsWeb ? width * .4 : width * .8,
                          child: Text(
                            "My Business /idea is technology based",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          // width: width * .2,
                          width: kIsWeb ? width * .2 : width * .2,
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
                                width: kIsWeb ? width * .5 : width * .99,
                                height: 60,
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
                                width: kIsWeb ? width * .5 : width * .99,
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
                                          width:
                                              kIsWeb ? width * .5 : width * .99,
                                          child: IdeaTextField(
                                              controller: somethingCtrl,
                                              label: "Define Something else"),
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
                          width: kIsWeb ? width * .4 : width * .8,
                          child: Text(
                            "My business/idea provides an innovative solutions to a particular problem",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: kIsWeb ? width * .2 : width * .2,
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
                          width: kIsWeb ? width * .4 : width * .8,
                          child: Text(
                            "My business/idea provides value to a potential customers beyond its cost",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: kIsWeb ? width * .2 : width * .2,
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
                      width: kIsWeb ? width * .5 : width * .99,
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
                            "",
                            style: TextStyle(
                                color: AppColors.teal,
                                fontWeight: FontWeight.bold),
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
                          width: kIsWeb ? width * .4 : width * .8,
                          child: Text(
                            "Have your business/idea generated any revenue  ",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: kIsWeb ? width * .2 : width * .2,
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
                      width: kIsWeb ? width * .5 : width * .99,
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
                            "",
                            style: TextStyle(
                                color: AppColors.teal,
                                fontWeight: FontWeight.bold),
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

                    // Row(
                    //   children: [
                    //     Container(
                    //         width: kIsWeb ? width * .5 : width * .99,
                    //         child: label2("Year of Incorporation")),
                    //   ],
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    label("Year of Corporation"),

                    // buildTextField(business_nameCTRL, ""),
                    Row(
                      children: [
                        Container(
                            width: kIsWeb ? width * .5 : width * .99,
                            child: IdeaTextField(
                              controller: yearOfCorporationCTRL,
                            )),
                      ],
                    ),
                    // ListView.builder(
                    //     shrinkWrap: true,
                    //     physics: const ScrollPhysics(),
                    //     itemCount: coFounder.length,
                    //     itemBuilder: (context, index) {
                    //       return coFounder[index];
                    //     }),

                    // const SizedBox(height: 10.0),
                    // Row(
                    //   mainAxisAlignment:
                    //       kIsWeb ? MainAxisAlignment.center : MainAxisAlignment.end,
                    //   children: [
                    //     kIsWeb ? SizedBox(width: width * .2) : SizedBox(),
                    //     GestureDetector(
                    //         onTap: () {
                    //           if (coFounder.length > 1) {
                    //             setState(() {
                    //               coFounder.removeLast();
                    //               coFounderCTRL.removeLast();
                    //             });
                    //           }
                    //         },
                    //         child: Padding(
                    //           padding: EdgeInsets.symmetric(horizontal: 5),
                    //           child: Icon(
                    //             Icons.remove,
                    //             size: 20,
                    //             color: AppColors.teal,
                    //           ),
                    //         )),
                    //     GestureDetector(
                    //         onTap: () {
                    //           coFounderCTRL.add(TextEditingController());
                    //           coFounder.add(Row(
                    //             children: [
                    //               Container(
                    //                 width: kIsWeb ? width * .5 : width * .99,
                    //                 child: IdeaTextField(
                    //                   controller: coFounderCTRL.last,
                    //                 ),
                    //               ),
                    //             ],
                    //           ));
                    //           setState(() {});
                    //         },
                    //         child: Padding(
                    //           padding: EdgeInsets.symmetric(horizontal: 5),
                    //           child: Icon(
                    //             Icons.add,
                    //             size: 20,
                    //             color: AppColors.teal,
                    //           ),
                    //         )),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kIsWeb ? width * .28 : width,
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
                      width: kIsWeb ? width * .3 : width,
                      child: Text(
                        "Welcome to Rafts and Rivers LLC, a leading consultancy firm specializing in providing tailored solutions to help Start-ups and Incubators achieve their goals and maximize their potential. With our extensive expertise and deep industry knowledge, we connect our clients with the resources and support necessary to thrive in today's competitive business landscape.",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget get buildPage2 => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: kIsWeb ? width * .5 : width,
                        child: Text(
                          "Lets Understand your idea in detail, CRUX ensures you of 100% security of your idea, your idea will never be share with any one, other than the authorized assessors who are going to assess your idea for further actions.",
                          //**** */
                          style: TextStyle(
                              color: AppColors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // Row(children: [
                  //   Text(AppLocalizations.of(context)!.idea_desk_name_of_business),
                  // ]),
                  label("Name of Business/Idea"),

                  // buildTextField(business_nameCTRL, ""),
                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: IdeaTextField(controller: business_nameCTRL)),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // Row(children: [
                  //   Text(AppLocalizations.of(context)!.idea_desk_service_why_is_unique),
                  // ]),

                  label("What is your product or service."),

                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: IdeaTextField(controller: productCTRL)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Row(children: [
                  //   Text(AppLocalizations.of(context)!.why_it_is_unique),
                  // ]),

                  label("Why it is Unique?"),

                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: IdeaTextField(controller: productUniqueCTRL)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: label2(
                              "Why is your product/service is different from other already available product/service. (Use plus '+' button to add every 'new' difference/feature)")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * .5,
                        child: ListView.builder(
                            shrinkWrap: true,
                            // scrollDirection: Axis.vertical,
                            physics: const ScrollPhysics(),
                            itemCount: differentService.length,
                            itemBuilder: (context, index) {
                              return differentService[index];
                            }),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),

                  ///// Button Increment & decrement
                  Row(
                    mainAxisAlignment: kIsWeb
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
                    children: [
                      kIsWeb ? SizedBox(width: width * .2) : SizedBox(),
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
                            differentServiceCTRL.add(TextEditingController());
                            differentService.add(Row(
                              children: [
                                Container(
                                  width: kIsWeb ? width * .5 : width * .99,
                                  child: IdeaTextField(
                                    controller: differentServiceCTRL.last,
                                  ),
                                ),
                              ],
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

                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: label2(
                              "What are the major product/services milestone that have been met to date?(Discussed and appreciated , tested ,being used by people) ?")),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: kIsWeb ? width * .5 : width * .99,
                        child: IdeaTextField(
                          controller: milestoneCTRL,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: kIsWeb ? width * .5 : width * .99,
                          child: label2(
                              "Have you discussed the idea/venture/product/service with your closed one?")),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: kIsWeb ? width * .5 : width * .99,
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  venture != "No"
                      ? Row(
                          children: [
                            Container(
                              width: kIsWeb ? width * .5 : width * .99,
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
                            ),
                          ],
                        )
                      : SizedBox(),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Who are your customers/clients",
                        style: TextStyle(
                            color: AppColors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: kIsWeb ? width * .2 : width * .4,
                        child: Text(
                          "Age Group",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                          width: kIsWeb ? width * .1 : width * .15,
                          // child: buildTextFieldi(fromctrl, "From", 2)),
                          child: IdeaTextField3(
                            controller: fromCtrl,
                            label: "From",
                            color: AppColors.orange,
                          )),
                      SizedBox(
                        width: kIsWeb ? width * .1 : width * .2,
                      ),
                      SizedBox(
                          width: kIsWeb ? width * .1 : width * .15,
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
                      SizedBox(
                        width: kIsWeb ? width * .2 : width * .4,
                        child: Text(
                          "Monthly Income",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                          width: kIsWeb ? width * .1 : width * .25,
                          child: IdeaTextField3(
                            controller: fromIncomeCtrl,
                            label: "From",
                            color: AppColors.orange,
                          )),
                      SizedBox(
                        width: kIsWeb ? width * .1 : width * .1,
                      ),
                      SizedBox(
                          width: kIsWeb ? width * .1 : width * .25,
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
                  Row(
                    children: [
                      Container(
                        width: kIsWeb ? width * .5 : width * .99,
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  label("Gender"),
                  Row(
                    children: [
                      Container(
                        width: kIsWeb ? width * .5 : width * .99,
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  label("Education"),

                  Row(
                    children: [
                      Container(
                        width: kIsWeb ? width * .5 : width * .99,
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
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: kIsWeb ? width * .3 : width * .7,
                        child: Text(
                          "Present team size",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(
                      //   width: width * .1,
                      // ),

                      SizedBox(
                          width: kIsWeb ? width * .2 : width * .15,
                          child: IdeaTextField2(
                            controller: teamSizeCTRL,
                            label: "Nos.",
                            color: AppColors.orange,
                          )),
                    ],
                  ),
                ],
              ),
              // SizedBox(width: width * .02),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: kIsWeb ? width * .33 : width,
                    child: Text(
                      "Our Services",
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
                    width: kIsWeb ? width * .33 : width,
                    child: Text(
                      "At Rafts and Rivers, we offer a comprehensive range of consultancy services designed to address the diverse needs of our clients. Our dedicated team of experts is committed to delivering exceptional results by providing strategic guidance and actionable insights. Here are some of the key services we provide:",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 700),
                ],
              ),
            ],
          )
        ],
      );
  Widget get buildPage3 {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kIsWeb ? width * .5 : width,
                      child: Text(
                        "Lets sum-up!",
                        //**** */
                        style: TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kIsWeb ? width * .5 : width,
                      child: Text(
                        "By clicking your requirements from the incubation centre, you will be responded soon about your Idea. Thankyou for your submission",
                        //**** */
                        style: TextStyle(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                Text(
                  "I am Looking for",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: AppColors.teal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: kIsWeb ? width * .4 : width * .8,
                      child: Text(
                        "Expert Advice on My Idea/Concept Product/ Service",
                        style: TextStyle(
                            color: AppColors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: kIsWeb ? width * .2 : width * .2,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: AppColors.teal),
                        child: Checkbox(
                          side: BorderSide(color: AppColors.teal, width: 1),
                          value: isExpertAdvice,
                          activeColor: AppColors.teal,
                          onChanged: (val) {
                            setState(() {
                              isExpertAdvice = val!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: kIsWeb ? width * .4 : width * .8,
                      child: Text(
                        "Space and infrastructure to develop the service/product",
                        style: TextStyle(
                            color: AppColors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: kIsWeb ? width * .2 : width * .2,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: AppColors.teal),
                        child: Checkbox(
                          side: BorderSide(color: AppColors.teal, width: 1),
                          value: isSpace,
                          activeColor: AppColors.teal,
                          onChanged: (val) {
                            setState(() {
                              isSpace = val!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: kIsWeb ? width * .4 : width * .8,
                      child: Text(
                        "Funding to launch the already developed/product service",
                        style: TextStyle(
                            color: AppColors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: kIsWeb ? width * .2 : width * .2,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: AppColors.teal),
                        child: Checkbox(
                          side: BorderSide(color: AppColors.teal, width: 1),
                          value: isFunding,
                          activeColor: AppColors.teal,
                          onChanged: (val) {
                            setState(() {
                              isFunding = val!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: kIsWeb ? width * .4 : width * .8,
                      child: Text(
                        "Form a company and other legal formalities",
                        style: TextStyle(
                            color: AppColors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: kIsWeb ? width * .2 : width * .2,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: AppColors.teal),
                        child: Checkbox(
                          side: BorderSide(color: AppColors.teal, width: 1),
                          value: isFormCompany,
                          activeColor: AppColors.teal,
                          onChanged: (val) {
                            setState(() {
                              isFormCompany = val!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: kIsWeb ? width * .4 : width * .8,
                      child: Text(
                        "Grow my team",
                        style: TextStyle(
                            color: AppColors.teal, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: kIsWeb ? width * .2 : width * .2,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: AppColors.teal),
                        child: Checkbox(
                          side: BorderSide(color: AppColors.teal, width: 1),
                          value: isGrow,
                          activeColor: AppColors.teal,
                          onChanged: (val) {
                            setState(() {
                              isGrow = val!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text(
                //     AppLocalizations.of(context)!.idea_desk_is_technology_based,
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black26,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    OutLinedButtonWidget(
                        text: "choose file",
                        onTap: () {
                          if (kIsWeb) {
                            FilePickerService.pickFileWeb(isMultiple: true)
                                .then((value) {
                              if (value != null) {
                                setState(() {
                                  filesByteList.addAll(value);
                                });
                              }
                            });
                          }
                          //else {
                          //   FilePickerService.pickFile().then((value) {
                          //     if (value != null) {
                          //       setState(() {
                          //         filesList.addAll(value);
                          //       });
                          //     }
                          //   });
                          // }
                          //  await FilePicker.platform.pickFiles().then((result) {
                          //   if (result != null) {
                          //     filesList.add(File(result.files.single.path));
                          //     setState(() {});
                          //   } else {
                          //     // User canceled the picker
                          //   }
                          //   return result;
                          // });
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    // filesList.isEmpty
                    //     ? SizedBox()
                    //     : Container(
                    //         child: Text("${filesList.length} filesList Selected"),
                    //       ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // if (!filesList.isEmpty)
                    //   GestureDetector(
                    //     onTap: () {
                    //       setState(() {
                    //         filesList.length = filesList.length - 1;
                    //       });
                    //     },
                    //     child: Icon(
                    //       Icons.remove_circle,
                    //       color: AppColors.teal,
                    //     ),
                    //   )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    if (kIsWeb)
                      ...filesByteList.map((e) => UnconstrainedBox(
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.teal),
                                  borderRadius: BorderRadius.circular(5)),
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      e["fileName"] ?? "temp",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: AppColors.teal),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        filesByteList.remove(e);
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_circle,
                                      color: AppColors.teal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ...filesList.map((e) => UnconstrainedBox(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.teal),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    e.path.split("/").last,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: AppColors.teal),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      filesList.remove(e);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: AppColors.teal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Service:",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Incubator Connection",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Documentation",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Designing MVP (as per customer’s imaginations)",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Comprehensive business planning",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Developing robust business framework",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Team development (passionate and target oriented)",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Training ",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 5),
                        SizedBox(width: 5),
                        SizedBox(
                          width: kIsWeb ? width * .33 : width,
                          child: Text(
                            "Performance metrics (Planning, executing and monitoring every step meticulously)",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget get buildPage4 {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                label("My Name"),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: kIsWeb ? width * .5 : width * .99,
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
                                controller: nameCtrl,
                                decoration: InputDecoration(
                                  // hintText: AppLocalizations.of(context)!.reg_email,
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                label("My Email"),
                Row(
                  children: [
                    Container(
                        width: kIsWeb ? width * .5 : width * .99,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Colors.teal,
                            width: 0.5,
                          ),
                        )),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            controller: emailCtrl,
                            decoration: InputDecoration(
                              // hintText: AppLocalizations.of(context)!.reg_email,
                              //border: InputBorder.none,
                              hintMaxLines: 3,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal),
                              ),
                            ))),
                  ],
                ),
                SizedBox(height: 10),
                label("My Mobile Number"),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: kIsWeb ? width * .5 : width * .99,
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                color: Colors.teal,
                                width: 0.5,
                              ),
                            )),
                            child: TextField(
                                keyboardType: TextInputType.phone,
                                maxLines: 1,
                                controller: mobileCtrl,
                                decoration: InputDecoration(
                                  // hintText: AppLocalizations.of(context)!.reg_email,
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                label("My Designation"),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: kIsWeb ? width * .5 : width * .99,
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
                                controller: designationCtrl,
                                decoration: InputDecoration(
                                  // hintText: AppLocalizations.of(context)!.reg_email,
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                label("Co-Founder"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * .5,
                      child: ListView.builder(
                          shrinkWrap: true,
                          // scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          itemCount: coFounder.length,
                          itemBuilder: (context, index) {
                            return coFounder[index];
                          }),
                    ),
                  ],
                ),

                const SizedBox(height: 10.0),

                ///// Button Increment & decrement
                Row(
                  mainAxisAlignment:
                      kIsWeb ? MainAxisAlignment.center : MainAxisAlignment.end,
                  children: [
                    kIsWeb ? SizedBox(width: width * .2) : SizedBox(),
                    GestureDetector(
                        onTap: () {
                          if (coFounder.length > 1) {
                            setState(() {
                              coFounder.removeLast();
                              coFounderCTRL.removeLast();
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
                          coFounderCTRL.add(TextEditingController());
                          coFounder.add(Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: kIsWeb ? width * .5 : width * .99,
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
                                          controller: coFounderCTRL.last,
                                          decoration: InputDecoration(
                                            // hintText: AppLocalizations.of(context)!.reg_email,
                                            //border: InputBorder.none,
                                            hintMaxLines: 3,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal),
                                            ),
                                          ))),
                                ],
                              ),
                            ],
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

                SizedBox(height: 30),

                Row(
                  children: [
                    OutLinedButtonWidget(
                        width: width * .15,
                        text: "Company Certificate",
                        onTap: () {
                          if (kIsWeb) {
                            FilePickerService.pickFileWeb().then((value) {
                              if (value != null) {
                                setState(() {
                                  companyCertByteList.addAll(value);
                                });
                              }
                            });
                          }
                          //else {
                          //   FilePickerService.pickFile().then((value) {
                          //     if (value != null) {
                          //       setState(() {
                          //         filesList.addAll(value);
                          //       });
                          //     }
                          //   });
                          // }
                          //  await FilePicker.platform.pickFiles().then((result) {
                          //   if (result != null) {
                          //     filesList.add(File(result.files.single.path));
                          //     setState(() {});
                          //   } else {
                          //     // User canceled the picker
                          //   }
                          //   return result;
                          // });
                        }),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Wrap(children: [
                  if (kIsWeb)
                    ...companyCertByteList.map((e) => UnconstrainedBox(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.teal),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    e["fileName"] ?? "temp",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: AppColors.teal),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      companyCertByteList.remove(e);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: AppColors.teal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                ]),
                SizedBox(height: 10),

                Row(
                  children: [
                    OutLinedButtonWidget(
                        width: width * .15,
                        text: "DPIIT Certificate",
                        onTap: () {
                          if (kIsWeb) {
                            FilePickerService.pickFileWeb().then((value) {
                              if (value != null) {
                                setState(() {
                                  dPITCertByteList.addAll(value);
                                });
                              }
                            });
                          }
                          //else {
                          //   FilePickerService.pickFile().then((value) {
                          //     if (value != null) {
                          //       setState(() {
                          //         filesList.addAll(value);
                          //       });
                          //     }
                          //   });
                          // }
                          //  await FilePicker.platform.pickFiles().then((result) {
                          //   if (result != null) {
                          //     filesList.add(File(result.files.single.path));
                          //     setState(() {});
                          //   } else {
                          //     // User canceled the picker
                          //   }
                          //   return result;
                          // });
                        }),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Wrap(children: [
                  if (kIsWeb)
                    ...dPITCertByteList.map((e) => UnconstrainedBox(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.teal),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    e["fileName"] ?? "temp",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: AppColors.teal),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      dPITCertByteList.remove(e);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: AppColors.teal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                ]),
                SizedBox(height: 10),
                Row(
                  children: [
                    OutLinedButtonWidget(
                        width: width * .15,
                        text: "Company PAN",
                        onTap: () {
                          if (kIsWeb) {
                            FilePickerService.pickFileWeb().then((value) {
                              if (value != null) {
                                setState(() {
                                  companyPanByteList.addAll(value);
                                });
                              }
                            });
                          }
                          //else {
                          //   FilePickerService.pickFile().then((value) {
                          //     if (value != null) {
                          //       setState(() {
                          //         filesList.addAll(value);
                          //       });
                          //     }
                          //   });
                          // }
                        }),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Wrap(children: [
                  if (kIsWeb)
                    ...companyPanByteList.map((e) => UnconstrainedBox(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.teal),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    e["fileName"] ?? "temp",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: AppColors.teal),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      companyPanByteList.remove(e);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: AppColors.teal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                ]),
                SizedBox(height: 10),
                Row(
                  children: [
                    OutLinedButtonWidget(
                        width: width * .15,
                        text: "Company TAN",
                        onTap: () {
                          if (kIsWeb) {
                            FilePickerService.pickFileWeb().then((value) {
                              if (value != null) {
                                setState(() {
                                  companyTanByteList.addAll(value);
                                });
                              }
                            });
                          }
                        }),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(children: [
                  if (kIsWeb)
                    ...companyTanByteList.map((e) => UnconstrainedBox(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.teal),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    e["fileName"] ?? "temp",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: AppColors.teal),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      companyTanByteList.remove(e);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: AppColors.teal,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                ]),
                //       ]),
                // ]),
              ],
            ),
            SizedBox(width: width * .1),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: kIsWeb ? width * .33 : width,
                  child: Text(
                    "Methodology:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Initial Consultation and Needs Assessment",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Ideation and Concept Refinement",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Complementing Product/Service with customers’ requirement",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Strategies (Marketing, Competition, Expansion)",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Somatization (Market, Product/Service)",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Financial modelling",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Assessing funding requirements ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.circle, size: 5),
                    SizedBox(width: 5),
                    SizedBox(
                      width: kIsWeb ? width * .33 : width,
                      child: Text(
                        "Assisting in fund raising",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 10,
        ),
        Row(children: [
          SizedBox(
            width: kIsWeb ? width * .9 : width,
            child: Text(
                "By completing and submitting this form, I confirm that the information provided is accurate to the best of my knowledge. I understand that this form does not ",
                style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
        ]),
        Row(children: [
          SizedBox(
            width: kIsWeb ? width * .38 : width,
            child: Text(
                "constitute a binding contract, but rather an expression of interest in",
                style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
          Container(
              width: kIsWeb ? width * .2 : width * .99,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 0.5,
                ),
              )),
              child: TextField(
                  style: TextStyle(color: Colors.teal),
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  controller: companyCtrl,
                  decoration: InputDecoration(
                    // alignLabelWithHint: Alignment.center,
                    hintText: "[Your Company Name]",
                    hintStyle: TextStyle(color: Colors.teal),
                    //border: InputBorder.none,
                    hintMaxLines: 3,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ))),
          SizedBox(
            width: kIsWeb ? width * .3 : width,
            child: Text("Rafts and Rivers consultancy services.",
                style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
        ]),
        //Row(children: []),

        //Text("By completing and submitting this form, I confirm that the information provided is accurate to the best of my knowledge. I understand that this form does not constitute a binding contract, but rather an expression of interest in [Your Company Name], Rafts and Rivers consultancy services.")
      ],
    );
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
    if (yearOfCorporationCTRL.text.isEmpty) {
      showToastMessage("Please mention year of Corporation");
      return false;
    }

    return true;
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

  bool validateForth() {
    if (nameCtrl.text.isEmpty) {
      showToastMessage("Please mention name");
      return false;
    }
    if (emailCtrl.text.isEmpty) {
      showToastMessage("Please mention Email");
      return false;
    }
    if (mobileCtrl.text.isEmpty) {
      showToastMessage("Please mention Mobile number");
      return false;
    }
    if (designationCtrl.text.isEmpty) {
      showToastMessage("Please mention Designation");
      return false;
    }
    for (var i = 0; i < coFounderCTRL.length; i++) {
      if (coFounderCTRL[i].text.isEmpty) {
        showToastMessage("Please Write Co-Founder");
        return false;
      }
    }
    if (companyCtrl.text.isEmpty) {
      showToastMessage("Please mention company name");
      return false;
    }

    return true;
  }

  int ageMarks = 0;
  Map calculateMarks() {
    Map ideaMarks = {
      "ideaTypeMarks": ideaTypeMarks,
      "technologyMarks": technologyMarks,
      "reactionMarks": reactionMarks,
      // "ageMarks": 6,
      "ageMarks": getAgeMarks(),
      "locationMarks": locationMarks,
      "genderMarks": genderMarks,
      "educationMarks": educationMarks,
      "incomeMarks": getAgeMarks()
      // "incomeMarks": 10
    };

    log("Marks:$ideaMarks");
    return ideaMarks;
  }

  int getAgeMarks() {
    int from = int.parse(fromCtrl.text);
    int to = int.parse(toCtrl.text);
    if (from > 17 && to <= 60) {
      return 10;
    }
    if (from > 5 && to <= 18) {
      return 6;
    }
    if (from > 5 && to <= 10) {
      return 4;
    }
    return 3;
  }
}
