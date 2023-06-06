import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import '../../constant/ui_constant.dart';
import '../../controller/ideaController.dart';
import '../../services/firebaseStorage.dart';
import '../../widget/button.dart';
import '../../widget/filePicker.dart';
import '../../widget/show_loading.dart';
import '../../widget/textField.dart';
import '../../widget/widgetfunction.dart';
import '../fourth/ideaFourth.dart';
import '../second/ideaSecond.dart';

class IdeaThirdScreen extends StatefulWidget {
  const IdeaThirdScreen({Key? key}) : super(key: key);

  @override
  State<IdeaThirdScreen> createState() => _IdeaThirdScreenState();
}

class _IdeaThirdScreenState extends State<IdeaThirdScreen> {
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

  Future<Map> submitIdea3() async {
    Map<String, dynamic> businessIdea3 = {
      // "userId": auth.currentUser!.uid,
      "createdAt": Timestamp.now(),
      "isExpertAdvice": isExpertAdvice,
      "isSpace": isSpace,
      "isFunding": isFunding,
      "isFormCompany": isFormCompany,
      "isGrow": isGrow,
    };

    if (filesByteList.isNotEmpty && businessIdea3["attachment"] == null) {
      showLoading("Uploading Files..");
      String? urls = await FirebaseStorageService.uploadFile("businessIdea", "",
          byteData: filesByteList.first["fileByte"]);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea3["attachment"] = urls;
      }
    }

    ideaController.ideaData.addAll(businessIdea3);

    print(ideaController.ideaData.toString());
    return businessIdea3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            OverflowBar(
              overflowAlignment: OverflowBarAlignment.start,
              spacing: 30,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: Get.width > 500 ? Get.width * .5 - 25 : Get.width,
                    // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      // SizedBox(
                      //   width: kIsWeb ? width * .5 : width,
                      //   child: Text(
                      //     "Lets sum-up!",
                      //     //**** */
                      //     style: TextStyle(
                      //         color: AppColors.orange,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 18),
                      //   ),
                      // ),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     SizedBox(
                      //       width: kIsWeb ? width * .5 : width,
                      //       child: Text(
                      //         "By clicking your requirements from the incubation centre, you will be responded soon about your Idea. Thankyou for your submission",
                      //         //**** */
                      //         style: TextStyle(
                      //             color: AppColors.orange,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 18),
                      //       ),
                      //     ),
                      //   ],
                      // ),

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
                            //width: kIsWeb ? width * .4 : width * .8,
                            child: Expanded(
                              child: Text(
                                "Expert Advice on My Idea/Concept Product/ Service",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            // width: kIsWeb ? width * .2 : width * .2,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.teal),
                              child: Checkbox(
                                side:
                                    BorderSide(color: AppColors.teal, width: 1),
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
                            // width: kIsWeb ? width * .4 : width * .8,
                            child: Expanded(
                              child: Text(
                                "Space and infrastructure to develop the service/product",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            // width: kIsWeb ? width * .2 : width * .2,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.teal),
                              child: Checkbox(
                                side:
                                    BorderSide(color: AppColors.teal, width: 1),
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
                            //width: kIsWeb ? width * .4 : width * .8,
                            child: Expanded(
                              child: Text(
                                "Funding to launch the already developed/product service",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            //  width: kIsWeb ? width * .2 : width * .2,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.teal),
                              child: Checkbox(
                                side:
                                    BorderSide(color: AppColors.teal, width: 1),
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
                            // width: kIsWeb ? width * .4 : width * .8,
                            child: Expanded(
                              child: Text(
                                "Form a company and other legal formalities",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            //  width: kIsWeb ? width * .2 : width * .2,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.teal),
                              child: Checkbox(
                                side:
                                    BorderSide(color: AppColors.teal, width: 1),
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
                            // width: kIsWeb ? width * .4 : width * .8,
                            child: Expanded(
                              child: Text(
                                "Grow my team",
                                style: TextStyle(
                                    color: AppColors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            // width: kIsWeb ? width * .2 : width * .2,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: AppColors.teal),
                              child: Checkbox(
                                side:
                                    BorderSide(color: AppColors.teal, width: 1),
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
                                  FilePickerService.pickFileWeb(
                                          isMultiple: true)
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
                                        border:
                                            Border.all(color: AppColors.teal),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            e["fileName"] ?? "temp",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: AppColors.teal),
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
                                          style:
                                              TextStyle(color: AppColors.teal),
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
                              submitIdea3().then(
                                  (value) => Get.to(() => IdeaFourthScreen()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: Get.width > 500 ? Get.width * .4 : Get.width,
                    //minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        // width: kIsWeb ? width * .3 : width,
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
                          Expanded(
                            child: Text(
                              "- Incubator Connection",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "- Documentation",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "- Designing MVP (as per customer’s imaginations)",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),

                      Row(children: [
                        Expanded(
                          child: Text(
                            "- Comprehensive business planning",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Expanded(
                          child: Text(
                            "- Developing robust business framework",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ]),

                      // Expanded(
                      //   child: Text(
                      //     "Developing robust business framework",
                      //     style: TextStyle(fontSize: 16, color: Colors.black),
                      //   ),
                      // ),

                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "- Team development (passionate and target oriented)",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "- Training ",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "- Performance metrics (Planning, executing and monitoring every step meticulously ",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       // width: kIsWeb ? width * .3 : width,
                      //       child: Expanded(
                      //         child: Text(
                      //           "Incubator Connection",
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.black),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       //width: kIsWeb ? width * .3 : width,
                      //       child: Expanded(
                      //         child: Text(
                      //           "Documentation",
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.black),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // OverflowBar(
                      //     overflowAlignment: OverflowBarAlignment.start,
                      //     spacing: 10,
                      //     children: [
                      //       ConstrainedBox(
                      //         constraints: BoxConstraints(
                      //           maxWidth: Get.width > 500
                      //               ? Get.width * .5 - 25
                      //               : Get.width,
                      //           // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                      //         ),
                      //         child: Row(
                      //           children: [
                      //             Icon(Icons.circle, size: 5),
                      //             //SizedBox(width: 5),
                      //             SizedBox(
                      //               // width: kIsWeb ? width * .3 : width,
                      //               child: Expanded(
                      //                 child: Text(
                      //                   "- Designing MVP (as per customer’s imaginations)",
                      //                   style: TextStyle(
                      //                       fontSize: 16,
                      //                       color: Colors.black),
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ]),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       // width: kIsWeb ? width * .3 : width,
                      //       child: Expanded(
                      //         child: Text(
                      //           "Designing MVP (as per customer’s imaginations)",
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.black),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       //width: kIsWeb ? width * .3 : width,
                      //       child: Expanded(
                      //         child: Text(
                      //           "Comprehensive business planning",
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.black),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       //width: kIsWeb ? width * .3 : width,
                      //       child: Expanded(
                      //         child: Text(
                      //           "Developing robust business framework",
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.black),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       width: kIsWeb ? width * .3 : width,
                      //       child: Text(
                      //         "Team development (passionate and target oriented)",
                      //         style: TextStyle(
                      //             fontSize: 16, color: Colors.black),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       width: kIsWeb ? width * .3 : width,
                      //       child: Text(
                      //         "Training ",
                      //         style: TextStyle(
                      //             fontSize: 16, color: Colors.black),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Icon(Icons.circle, size: 5),
                      //     SizedBox(width: 5),
                      //     SizedBox(
                      //       width: kIsWeb ? width * .3 : width,
                      //       child: Text(
                      //         "Performance metrics (Planning, executing and monitoring every step meticulously)",
                      //         style: TextStyle(
                      //             fontSize: 16, color: Colors.black),
                      //       ),
                      //     ),
                      //   ],
                      // ),
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
        ),
      )),
    );
  }
}
