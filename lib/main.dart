import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idea_form/controller/ideaController.dart';
import 'package:idea_form/screen/first/ideaFirst.dart';
import 'package:idea_form/screen/fourth/ideaFourth.dart';
import 'package:idea_form/screen/second/ideaSecond.dart';
import 'package:idea_form/screen/third/ideaThird.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'firebase_options.dart';
import 'helper/language/language.dart';
import 'ideaform.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const OKToast(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        supportedLocales: L10n
            .all, // <-- supported locales https://www.youtube.com/watch?v=aIEegP0cUOQ
        locale: Locale(
          'en',
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialBinding: AllBinding(),
        // home: CreateBusinessIdeaScreen());
        home: IdeaFourthScreen());
    // home: IdeaFirstScreen());
    // home: IdeaSecondScreen());
    //home: IdeaThirdScreen());
  }
}
