// import 'package:crux/UI/ui_constant.dart';
// import 'package:crux/UI/widgets/widget_build_function.dart';
// import 'package:crux/redux/routes/routes.dart';
// import 'package:flutter/material.dart';
// import 'dart:developer';

// import 'package:crux/redux/models/loading_state.dart';
// import 'package:flutter_redux/flutter_redux.dart';

// import '../../../redux/actions/actions.dart';
// import '../../../redux/actions/navigator_action.dart';
// import '../../../redux/middleware/toast_middleware.dart';
// import '../../../redux/models/app_state.dart';
// import '../../../redux/services/amplitude.dart';

// class Language extends StatefulWidget {
//   const Language({Key key}) : super(key: key);

//   @override
//   State<Language> createState() => _LanguageState();
// }

// class _LanguageState extends State<Language> {
//   double width;
//   void initState() {
//     AmplitudeService()
//         .logEvent("Going to Change language screen", eventProperties: {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, Map<String, dynamic>>(
//       converter: (store) {
//         final Map<String, dynamic> args = {
//           "routes": store.state.routes,
//           "loadingState": store.state.loadingState,
//           "toast": (String msg) {
//             store.dispatch(ToastAction(msg, ToastCode.error));
//           },
//           "navigate": (String route) {
//             log("navigation runn====");
//             return store.dispatch(NavigatorPushAction(route));
//           },
//         };
//         return args;
//       },
//       builder: (context, args) {
//         width = MediaQuery.of(context).size.width - 40;
//         final LoadingState loadingState = args["loadingState"];
//         final Function navigate = args["navigate"];
//         final Function toast = args["toast"];
//         return Scaffold(
//             // backgroundColor: const Color(0xFFEEE6EE),
//             body: Stack(children: [
//           Container(
//               margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//               child: ListView(children: [
//                 SizedBox(
//                   height: 250,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "Language / भाषा",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: AppColors.teal,
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         // navigate(AppRoutes.assessBusinessIdea);
//                       },
//                       child: Container(
//                           height: 55,
//                           width: width * .6,
//                           margin:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//                           decoration: BoxDecoration(
//                               // border: Border.all(color: Colors.grey),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   offset: Offset(3, 5),
//                                   blurRadius: 10,
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.circular(25.0),
//                               color: Colors.white),
//                           child: Center(
//                               child: Text(
//                             "हिंदी",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 color: AppColors.orange,
//                                 fontWeight: FontWeight.bold),
//                           ))),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         //  navigate(AppRoutes.assessBusinessIdea);
//                       },
//                       child: Container(
//                           height: 55,
//                           width: width * .6,
//                           margin:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//                           decoration: BoxDecoration(
//                               // border: Border.all(color: Colors.grey),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   offset: Offset(3, 5),
//                                   blurRadius: 10,
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.circular(25.0),
//                               color: Colors.white),
//                           child: Center(
//                               child: Text(
//                             "English",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 color: AppColors.teal,
//                                 fontWeight: FontWeight.bold),
//                           ))),
//                     ),
//                   ],
//                 )
//               ])),
//           loadingIndicator(loadingState)
//         ]));
//       },
//     );
//   }
// }
