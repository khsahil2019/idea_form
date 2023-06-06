import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:idea_form/services/email.dart';

import '../../constant/ui_constant.dart';
import '../../controller/ideaController.dart';
import '../../services/firebaseStorage.dart';
import '../../services/ideaServices.dart';
import '../../widget/button.dart';
import '../../widget/filePicker.dart';
import '../../widget/imagePicker.dart';
import '../../widget/show_loading.dart';
import '../../widget/textField.dart';
import '../../widget/toast.dart';
import '../../widget/widgetfunction.dart';
import '../second/ideaSecond.dart';

class IdeaFourthScreen extends StatefulWidget {
  const IdeaFourthScreen({Key? key}) : super(key: key);

  @override
  State<IdeaFourthScreen> createState() => _IdeaFourthScreenState();
}

class _IdeaFourthScreenState extends State<IdeaFourthScreen> {
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
  File? uploadImage;
  File? uploadImage2;
  File? uploadImage3;
  Uint8List? uploadImageBytes;
  Uint8List? uploadImage2Bytes;
  Uint8List? uploadImage3Bytes;
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
      coFounder.add(Container(
          height: 35,
          //  width: kIsWeb ? width * .4 : width * .99,
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
                hintText: "Co-founder Name",
                //border: InputBorder.none,
                hintMaxLines: 3,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ))));

      // setState(() {});
    });
  }

  void submitIdea4() async {
    Map<String, dynamic> businessIdea4 = {
      // "userId": auth.currentUser!.uid,
      "createdAt": Timestamp.now(),

      "myName": nameCtrl.text,
      "myEmail": emailCtrl.text,
      "myMobile": mobileCtrl.text,
      "myDesignation": designationCtrl.text,
      "coFounder": coFounderCTRL.map((e) => e.text).toList(),
      "companyCtrl": companyCtrl.text
    };
    // ideaController.myMap.addAll(businessIdea);

    if (companyCertByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyCertByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea4["companyCert"] = urls;
      }
    }
    if (dPITCertByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: dPITCertByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea4["dPITCert"] = urls;
      }
    }
    if (companyPanByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyPanByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea4["companyPan"] = urls;
      }
    }
    if (companyTanByteList.isNotEmpty) {
      showLoading("Uploading Files..");
      List? urls = await FirebaseStorageService.uploadMultiFile("businessIdea",
          byteList: companyTanByteList);
      if (urls != null) {
        dismissLoadingWidget();
        businessIdea4["companyTan"] = urls;
      }
    }
    ideaController.ideaData.addAll(businessIdea4);

    print(ideaController.ideaData.toString());
    // print(businessIdea4.toString());
    showLoading("Uploading Idea..");
    IdeaServices().createBusinessIdea(ideaController.ideaData).then((value) => {
          if (value != null)
            {
              dismissLoadingWidget(),
              showToastMessage("Idea Submitted Successfully"),
              EmailService().sendEmail(
                  email: emailCtrl.text,
                  description: ideaController.ideaData.toString()),
              setState(() {
                ideaController.ideaData.clear();
                index = 0;
              })
            }
          else
            {
              showLoading("Uploading Files.."),
              showToastMessage("Something went wrong")
            }
        });
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
                        SizedBox(
                          height: 30,
                        ),
                        label("My Name"),
                        Container(
                            height: 30,
                            //width: kIsWeb ? width * .4 : width * .99,
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
                                  hintText: "James Gosling",
                                  // border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                        SizedBox(height: 20),
                        label("My Email"),
                        Container(
                            height: 30,
                            //width: kIsWeb ? width * .4 : width * .99,
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
                                  hintText: "example@gmail.com",
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                        SizedBox(height: 20),
                        label("My Mobile Number"),
                        Container(
                            height: 30,
                            // width: kIsWeb ? width * .4 : width * .99,
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
                                  hintText: "873909*****",
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                        SizedBox(height: 20),
                        label("My Designation"),
                        Container(
                            height: 30,
                            //width: kIsWeb ? width * .4 : width * .99,
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
                                  hintText: "Software Engineer",
                                  //border: InputBorder.none,
                                  hintMaxLines: 3,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                  ),
                                ))),
                        SizedBox(height: 20),
                        label("Co-Founder"),
                        SizedBox(
                          //  width: width * .4,
                          child: ListView.builder(
                              shrinkWrap: true,
                              // scrollDirection: Axis.vertical,
                              physics: const ScrollPhysics(),
                              itemCount: coFounder.length,
                              itemBuilder: (context, index) {
                                return coFounder[index];
                              }),
                        ),

                        const SizedBox(height: 10.0),

                        ///// Button Increment & decrement
                        Row(
                          mainAxisAlignment: kIsWeb
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.end,
                          children: [
                            // kIsWeb ? SizedBox(width: width * .2) : SizedBox(),
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
                                  coFounder.add(Container(
                                      height: 35,
                                      // width: kIsWeb
                                      //     ? width * .4
                                      //     : width * .99,
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
                                            hintText: "Co-founder Name",
                                            //border: InputBorder.none,
                                            hintMaxLines: 3,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.teal),
                                            ),
                                          ))));
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
/********************************************************************************************/
                        OverflowBar(
                            overflowAlignment: OverflowBarAlignment.start,
                            spacing: 50,
                            children: [
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: Get.width > 500
                                        ? Get.width * .5 - 25
                                        : Get.width,
                                    // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // showPicker(context);
                                            if (kIsWeb) {
                                              ImagePickerService.pickImageWeb(
                                                      imageQuality: 20)
                                                  .then((value) {
                                                if (value != null) {
                                                  setState(() {
                                                    // Uni8int8List to File
                                                    uploadImageBytes =
                                                        value["byteData"];
                                                    uploadImage =
                                                        File.fromRawPath(
                                                            value["byteData"]);
                                                  });
                                                }
                                              });
                                            } else
                                              ImagePickerService.pickImageUI(
                                                  (val) {
                                                setState(() {
                                                  uploadImage = val;
                                                });
                                              }, 20);
                                          },
                                          child: uploadImage == null
                                              ? Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color: Color(0xFF111D3A),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Icon(
                                                    Icons.add_a_photo_outlined,
                                                    size: 40,
                                                    color: Colors.blueGrey,
                                                  ),
                                                )
                                              : Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.black,
                                                    image: kIsWeb
                                                        ? DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: MemoryImage(
                                                                uploadImageBytes!),
                                                            // image: NetworkImage(
                                                            //     uploadImage!.path.toString())
                                                          )
                                                        : DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: FileImage(
                                                                uploadImage!),
                                                          ),
                                                  ),
                                                ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Image of Co-Founder1",
                                          style: TextStyle(
                                              color: AppColors.teal,
                                              fontSize: 12),
                                        ),
                                      ])),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: Get.width > 500
                                        ? Get.width * .5 - 25
                                        : Get.width,
                                    // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // showPicker(context);
                                            if (kIsWeb) {
                                              ImagePickerService.pickImageWeb(
                                                      imageQuality: 20)
                                                  .then((value) {
                                                if (value != null) {
                                                  setState(() {
                                                    // Uni8int8List to File
                                                    uploadImage2Bytes =
                                                        value["byteData"];
                                                    uploadImage2 =
                                                        File.fromRawPath(
                                                            value["byteData"]);
                                                  });
                                                }
                                              });
                                            } else
                                              ImagePickerService.pickImageUI(
                                                  (val) {
                                                setState(() {
                                                  uploadImage2 = val;
                                                });
                                              }, 20);
                                          },
                                          child: uploadImage2 == null
                                              ? Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color: Color(0xFF111D3A),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Icon(
                                                    Icons.add_a_photo_outlined,
                                                    size: 40,
                                                    color: Colors.blueGrey,
                                                  ),
                                                )
                                              : Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.black,
                                                    image: kIsWeb
                                                        ? DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: MemoryImage(
                                                                uploadImage2Bytes!),
                                                            // image: NetworkImage(
                                                            //     uploadImage!.path.toString())
                                                          )
                                                        : DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: FileImage(
                                                                uploadImage2!),
                                                          ),
                                                  ),
                                                ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Image of Co-Founder2",
                                          style: TextStyle(
                                              color: AppColors.teal,
                                              fontSize: 12),
                                        ),
                                      ])),
                              ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: Get.width > 500
                                        ? Get.width * .5 - 25
                                        : Get.width,
                                    // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // showPicker(context);
                                            if (kIsWeb) {
                                              ImagePickerService.pickImageWeb(
                                                      imageQuality: 20)
                                                  .then((value) {
                                                if (value != null) {
                                                  setState(() {
                                                    // Uni8int8List to File
                                                    uploadImage3Bytes =
                                                        value["byteData"];
                                                    uploadImage3 =
                                                        File.fromRawPath(
                                                            value["byteData"]);
                                                  });
                                                }
                                              });
                                            } else
                                              ImagePickerService.pickImageUI(
                                                  (val) {
                                                setState(() {
                                                  uploadImage3 = val;
                                                });
                                              }, 20);
                                          },
                                          child: uploadImage3 == null
                                              ? Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color: Color(0xFF111D3A),
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Icon(
                                                    Icons.add_a_photo_outlined,
                                                    size: 40,
                                                    color: Colors.blueGrey,
                                                  ),
                                                )
                                              : Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        offset: Offset(3, 5),
                                                        blurRadius: 5,
                                                      ),
                                                    ],
                                                    color: Colors.black,
                                                    image: kIsWeb
                                                        ? DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: MemoryImage(
                                                                uploadImage3Bytes!),
                                                            // image: NetworkImage(
                                                            //     uploadImage!.path.toString())
                                                          )
                                                        : DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: FileImage(
                                                                uploadImage3!),
                                                          ),
                                                  ),
                                                ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Image of Co-Founder3",
                                          style: TextStyle(
                                              color: AppColors.teal,
                                              fontSize: 12),
                                        ),
                                      ])),
                            ]),

                        SizedBox(
                          height: 20,
                        ),

/********************************************************************************************/

                        SizedBox(height: 30),

                        Row(
                          children: [
                            OutLinedButtonWidget(
                                // width: width * .15,
                                text: "Company Certificate",
                                onTap: () {
                                  if (kIsWeb) {
                                    FilePickerService.pickFileWeb()
                                        .then((value) {
                                      if (value != null) {
                                        setState(() {
                                          companyCertByteList.addAll(value);
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
                        Wrap(children: [
                          if (kIsWeb)
                            ...companyCertByteList.map((e) => UnconstrainedBox(
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.teal),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(15),
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
                                //  width: width * .15,
                                text: "DPIIT Certificate",
                                onTap: () {
                                  if (kIsWeb) {
                                    FilePickerService.pickFileWeb()
                                        .then((value) {
                                      if (value != null) {
                                        setState(() {
                                          dPITCertByteList.addAll(value);
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
                        Wrap(children: [
                          if (kIsWeb)
                            ...dPITCertByteList.map((e) => UnconstrainedBox(
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.teal),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(15),
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
                                // width: width * .15,
                                text: "Company PAN",
                                onTap: () {
                                  if (kIsWeb) {
                                    FilePickerService.pickFileWeb()
                                        .then((value) {
                                      if (value != null) {
                                        setState(() {
                                          companyPanByteList.addAll(value);
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
                        Wrap(children: [
                          if (kIsWeb)
                            ...companyPanByteList.map((e) => UnconstrainedBox(
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.teal),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(15),
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
                                // width: width * .15,
                                text: "Company TAN",
                                onTap: () {
                                  if (kIsWeb) {
                                    FilePickerService.pickFileWeb()
                                        .then((value) {
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
                                        border:
                                            Border.all(color: AppColors.teal),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.all(15),
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
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutLinedButtonWidget(
                              text: "Submit",
                              onTap: () {
                                if (validateForth()) {
                                  submitIdea4();
                                }
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //       ]),
                        // ]),
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
                        Row(
                          children: [
                            Expanded(
                              // width: kIsWeb ? width * .33 : width,
                              child: Text(
                                "Methodology:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Data("- Initial Consultation and Needs Assessment"),
                        Data("- Ideation and Concept Refinement"),
                        Data(
                            "- Complementing Product/Service with customers’ requirement"),
                        Data(
                            "- Strategies (Marketing, Competition, Expansion)"),
                        Data("- Somatization (Market, Product/Service)"),
                        Data("- Financial modelling"),
                        Data("- Assessing funding requirements "),
                        SizedBox(
                          height: 500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        "By completing and submitting this form, I confirm that the information provided is accurate to the best of my knowledge. I understand that this form does not ",
                        style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
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
                    child: Expanded(
                      child: Text(
                          "constitute a binding contract, but rather an expression of interest in",
                          style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth:
                          Get.width > 500 ? Get.width * .5 - 25 : Get.width,
                      // minWidth: Get.width > 600 ? Get.width * .4 : Get.width,
                    ),
                    child: Container(
                        // width: kIsWeb ? width * .2 : width * .99,
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
                              hintMaxLines: 1,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal),
                              ),
                            ))),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    // width: kIsWeb ? width * .3 : width,
                    child: Text("Rafts and Rivers consultancy services.",
                        style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
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

  Widget Data(String text) {
    return Row(
      children: [
        Expanded(
          // width: kIsWeb ? width * .33 : width,
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
