import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_hi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi')
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Vineet kumar sharma'**
  String get name;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @develop_plan_text1.
  ///
  /// In en, this message translates to:
  /// **'Lets develop a robust business plan step by step'**
  String get develop_plan_text1;

  /// No description provided for @develop_plan_executive_summery.
  ///
  /// In en, this message translates to:
  /// **'Executive Summery'**
  String get develop_plan_executive_summery;

  /// No description provided for @develop_plan_target_cutomer.
  ///
  /// In en, this message translates to:
  /// **'Target Customers'**
  String get develop_plan_target_cutomer;

  /// No description provided for @develop_plan_needs_gaps.
  ///
  /// In en, this message translates to:
  /// **'What needs/gaps do my customer have?'**
  String get develop_plan_needs_gaps;

  /// No description provided for @develop_plan_product_service.
  ///
  /// In en, this message translates to:
  /// **'My Product/Service'**
  String get develop_plan_product_service;

  /// No description provided for @develop_plan_service_solve.
  ///
  /// In en, this message translates to:
  /// **'How and What Problem does my product/service solve'**
  String get develop_plan_service_solve;

  /// No description provided for @develop_plan_competitors.
  ///
  /// In en, this message translates to:
  /// **'What are the competitors'**
  String get develop_plan_competitors;

  /// No description provided for @develop_plan_key_feature.
  ///
  /// In en, this message translates to:
  /// **'differentiating key features of the product/service'**
  String get develop_plan_key_feature;

  /// No description provided for @fund_requirement_text1.
  ///
  /// In en, this message translates to:
  /// **'Financial Analysis'**
  String get fund_requirement_text1;

  /// No description provided for @fund_requirement_product_service.
  ///
  /// In en, this message translates to:
  /// **'I have to develop a prototype for my Product/Service'**
  String get fund_requirement_product_service;

  /// No description provided for @fund_requirement_test_the_waters.
  ///
  /// In en, this message translates to:
  /// **'My Prototype is in place, I have to test the waters'**
  String get fund_requirement_test_the_waters;

  /// No description provided for @fund_requirement_grow_my_customer_base.
  ///
  /// In en, this message translates to:
  /// **'My Product/service is accepted in the market now I have to grow my customer base'**
  String get fund_requirement_grow_my_customer_base;

  /// No description provided for @fund_requirement_i_want_to_expand.
  ///
  /// In en, this message translates to:
  /// **'I have sizable base now I want to expand'**
  String get fund_requirement_i_want_to_expand;

  /// No description provided for @market_and_potential_text1.
  ///
  /// In en, this message translates to:
  /// **'Market and Potential'**
  String get market_and_potential_text1;

  /// No description provided for @market_and_potential_target_market.
  ///
  /// In en, this message translates to:
  /// **'Target market location/s?'**
  String get market_and_potential_target_market;

  /// No description provided for @market_and_potential_average_income.
  ///
  /// In en, this message translates to:
  /// **'Average Income of the target market in Rupees per month'**
  String get market_and_potential_average_income;

  /// No description provided for @market_and_potential_age_group.
  ///
  /// In en, this message translates to:
  /// **'Age group of the target market'**
  String get market_and_potential_age_group;

  /// No description provided for @market_and_potential_gender_of_the_target.
  ///
  /// In en, this message translates to:
  /// **'Gender of the target market (All/Male/Female/Others)ge group of the target market'**
  String get market_and_potential_gender_of_the_target;

  /// No description provided for @market_and_potential_edu_level.
  ///
  /// In en, this message translates to:
  /// **'Education level of target market'**
  String get market_and_potential_edu_level;

  /// No description provided for @market_and_potential_common_profession.
  ///
  /// In en, this message translates to:
  /// **'common profession of the target market'**
  String get market_and_potential_common_profession;

  /// No description provided for @market_and_potential_hobbies_intrest.
  ///
  /// In en, this message translates to:
  /// **'Hobbies/interests of the target market'**
  String get market_and_potential_hobbies_intrest;

  /// No description provided for @idea_desk_wings.
  ///
  /// In en, this message translates to:
  /// **'Give wings to your ideas, turn them into a success story, came along we will nurture your Idea/Concept  and help you building your own Start-Up'**
  String get idea_desk_wings;

  /// No description provided for @idea_desk_my_idea_is.
  ///
  /// In en, this message translates to:
  /// **'My Idea'**
  String get idea_desk_my_idea_is;

  /// No description provided for @idea_desk_is_technology_based.
  ///
  /// In en, this message translates to:
  /// **'My Business /idea is technology based'**
  String get idea_desk_is_technology_based;

  /// No description provided for @idea_desk_provides_an_innovation.
  ///
  /// In en, this message translates to:
  /// **'My business/idea provides an innovative solutions to a particular problem'**
  String get idea_desk_provides_an_innovation;

  /// No description provided for @idea_desk_provides_value.
  ///
  /// In en, this message translates to:
  /// **'My business/idea provides value to a potential customers beyond its cost'**
  String get idea_desk_provides_value;

  /// No description provided for @idea_desk_industry.
  ///
  /// In en, this message translates to:
  /// **'Industry'**
  String get idea_desk_industry;

  /// No description provided for @idea_desk_generated_any_revenue.
  ///
  /// In en, this message translates to:
  /// **'Have your business/idea generated any revenue  '**
  String get idea_desk_generated_any_revenue;

  /// No description provided for @idea_desk_legel_status.
  ///
  /// In en, this message translates to:
  /// **'Legal Status'**
  String get idea_desk_legel_status;

  /// No description provided for @idea_desk_i_am_looking_for.
  ///
  /// In en, this message translates to:
  /// **'I am Looking for'**
  String get idea_desk_i_am_looking_for;

  /// No description provided for @idea_desk_expert_advice.
  ///
  /// In en, this message translates to:
  /// **'Expert Advice on My Idea/Concept Product/ Service'**
  String get idea_desk_expert_advice;

  /// No description provided for @idea_desk_space_and_infrastructure.
  ///
  /// In en, this message translates to:
  /// **'Space and infrastructure to develop the service/product'**
  String get idea_desk_space_and_infrastructure;

  /// No description provided for @idea_desk_funding_to_launch.
  ///
  /// In en, this message translates to:
  /// **'Funding to launch the already developed/product service'**
  String get idea_desk_funding_to_launch;

  /// No description provided for @idea_desk_form_a_company.
  ///
  /// In en, this message translates to:
  /// **'Form a company and other legal formalities'**
  String get idea_desk_form_a_company;

  /// No description provided for @idea_desk_grow_my_team.
  ///
  /// In en, this message translates to:
  /// **'Grow my team'**
  String get idea_desk_grow_my_team;

  /// No description provided for @idea_desk_upload_presentation.
  ///
  /// In en, this message translates to:
  /// **'Please upload the presentation/ documents for your business'**
  String get idea_desk_upload_presentation;

  /// No description provided for @idea_desk_choose_file.
  ///
  /// In en, this message translates to:
  /// **'choose file'**
  String get idea_desk_choose_file;

  /// No description provided for @idea_desk_name_of_business.
  ///
  /// In en, this message translates to:
  /// **'Name of Business/Idea'**
  String get idea_desk_name_of_business;

  /// No description provided for @idea_desk_service_why_is_unique.
  ///
  /// In en, this message translates to:
  /// **'What is your product or service.'**
  String get idea_desk_service_why_is_unique;

  /// No description provided for @idea_desk_unique.
  ///
  /// In en, this message translates to:
  /// **'why is it unique?'**
  String get idea_desk_unique;

  /// No description provided for @idea_desk_client.
  ///
  /// In en, this message translates to:
  /// **'Who are your customers/clients (their geographies, gender, age groups etc.)'**
  String get idea_desk_client;

  /// No description provided for @idea_desk_major_product_service.
  ///
  /// In en, this message translates to:
  /// **'What are the major product/Services milestone that have been met to date?(Discussed and appreciated, tested, being used by people)?'**
  String get idea_desk_major_product_service;

  /// No description provided for @idea_desk_helping_to_achieve.
  ///
  /// In en, this message translates to:
  /// **'What is you haping to achieve after completion of the Startup Incubator Program?'**
  String get idea_desk_helping_to_achieve;

  /// No description provided for @idea_desk_present_team_size.
  ///
  /// In en, this message translates to:
  /// **'Present team Size'**
  String get idea_desk_present_team_size;

  /// No description provided for @idea_desk_concept_in_my_mind.
  ///
  /// In en, this message translates to:
  /// **'A Concept (In my mind)'**
  String get idea_desk_concept_in_my_mind;

  /// No description provided for @idea_desk_early_stage.
  ///
  /// In en, this message translates to:
  /// **'Early Stage (I have developed a prototype)'**
  String get idea_desk_early_stage;

  /// No description provided for @idea_desk_growing_user.
  ///
  /// In en, this message translates to:
  /// **'Expansion (Growing user/customer base)'**
  String get idea_desk_growing_user;

  /// No description provided for @idea_desk_mature_i_want.
  ///
  /// In en, this message translates to:
  /// **'Mature (I want to expand)'**
  String get idea_desk_mature_i_want;

  /// No description provided for @idea_desk_energy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get idea_desk_energy;

  /// No description provided for @idea_desk_clean_tech.
  ///
  /// In en, this message translates to:
  /// **'Clean Tech'**
  String get idea_desk_clean_tech;

  /// No description provided for @idea_desk_healthcare.
  ///
  /// In en, this message translates to:
  /// **'Healthcare/Bio Tech'**
  String get idea_desk_healthcare;

  /// No description provided for @idea_desk_software_as_service.
  ///
  /// In en, this message translates to:
  /// **'Software as Service'**
  String get idea_desk_software_as_service;

  /// No description provided for @idea_desk_education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get idea_desk_education;

  /// No description provided for @idea_desk_transportation.
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get idea_desk_transportation;

  /// No description provided for @idea_desk_customer_goods.
  ///
  /// In en, this message translates to:
  /// **'Customer Goods and Services'**
  String get idea_desk_customer_goods;

  /// No description provided for @idea_desk_fintech.
  ///
  /// In en, this message translates to:
  /// **'Fintech'**
  String get idea_desk_fintech;

  /// No description provided for @idea_desk_others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get idea_desk_others;

  /// No description provided for @idea_desk_incorpo.
  ///
  /// In en, this message translates to:
  /// **'Incorporated'**
  String get idea_desk_incorpo;

  /// No description provided for @idea_desk_not_incorpo.
  ///
  /// In en, this message translates to:
  /// **'Not Incorporated'**
  String get idea_desk_not_incorpo;

  /// No description provided for @case_study_hypothesis.
  ///
  /// In en, this message translates to:
  /// **'Case studies/Hypothesis make a \'Complete Student\', a confident and employable student.'**
  String get case_study_hypothesis;

  /// No description provided for @case_study_yourcontribution_in_shaping.
  ///
  /// In en, this message translates to:
  /// **'Your contribution in shaping the personality and future of the student will also enhance your own profile as an educator. The more you contribute the more enriched profile will be.'**
  String get case_study_yourcontribution_in_shaping;

  /// No description provided for @case_study_domestic__plateform.
  ///
  /// In en, this message translates to:
  /// **'Your contribution will be reflected on relevant'**
  String get case_study_domestic__plateform;

  /// No description provided for @case_study_domestic__plateform2.
  ///
  /// In en, this message translates to:
  /// **' Global and Domestic platforms'**
  String get case_study_domestic__plateform2;

  /// No description provided for @case_study_Contribute.
  ///
  /// In en, this message translates to:
  /// **'Contribute Case Study'**
  String get case_study_Contribute;

  /// No description provided for @my_Vault.
  ///
  /// In en, this message translates to:
  /// **'My Vault'**
  String get my_Vault;

  /// No description provided for @evaluate.
  ///
  /// In en, this message translates to:
  /// **'Evaluate'**
  String get evaluate;

  /// No description provided for @create_case_study_name.
  ///
  /// In en, this message translates to:
  /// **'Name of the Case study'**
  String get create_case_study_name;

  /// No description provided for @create_case_study_begin_date.
  ///
  /// In en, this message translates to:
  /// **'Begin Date'**
  String get create_case_study_begin_date;

  /// No description provided for @create_case_study_end_date.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get create_case_study_end_date;

  /// No description provided for @create_case_study_Subject.
  ///
  /// In en, this message translates to:
  /// **'Topic'**
  String get create_case_study_Subject;

  /// No description provided for @create_case_study_Sub_Subject.
  ///
  /// In en, this message translates to:
  /// **'Sub Topic'**
  String get create_case_study_Sub_Subject;

  /// No description provided for @create_case_study_Semester.
  ///
  /// In en, this message translates to:
  /// **'Semester'**
  String get create_case_study_Semester;

  /// No description provided for @create_case_study_Year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get create_case_study_Year;

  /// No description provided for @create_case_study_purpose.
  ///
  /// In en, this message translates to:
  /// **'Purpose/Objective'**
  String get create_case_study_purpose;

  /// No description provided for @create_case_study_overview.
  ///
  /// In en, this message translates to:
  /// **'Overview (in details)'**
  String get create_case_study_overview;

  /// No description provided for @create_case_study_desired.
  ///
  /// In en, this message translates to:
  /// **'Desired information/information sets'**
  String get create_case_study_desired;

  /// No description provided for @create_case_study_found_by_this_study.
  ///
  /// In en, this message translates to:
  /// **'What is to be studied/found by this study'**
  String get create_case_study_found_by_this_study;

  /// No description provided for @create_case_study_conditions.
  ///
  /// In en, this message translates to:
  /// **'Conditions (if any in conducting this study)'**
  String get create_case_study_conditions;

  /// No description provided for @create_case_study_contributor.
  ///
  /// In en, this message translates to:
  /// **'How will contributor rewarded or recognized'**
  String get create_case_study_contributor;

  /// No description provided for @create_case_study_rating.
  ///
  /// In en, this message translates to:
  /// **'Rating (populated on CRUX and social media) '**
  String get create_case_study_rating;

  /// No description provided for @create_case_study_certificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate '**
  String get create_case_study_certificate;

  /// No description provided for @create_case_study_citations.
  ///
  /// In en, this message translates to:
  /// **'Citation/s '**
  String get create_case_study_citations;

  /// No description provided for @create_case_study_redeemabla.
  ///
  /// In en, this message translates to:
  /// **'Redeemable CRUX credits to top studies (equally distributed) '**
  String get create_case_study_redeemabla;

  /// No description provided for @create_case_study_contributor_gain.
  ///
  /// In en, this message translates to:
  /// **'What will contributor gain '**
  String get create_case_study_contributor_gain;

  /// No description provided for @create_case_study_improvement.
  ///
  /// In en, this message translates to:
  /// **'personality Wise improvement'**
  String get create_case_study_improvement;

  /// No description provided for @create_case_study_hold_subject.
  ///
  /// In en, this message translates to:
  /// **'Hold on the subject/topic'**
  String get create_case_study_hold_subject;

  /// No description provided for @create_case_study_applications.
  ///
  /// In en, this message translates to:
  /// **'Application in Life/career'**
  String get create_case_study_applications;

  /// No description provided for @create_case_study_skill_wise.
  ///
  /// In en, this message translates to:
  /// **' Skill Wise (name of skill set learnt/developed)'**
  String get create_case_study_skill_wise;

  /// No description provided for @create_case_study_group_study.
  ///
  /// In en, this message translates to:
  /// **' Group study'**
  String get create_case_study_group_study;

  /// No description provided for @create_case_study_indivisual.
  ///
  /// In en, this message translates to:
  /// **' Individual Study'**
  String get create_case_study_indivisual;

  /// No description provided for @create_case_study_evalute_this_study.
  ///
  /// In en, this message translates to:
  /// **' I myself will evaluate this study'**
  String get create_case_study_evalute_this_study;

  /// No description provided for @create_case_study_expert_also.
  ///
  /// In en, this message translates to:
  /// **' Get it evaluated by other expert also (recommended)'**
  String get create_case_study_expert_also;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **' Submit'**
  String get submit;

  /// No description provided for @view_case_study_analyse_the_purpose.
  ///
  /// In en, this message translates to:
  /// **' Analyze the purpose of the study, what is your understanding about this study'**
  String get view_case_study_analyse_the_purpose;

  /// No description provided for @view_case_study_issue_or_the_problems.
  ///
  /// In en, this message translates to:
  /// **' what is/are the main issues or the problems'**
  String get view_case_study_issue_or_the_problems;

  /// No description provided for @view_case_study_reason_cause.
  ///
  /// In en, this message translates to:
  /// **' According to study what  are the reasons/cause '**
  String get view_case_study_reason_cause;

  /// No description provided for @view_case_study_study_in_detail.
  ///
  /// In en, this message translates to:
  /// **'what is your study (in detail)'**
  String get view_case_study_study_in_detail;

  /// No description provided for @view_case_study_study_information_pertaining.
  ///
  /// In en, this message translates to:
  /// **'Do you have more alternatives or information pertaining to this study (in detail)'**
  String get view_case_study_study_information_pertaining;

  /// No description provided for @view_case_study_study_advantages.
  ///
  /// In en, this message translates to:
  /// **' Advantages of the solutions suggested by you '**
  String get view_case_study_study_advantages;

  /// No description provided for @view_case_study_study_limitions.
  ///
  /// In en, this message translates to:
  /// **'Limitation of the solutions suggested by you'**
  String get view_case_study_study_limitions;

  /// No description provided for @view_case_study_study_most_suitable_solution.
  ///
  /// In en, this message translates to:
  /// **'According to study which is the most suitable solution'**
  String get view_case_study_study_most_suitable_solution;

  /// No description provided for @view_case_study_be_implemented.
  ///
  /// In en, this message translates to:
  /// **'who, how and when should it be implemented'**
  String get view_case_study_be_implemented;

  /// No description provided for @view_case_study_estimate_of_costs.
  ///
  /// In en, this message translates to:
  /// **'if appropriate include a rough estimate of costs (both financial and time )'**
  String get view_case_study_estimate_of_costs;

  /// No description provided for @view_case_study_refrences_are_cited.
  ///
  /// In en, this message translates to:
  /// **'Make sure all refrences are cited correctly'**
  String get view_case_study_refrences_are_cited;

  /// No description provided for @view_case_study_hypo_solution.
  ///
  /// In en, this message translates to:
  /// **'You Suggested solution'**
  String get view_case_study_hypo_solution;

  /// No description provided for @view_case_study_hypo_advantages.
  ///
  /// In en, this message translates to:
  /// **'Advantages of this study '**
  String get view_case_study_hypo_advantages;

  /// No description provided for @view_case_study_hypo_limitation.
  ///
  /// In en, this message translates to:
  /// **'Limitations of this study'**
  String get view_case_study_hypo_limitation;

  /// No description provided for @view_case_study_hypo_summary.
  ///
  /// In en, this message translates to:
  /// **'Summarize your study'**
  String get view_case_study_hypo_summary;

  /// No description provided for @view_case_study_refrences_attach_any_original.
  ///
  /// In en, this message translates to:
  /// **'Attach any original data that relates  to the study but which would have interrupted the flow  of the main body'**
  String get view_case_study_refrences_attach_any_original;

  /// No description provided for @get_it_evaluted.
  ///
  /// In en, this message translates to:
  /// **'Get it Evaluated'**
  String get get_it_evaluted;

  /// No description provided for @create_a_grouop.
  ///
  /// In en, this message translates to:
  /// **'Create a Group'**
  String get create_a_grouop;

  /// No description provided for @create_case_study_issues.
  ///
  /// In en, this message translates to:
  /// **'Issues/Problems (in short)'**
  String get create_case_study_issues;

  /// No description provided for @fund_requirement_pic12.
  ///
  /// In en, this message translates to:
  /// **'Fund Requirements'**
  String get fund_requirement_pic12;

  /// No description provided for @fund_requirement_pic12_devlop_prototype.
  ///
  /// In en, this message translates to:
  /// **'I have to develop a prototype for my Product/Service '**
  String get fund_requirement_pic12_devlop_prototype;

  /// No description provided for @fund_requirement_pic12_duration.
  ///
  /// In en, this message translates to:
  /// **'Duration of developing the Prototype'**
  String get fund_requirement_pic12_duration;

  /// No description provided for @fund_requirement_pic12_infra_and_space.
  ///
  /// In en, this message translates to:
  /// **'Considering rented infra and space'**
  String get fund_requirement_pic12_infra_and_space;

  /// No description provided for @fund_requirement_pic12_computer.
  ///
  /// In en, this message translates to:
  /// **'Computer/s'**
  String get fund_requirement_pic12_computer;

  /// No description provided for @fund_requirement_pic12_spec_money.
  ///
  /// In en, this message translates to:
  /// **'Specialized Machinery'**
  String get fund_requirement_pic12_spec_money;

  /// No description provided for @fund_requirement_pic12_office_rent.
  ///
  /// In en, this message translates to:
  /// **'Office Rent'**
  String get fund_requirement_pic12_office_rent;

  /// No description provided for @fund_requirement_pic12_salery.
  ///
  /// In en, this message translates to:
  /// **'Salary of team (Avg)'**
  String get fund_requirement_pic12_salery;

  /// No description provided for @fund_requirement_pic12_elect.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get fund_requirement_pic12_elect;

  /// No description provided for @fund_requirement_pic12_internet.
  ///
  /// In en, this message translates to:
  /// **'Internet'**
  String get fund_requirement_pic12_internet;

  /// No description provided for @fund_requirement_pic12_travel.
  ///
  /// In en, this message translates to:
  /// **'Travel'**
  String get fund_requirement_pic12_travel;

  /// No description provided for @fund_requirement_pic12_refreshment.
  ///
  /// In en, this message translates to:
  /// **'Refreshment'**
  String get fund_requirement_pic12_refreshment;

  /// No description provided for @fund_requirement_pic12_raw_material.
  ///
  /// In en, this message translates to:
  /// **'Raw Material (one time cost if any)'**
  String get fund_requirement_pic12_raw_material;

  /// No description provided for @fund_requirement_pic12_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount required for Marketing before scaling'**
  String get fund_requirement_pic12_total_amount;

  /// No description provided for @fund_requirement_pic11_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount required to develop the  prototype'**
  String get fund_requirement_pic11_total_amount;

  /// No description provided for @fund_requirement_pic12_contribution.
  ///
  /// In en, this message translates to:
  /// **'Contribution of Incubation Center'**
  String get fund_requirement_pic12_contribution;

  /// No description provided for @fund_requirement_pic12_self.
  ///
  /// In en, this message translates to:
  /// **'Self Contribution'**
  String get fund_requirement_pic12_self;

  /// No description provided for @fund_requirement_second_test_the_waters.
  ///
  /// In en, this message translates to:
  /// **'My Prototype is in place, I have to test the waters'**
  String get fund_requirement_second_test_the_waters;

  /// No description provided for @fund_requirement_second_dutation.
  ///
  /// In en, this message translates to:
  /// **'Duration of marketing in testing mode '**
  String get fund_requirement_second_dutation;

  /// No description provided for @fund_requirement_second_cost_of_devloping.
  ///
  /// In en, this message translates to:
  /// **'Cost of developing of the prototype '**
  String get fund_requirement_second_cost_of_devloping;

  /// No description provided for @fund_requirement_second_legel_entity.
  ///
  /// In en, this message translates to:
  /// **'Cost of Incorporation of legal entity '**
  String get fund_requirement_second_legel_entity;

  /// No description provided for @fund_requirement_second_gst_registration.
  ///
  /// In en, this message translates to:
  /// **'Cost of GST registration'**
  String get fund_requirement_second_gst_registration;

  /// No description provided for @fund_requirement_second_gem_regidtration.
  ///
  /// In en, this message translates to:
  /// **'Cost of GeM Registration'**
  String get fund_requirement_second_gem_regidtration;

  /// No description provided for @fund_requirement_second_bank.
  ///
  /// In en, this message translates to:
  /// **'Cost of Bank account opening'**
  String get fund_requirement_second_bank;

  /// No description provided for @fund_requirement_second_web.
  ///
  /// In en, this message translates to:
  /// **'Web Server'**
  String get fund_requirement_second_web;

  /// No description provided for @cost_of_devloping_total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get cost_of_devloping_total;

  /// No description provided for @cost_of_devloping_ratio.
  ///
  /// In en, this message translates to:
  /// **'Funding Ratio'**
  String get cost_of_devloping_ratio;

  /// No description provided for @cost_of_devloping_self.
  ///
  /// In en, this message translates to:
  /// **'self'**
  String get cost_of_devloping_self;

  /// No description provided for @cost_of_devloping_friends.
  ///
  /// In en, this message translates to:
  /// **'Friends and Family'**
  String get cost_of_devloping_friends;

  /// No description provided for @cost_of_devloping_loan.
  ///
  /// In en, this message translates to:
  /// **'Loan'**
  String get cost_of_devloping_loan;

  /// No description provided for @cost_of_devloping_seed.
  ///
  /// In en, this message translates to:
  /// **'Seed Fund'**
  String get cost_of_devloping_seed;

  /// No description provided for @cost_of_devloping_incubation.
  ///
  /// In en, this message translates to:
  /// **'Contribution of Incubation center'**
  String get cost_of_devloping_incubation;

  /// No description provided for @send_request_text1.
  ///
  /// In en, this message translates to:
  /// **'Heart felt congratulations for your efforts and creating a success story.'**
  String get send_request_text1;

  /// No description provided for @send_request_text2.
  ///
  /// In en, this message translates to:
  /// **'Now you need a detailed and customized Financial Analysis, you can request us for this comprehensive service which will include Detailed Financial Analysis and Full Financial Forecasting for informed and correct decisions.'**
  String get send_request_text2;

  /// No description provided for @bp10Atext1.
  ///
  /// In en, this message translates to:
  /// **'My Product/Service  is accepted in the market now I have to grow my customer base'**
  String get bp10Atext1;

  /// No description provided for @bp10Atext2.
  ///
  /// In en, this message translates to:
  /// **'Estimated time frame to become a self sustained profit center'**
  String get bp10Atext2;

  /// No description provided for @carrier_plan_strength.
  ///
  /// In en, this message translates to:
  /// **'People with ........ Personality types have following strengths... knowing yours strengths will boot your confidence and you can groom yourself into a complete person '**
  String get carrier_plan_strength;

  /// No description provided for @carrier_plan_strength_1.
  ///
  /// In en, this message translates to:
  /// **'How can i capitalize on my Strengths'**
  String get carrier_plan_strength_1;

  /// No description provided for @carrier_plan_weakness.
  ///
  /// In en, this message translates to:
  /// **'Most of the time we do not realize our weaknesses hence do not work on them to improve ourselves and achieve the best out of life. This is an opportunity to understand and  improve oneself.'**
  String get carrier_plan_weakness;

  /// No description provided for @carrier_plan_weakness_1.
  ///
  /// In en, this message translates to:
  /// **'How can i work upon my weaknesses'**
  String get carrier_plan_weakness_1;

  /// No description provided for @personality_p1_hello.
  ///
  /// In en, this message translates to:
  /// **'Hello (Name of the person)'**
  String get personality_p1_hello;

  /// No description provided for @personality_we_all_desire_.
  ///
  /// In en, this message translates to:
  /// **'We all desire to do something great something big for a comfortable, rich and peaceful life...  Lets explore and know more about you for optimum utilization of your hidden potential in right and productive manner'**
  String get personality_we_all_desire_;

  /// No description provided for @personaity_p1_select_one.
  ///
  /// In en, this message translates to:
  /// **'Select \'one\' most suitable or the best match out of following two options '**
  String get personaity_p1_select_one;

  /// No description provided for @personaity_p1_focus.
  ///
  /// In en, this message translates to:
  /// **'You focus on the outer world of people and things'**
  String get personaity_p1_focus;

  /// No description provided for @personaity_p1_receive.
  ///
  /// In en, this message translates to:
  /// **'You receive energy from interacting with people'**
  String get personaity_p1_receive;

  /// No description provided for @personaity_p1_energized.
  ///
  /// In en, this message translates to:
  /// **'You are energized by taking action; you are active'**
  String get personaity_p1_energized;

  /// No description provided for @personaity_p1_prefer.
  ///
  /// In en, this message translates to:
  /// **'You prefer communicating through writing (not much into talking)'**
  String get personaity_p1_prefer;

  /// No description provided for @personaity_p1_work_out.
  ///
  /// In en, this message translates to:
  /// **'You work out ideas by talking them through'**
  String get personaity_p1_work_out;

  /// No description provided for @personaity_p1_learn_bestt.
  ///
  /// In en, this message translates to:
  /// **'You learn best through sharing/doing/discussing'**
  String get personaity_p1_learn_bestt;

  /// No description provided for @personaity_p1_broad_intrest.
  ///
  /// In en, this message translates to:
  /// **'You have broad interests'**
  String get personaity_p1_broad_intrest;

  /// No description provided for @personaity_p1_internal_focus.
  ///
  /// In en, this message translates to:
  /// **'You focus on imaginations, ideas, memories, or emotion'**
  String get personaity_p1_internal_focus;

  /// No description provided for @personaity_p1_recieving_energy.
  ///
  /// In en, this message translates to:
  /// **'You receive energy from reflecting on “thoughts”'**
  String get personaity_p1_recieving_energy;

  /// No description provided for @personaity_p1_learn_best.
  ///
  /// In en, this message translates to:
  /// **'You learn best by having time alone to process your thoughts'**
  String get personaity_p1_learn_best;

  /// No description provided for @personaity_p1_prefer_working.
  ///
  /// In en, this message translates to:
  /// **'You prefer working in quiet environments'**
  String get personaity_p1_prefer_working;

  /// No description provided for @personaity_p1_able_to_focus.
  ///
  /// In en, this message translates to:
  /// **'You are able to focus on one project at length'**
  String get personaity_p1_able_to_focus;

  /// No description provided for @personaity_p1_known_to.
  ///
  /// In en, this message translates to:
  /// **'You are known to be reflective, quiet, private, and deep'**
  String get personaity_p1_known_to;

  /// No description provided for @personality_p2_good_going.
  ///
  /// In en, this message translates to:
  /// **'Good going focus a bit more... and select \'one\' which is close to you '**
  String get personality_p2_good_going;

  /// No description provided for @personality_p2_focus_on_the.
  ///
  /// In en, this message translates to:
  /// **'You focus on the “present”; what is happening now'**
  String get personality_p2_focus_on_the;

  /// No description provided for @personality_p2_prefer_real.
  ///
  /// In en, this message translates to:
  /// **'You prefer real/concrete/tangible information'**
  String get personality_p2_prefer_real;

  /// No description provided for @personality_p2_attentive_to_detail.
  ///
  /// In en, this message translates to:
  /// **'You are attentive to details, specifics, and facts'**
  String get personality_p2_attentive_to_detail;

  /// No description provided for @personality_p2_enjoy_task.
  ///
  /// In en, this message translates to:
  /// **'You enjoy tasks in an orderly, sequential format'**
  String get personality_p2_enjoy_task;

  /// No description provided for @personality_p2_like_having.
  ///
  /// In en, this message translates to:
  /// **'You like having “all five senses” engaged while working'**
  String get personality_p2_like_having;

  /// No description provided for @personality_p2_work_at_a.
  ///
  /// In en, this message translates to:
  /// **'You work at a steady pace and have stamina'**
  String get personality_p2_work_at_a;

  /// No description provided for @personality_p2_known_to_be.
  ///
  /// In en, this message translates to:
  /// **'You are known to be practical, steady, and orderly'**
  String get personality_p2_known_to_be;

  /// No description provided for @personality_p2_focus_on_future.
  ///
  /// In en, this message translates to:
  /// **'You focus on future; possibilities and potential'**
  String get personality_p2_focus_on_future;

  /// No description provided for @personality_p2_see_the_big.
  ///
  /// In en, this message translates to:
  /// **'You see the big picture, connections and observe patterns'**
  String get personality_p2_see_the_big;

  /// No description provided for @personality_p2_remember_specifies.
  ///
  /// In en, this message translates to:
  /// **'You remember specifics as a part of any pattern'**
  String get personality_p2_remember_specifies;

  /// No description provided for @personality_p2_imagination_and.
  ///
  /// In en, this message translates to:
  /// **'You are imaginative and creative'**
  String get personality_p2_imagination_and;

  /// No description provided for @personality_p2_bored_by_routine.
  ///
  /// In en, this message translates to:
  /// **'You get bored by routine and sequential tasks'**
  String get personality_p2_bored_by_routine;

  /// No description provided for @personality_p2_like_solving_problems.
  ///
  /// In en, this message translates to:
  /// **'You like solving problems and developing new skills'**
  String get personality_p2_like_solving_problems;

  /// No description provided for @personality_p2_have_burts_of.
  ///
  /// In en, this message translates to:
  /// **'You have bursts of energy rather than stamina'**
  String get personality_p2_have_burts_of;

  /// No description provided for @personality_p3_yes_u_are.
  ///
  /// In en, this message translates to:
  /// **'Yes you are quite close to know your Personality type select one out of these two also'**
  String get personality_p3_yes_u_are;

  /// No description provided for @personality_p3_examine_logical.
  ///
  /// In en, this message translates to:
  /// **'You examine logical consequences of decisions'**
  String get personality_p3_examine_logical;

  /// No description provided for @personality_p3_objectively.
  ///
  /// In en, this message translates to:
  /// **'You objectively weigh the pros and cons'**
  String get personality_p3_objectively;

  /// No description provided for @personality_p3_bace_decisions.
  ///
  /// In en, this message translates to:
  /// **'You base your decisions on impersonal/unbiased analysis and logic'**
  String get personality_p3_bace_decisions;

  /// No description provided for @personality_p3_problem_solving.
  ///
  /// In en, this message translates to:
  /// **'You get energized by problem solving and critiquing'**
  String get personality_p3_problem_solving;

  /// No description provided for @personality_p3_seek_standerd.
  ///
  /// In en, this message translates to:
  /// **'You look for standard principles to apply uniformly'**
  String get personality_p3_seek_standerd;

  /// No description provided for @personality_p3_look_for_cause.
  ///
  /// In en, this message translates to:
  /// **'You look for cause/effect relationships in data'**
  String get personality_p3_look_for_cause;

  /// No description provided for @personality_p3_consider_feelings.
  ///
  /// In en, this message translates to:
  /// **'You also consider feelings when presented as facts'**
  String get personality_p3_consider_feelings;

  /// No description provided for @personality_p3_on_subjective_values.
  ///
  /// In en, this message translates to:
  /// **'You base your decisions on subjective values'**
  String get personality_p3_on_subjective_values;

  /// No description provided for @personality_p3_oenjoy_appri.
  ///
  /// In en, this message translates to:
  /// **'You enjoy appreciating and supporting others'**
  String get personality_p3_oenjoy_appri;

  /// No description provided for @personality_p3_actively_look.
  ///
  /// In en, this message translates to:
  /// **'You actively look for qualities to praise in others'**
  String get personality_p3_actively_look;

  /// No description provided for @personality_p3_value_and_create.
  ///
  /// In en, this message translates to:
  /// **'You value and create harmonious environments'**
  String get personality_p3_value_and_create;

  /// No description provided for @personality_p3_honor_each.
  ///
  /// In en, this message translates to:
  /// **'You treat and honor every person as a unique individual'**
  String get personality_p3_honor_each;

  /// No description provided for @personality_p3_access_impacts.
  ///
  /// In en, this message translates to:
  /// **'You assess impacts of decisions on others'**
  String get personality_p3_access_impacts;

  /// No description provided for @personality_p3_work_best_in.
  ///
  /// In en, this message translates to:
  /// **'You work best in supportive, encouraging settings'**
  String get personality_p3_work_best_in;

  /// No description provided for @personality_p4_woo_ho.
  ///
  /// In en, this message translates to:
  /// **'Wooo hoo, last step to finally select ‘one’ and click next to know your personality type'**
  String get personality_p4_woo_ho;

  /// No description provided for @personality_p4_prefer_to_make.
  ///
  /// In en, this message translates to:
  /// **'You prefer to make decisions with information'**
  String get personality_p4_prefer_to_make;

  /// No description provided for @personality_p4_make_decision.
  ///
  /// In en, this message translates to:
  /// **'You make decisions as soon as possible (quick decision maker)'**
  String get personality_p4_make_decision;

  /// No description provided for @personality_p4_enjoy_having.
  ///
  /// In en, this message translates to:
  /// **'You enjoy having closure; like things settled'**
  String get personality_p4_enjoy_having;

  /// No description provided for @personality_p4_plan_and_organize.
  ///
  /// In en, this message translates to:
  /// **'You plan and organize your world'**
  String get personality_p4_plan_and_organize;

  /// No description provided for @personality_p4_like_roles.
  ///
  /// In en, this message translates to:
  /// **'You like roles and expectations to be clear'**
  String get personality_p4_like_roles;

  /// No description provided for @personality_p4_enjoy_getting.
  ///
  /// In en, this message translates to:
  /// **'You enjoy getting things done/being productive'**
  String get personality_p4_enjoy_getting;

  /// No description provided for @personality_p4_plan_ahead.
  ///
  /// In en, this message translates to:
  /// **'You always plan ahead to avoid last minute stresses'**
  String get personality_p4_plan_ahead;

  /// No description provided for @personality_p4_to_take_in.
  ///
  /// In en, this message translates to:
  /// **'You prefer to take every information and understand'**
  String get personality_p4_to_take_in;

  /// No description provided for @personality_p4_keep_things.
  ///
  /// In en, this message translates to:
  /// **'You keep things open-ended as long as possible'**
  String get personality_p4_keep_things;

  /// No description provided for @personality_p4_seek_to_expire.
  ///
  /// In en, this message translates to:
  /// **'You look for experiencing and living the life; not control it'**
  String get personality_p4_seek_to_expire;

  /// No description provided for @personality_p4_open_to_new.
  ///
  /// In en, this message translates to:
  /// **'You are open to new options and last-minute changes'**
  String get personality_p4_open_to_new;

  /// No description provided for @personality_p4_enjoy_starting.
  ///
  /// In en, this message translates to:
  /// **'You enjoy starting projects but often never finish'**
  String get personality_p4_enjoy_starting;

  /// No description provided for @personality_p4_able_to_adapt.
  ///
  /// In en, this message translates to:
  /// **'You are able to adapt; flexible and sometimes Energized by last minute pressures'**
  String get personality_p4_able_to_adapt;

  /// No description provided for @personality_career_planner.
  ///
  /// In en, this message translates to:
  /// **'Career Planner  is a scientifically designed method that lets you know about your hidden talents, weaknesses, best career paths etc.'**
  String get personality_career_planner;

  /// No description provided for @personality_career_planner2.
  ///
  /// In en, this message translates to:
  /// **'Career Planner is a scientifically designed tool that reveals your hidden talents, weaknesses, ideal paths, and so on. This comprehensive guide makes it easy for you to select the ideal profession.'**
  String get personality_career_planner2;

  /// No description provided for @personality_this_systematic.
  ///
  /// In en, this message translates to:
  /// **'This systematic tool helps you choose the best  career, Career Planner explains to your employer in detial about your skill sets, talents and even the smallest achievements and benefits to his organization.'**
  String get personality_this_systematic;

  /// No description provided for @personality_this_systematic2.
  ///
  /// In en, this message translates to:
  /// **'In addition, career planner outlines in depth to your employer your skill sets, abilities and all sorts of accomplishments.'**
  String get personality_this_systematic2;

  /// No description provided for @career_Planner.
  ///
  /// In en, this message translates to:
  /// **'Career Planner'**
  String get career_Planner;

  /// No description provided for @personality_strength.
  ///
  /// In en, this message translates to:
  /// **'Strengths'**
  String get personality_strength;

  /// No description provided for @personality_weakness.
  ///
  /// In en, this message translates to:
  /// **'Weaknesses'**
  String get personality_weakness;

  /// No description provided for @personality_car_path.
  ///
  /// In en, this message translates to:
  /// **'Career Path'**
  String get personality_car_path;

  /// No description provided for @personality_job_alerts.
  ///
  /// In en, this message translates to:
  /// **'Job alert'**
  String get personality_job_alerts;

  /// No description provided for @personality_most_suitable_car.
  ///
  /// In en, this message translates to:
  /// **'Most suitable Career options'**
  String get personality_most_suitable_car;

  /// No description provided for @personality_imoroving_m.
  ///
  /// In en, this message translates to:
  /// **'Am I improving'**
  String get personality_imoroving_m;

  /// No description provided for @personality_will_monitor.
  ///
  /// In en, this message translates to:
  /// **' CRUX will monitor your Progress and short Coming through your activities and inform you regularly'**
  String get personality_will_monitor;

  /// No description provided for @personality_guide_me.
  ///
  /// In en, this message translates to:
  /// **'Guide me'**
  String get personality_guide_me;

  /// No description provided for @translation.
  ///
  /// In en, this message translates to:
  /// **'Transition'**
  String get translation;

  /// No description provided for @my_personality.
  ///
  /// In en, this message translates to:
  /// **'My personality'**
  String get my_personality;

  /// No description provided for @findings.
  ///
  /// In en, this message translates to:
  /// **'Findings'**
  String get findings;

  /// No description provided for @discsussion.
  ///
  /// In en, this message translates to:
  /// **'Discussion'**
  String get discsussion;

  /// No description provided for @conclusion.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get conclusion;

  /// No description provided for @recommendation.
  ///
  /// In en, this message translates to:
  /// **'Recommendation'**
  String get recommendation;

  /// No description provided for @implementation.
  ///
  /// In en, this message translates to:
  /// **'Implementation'**
  String get implementation;

  /// No description provided for @refrences.
  ///
  /// In en, this message translates to:
  /// **'Refrences'**
  String get refrences;

  /// No description provided for @appendencies.
  ///
  /// In en, this message translates to:
  /// **'Appendencies(if any)'**
  String get appendencies;

  /// No description provided for @issues.
  ///
  /// In en, this message translates to:
  /// **'Issues/Problems'**
  String get issues;

  /// No description provided for @reasons.
  ///
  /// In en, this message translates to:
  /// **'Reasons/Cause'**
  String get reasons;

  /// No description provided for @alternative_info.
  ///
  /// In en, this message translates to:
  /// **'Alternatives/Information'**
  String get alternative_info;

  /// No description provided for @most_suitable.
  ///
  /// In en, this message translates to:
  /// **'Most Suitable Solution '**
  String get most_suitable;

  /// No description provided for @cost.
  ///
  /// In en, this message translates to:
  /// **'Cost '**
  String get cost;

  /// No description provided for @advantage.
  ///
  /// In en, this message translates to:
  /// **'Advantage '**
  String get advantage;

  /// No description provided for @limit.
  ///
  /// In en, this message translates to:
  /// **'Limitations '**
  String get limit;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;

  /// No description provided for @solut.
  ///
  /// In en, this message translates to:
  /// **'Solution'**
  String get solut;

  /// No description provided for @market_sales_strategy.
  ///
  /// In en, this message translates to:
  /// **'Marketing and Sales strategy'**
  String get market_sales_strategy;

  /// No description provided for @market_sales_lunch_plan.
  ///
  /// In en, this message translates to:
  /// **'What\'s my launch plan to attract new business?'**
  String get market_sales_lunch_plan;

  /// No description provided for @market_sales_growth.
  ///
  /// In en, this message translates to:
  /// **'What growth tactics will help my established business expand?'**
  String get market_sales_growth;

  /// No description provided for @market_sales_retention_strategies.
  ///
  /// In en, this message translates to:
  /// **'What retention strategies (customer loyality,referral program, etc.) will I utilize?'**
  String get market_sales_retention_strategies;

  /// No description provided for @market_sales_my_advertising.
  ///
  /// In en, this message translates to:
  /// **'What are my advertising and promotion channels?'**
  String get market_sales_my_advertising;

  /// No description provided for @market_sales_my_reqst_sales.
  ///
  /// In en, this message translates to:
  /// **'Strategy for repeat sales to the same customers?'**
  String get market_sales_my_reqst_sales;

  /// No description provided for @market_sales_aftersales.
  ///
  /// In en, this message translates to:
  /// **'Aftersales support strategy?'**
  String get market_sales_aftersales;

  /// No description provided for @market_sales_time_frame.
  ///
  /// In en, this message translates to:
  /// **'Time frame'**
  String get market_sales_time_frame;

  /// No description provided for @market_sales_sales_units.
  ///
  /// In en, this message translates to:
  /// **'Sales (Units)'**
  String get market_sales_sales_units;

  /// No description provided for @market_sales_customer_reach.
  ///
  /// In en, this message translates to:
  /// **'Customer Reach'**
  String get market_sales_customer_reach;

  /// No description provided for @market_sales_revenue.
  ///
  /// In en, this message translates to:
  /// **'Revenue (Per Unit)'**
  String get market_sales_revenue;

  /// No description provided for @market_sales_monitoring.
  ///
  /// In en, this message translates to:
  /// **'Monitoring'**
  String get market_sales_monitoring;

  /// No description provided for @market_sales_midway.
  ///
  /// In en, this message translates to:
  /// **'Midway strategy if targets are not looking achievable'**
  String get market_sales_midway;

  /// No description provided for @comptetive_analysis_text1.
  ///
  /// In en, this message translates to:
  /// **'Competitive analysis'**
  String get comptetive_analysis_text1;

  /// No description provided for @comptetive_analysis_text2.
  ///
  /// In en, this message translates to:
  /// **'Add target Locations and their more details by clicking + button, other details will be considered in some order as the names provided)'**
  String get comptetive_analysis_text2;

  /// No description provided for @comptetive_analysis_who_is.
  ///
  /// In en, this message translates to:
  /// **'Who is/are my main competitor/s?'**
  String get comptetive_analysis_who_is;

  /// No description provided for @comptetive_analysis_why_are.
  ///
  /// In en, this message translates to:
  /// **'Why are they main competitor?'**
  String get comptetive_analysis_why_are;

  /// No description provided for @comptetive_analysis_average.
  ///
  /// In en, this message translates to:
  /// **'Average pricing of their product/service?'**
  String get comptetive_analysis_average;

  /// No description provided for @comptetive_analysis_target.
  ///
  /// In en, this message translates to:
  /// **'Target market of the compititor/s?'**
  String get comptetive_analysis_target;

  /// No description provided for @comptetive_analysis_target_location.
  ///
  /// In en, this message translates to:
  /// **'Target locations of the compititor/s?'**
  String get comptetive_analysis_target_location;

  /// No description provided for @comptetive_analysis_target_daily.
  ///
  /// In en, this message translates to:
  /// **'Average daily sales of their product/service (In Units)'**
  String get comptetive_analysis_target_daily;

  /// No description provided for @comptetive_analysis_list_of.
  ///
  /// In en, this message translates to:
  /// **'List of method adopted for product/service Promotion?'**
  String get comptetive_analysis_list_of;

  /// No description provided for @comptetive_analysis_estimated.
  ///
  /// In en, this message translates to:
  /// **'Estimated Team size of the compititor/s'**
  String get comptetive_analysis_estimated;

  /// No description provided for @comptetive_analysis_duration.
  ///
  /// In en, this message translates to:
  /// **'Duration of operation of the competitor/s'**
  String get comptetive_analysis_duration;

  /// No description provided for @objective_goal_1.
  ///
  /// In en, this message translates to:
  /// **'Business Objectives and Goals'**
  String get objective_goal_1;

  /// No description provided for @objective_goal_what_is.
  ///
  /// In en, this message translates to:
  /// **'What is my specific Objective? (Profitability/Growth/Productivity of people/customer\'s service/Social community Service)'**
  String get objective_goal_what_is;

  /// No description provided for @objective_goal_how_are.
  ///
  /// In en, this message translates to:
  /// **'How are you going to achieve your objective based goals?'**
  String get objective_goal_how_are;

  /// No description provided for @objective_goal_is_this.
  ///
  /// In en, this message translates to:
  /// **'Is this goal reasonable/realistic? why?'**
  String get objective_goal_is_this;

  /// No description provided for @objective_goal_increase.
  ///
  /// In en, this message translates to:
  /// **'Increase Market Share'**
  String get objective_goal_increase;

  /// No description provided for @objective_goal_increase_com.
  ///
  /// In en, this message translates to:
  /// **'Increase community Outreach'**
  String get objective_goal_increase_com;

  /// No description provided for @objective_goal_grow.
  ///
  /// In en, this message translates to:
  /// **'Grow Valuation'**
  String get objective_goal_grow;

  /// No description provided for @objective_goal_increase_sales.
  ///
  /// In en, this message translates to:
  /// **'Increase Sales with New Products/Product features'**
  String get objective_goal_increase_sales;

  /// No description provided for @objective_goal_maintain.
  ///
  /// In en, this message translates to:
  /// **'Maintain or Decrease Debt'**
  String get objective_goal_maintain;

  /// No description provided for @objective_goal_focus_on.
  ///
  /// In en, this message translates to:
  /// **'Focus on skills of  Team  Members'**
  String get objective_goal_focus_on;

  /// No description provided for @objective_goal_team_building.
  ///
  /// In en, this message translates to:
  /// **'Team Building/Diversity Training Goals'**
  String get objective_goal_team_building;

  /// No description provided for @objective_goal_time_frame.
  ///
  /// In en, this message translates to:
  /// **'What is the time frame of the goal?'**
  String get objective_goal_time_frame;

  /// No description provided for @objective_goal_have.
  ///
  /// In en, this message translates to:
  /// **'I have sizable base now I want to expand'**
  String get objective_goal_have;

  /// No description provided for @time_line_1.
  ///
  /// In en, this message translates to:
  /// **'Time Line'**
  String get time_line_1;

  /// No description provided for @time_line_four_major.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 1st Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major;

  /// No description provided for @time_line_four_major_2.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 2nd Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major_2;

  /// No description provided for @time_line_four_major_3.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 3rd Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major_3;

  /// No description provided for @time_line_four_major_4.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 4th Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major_4;

  /// No description provided for @time_line_four_major_5.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 5th Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major_5;

  /// No description provided for @time_line_four_major_6.
  ///
  /// In en, this message translates to:
  /// **'Four major Milestones to be achieved in 6th Month (define each in new line by click plus button, maximum 5 words each line)'**
  String get time_line_four_major_6;

  /// No description provided for @the_entity_1.
  ///
  /// In en, this message translates to:
  /// **'The Entity'**
  String get the_entity_1;

  /// No description provided for @the_entity_name.
  ///
  /// In en, this message translates to:
  /// **'Name of the Idea/Entity'**
  String get the_entity_name;

  /// No description provided for @the_entity_legel_status.
  ///
  /// In en, this message translates to:
  /// **'Legal Status (Proprietorship/LLP/Pvt. Ltd, Partnership)'**
  String get the_entity_legel_status;

  /// No description provided for @the_entity_founding.
  ///
  /// In en, this message translates to:
  /// **'Founding Date'**
  String get the_entity_founding;

  /// No description provided for @the_entity_co.
  ///
  /// In en, this message translates to:
  /// **'Co-founder'**
  String get the_entity_co;

  /// No description provided for @the_entity_uniqueness.
  ///
  /// In en, this message translates to:
  /// **'Uniqueness of product/service in detail'**
  String get the_entity_uniqueness;

  /// No description provided for @the_entity_how_is.
  ///
  /// In en, this message translates to:
  /// **'How is product/service going to benefit your customers in detail'**
  String get the_entity_how_is;

  /// No description provided for @the_entity_how_are_you.
  ///
  /// In en, this message translates to:
  /// **'How are you going to connect with your customers emotionally?'**
  String get the_entity_how_are_you;

  /// No description provided for @the_entity_ensure_quality.
  ///
  /// In en, this message translates to:
  /// **'How are you going to ensure quality ?'**
  String get the_entity_ensure_quality;

  /// No description provided for @the_entity_plans_for.
  ///
  /// In en, this message translates to:
  /// **'Plans for research/adding new features/adding  product or service line'**
  String get the_entity_plans_for;

  /// No description provided for @production_dev_1.
  ///
  /// In en, this message translates to:
  /// **'Production and Development Process'**
  String get production_dev_1;

  /// No description provided for @production_dev_2.
  ///
  /// In en, this message translates to:
  /// **' write NA which is not applicable'**
  String get production_dev_2;

  /// No description provided for @production_dev_how_would.
  ///
  /// In en, this message translates to:
  /// **'How would you create/develop your product/service?'**
  String get production_dev_how_would;

  /// No description provided for @production_dev_how_would_2.
  ///
  /// In en, this message translates to:
  /// **'How would you source raw material or components?'**
  String get production_dev_how_would_2;

  /// No description provided for @production_dev_how_would_3.
  ///
  /// In en, this message translates to:
  /// **'How would you develop/manufacture/assemble(process)?'**
  String get production_dev_how_would_3;

  /// No description provided for @production_dev_how_would_4.
  ///
  /// In en, this message translates to:
  /// **'How would you manage supply chain logistics?'**
  String get production_dev_how_would_4;

  /// No description provided for @production_dev_what_is_the.
  ///
  /// In en, this message translates to:
  /// **'What is the team size including you'**
  String get production_dev_what_is_the;

  /// No description provided for @production_dev_designation.
  ///
  /// In en, this message translates to:
  /// **'Designation-Skill/Education- Role in detail'**
  String get production_dev_designation;

  /// No description provided for @serve_plan_how_many.
  ///
  /// In en, this message translates to:
  /// **'How many hours of the day you are planning to put for development and operaton of your idea/project?'**
  String get serve_plan_how_many;

  /// No description provided for @serve_plan_have_you.
  ///
  /// In en, this message translates to:
  /// **'Have you divided your time slots of the day/week for different activies?'**
  String get serve_plan_have_you;

  /// No description provided for @serve_plan_are_you.
  ///
  /// In en, this message translates to:
  /// **'Are you going to stick to that time slots or you can be flexible?'**
  String get serve_plan_are_you;

  /// No description provided for @st1.
  ///
  /// In en, this message translates to:
  /// **'Stick to that time slot'**
  String get st1;

  /// No description provided for @st2.
  ///
  /// In en, this message translates to:
  /// **'I\'ll be flexible'**
  String get st2;

  /// No description provided for @serve_plan_have_u_defined.
  ///
  /// In en, this message translates to:
  /// **'Have you defined work and processes and time needed from each of your team member?'**
  String get serve_plan_have_u_defined;

  /// No description provided for @prep.
  ///
  /// In en, this message translates to:
  /// **'Preparing the same'**
  String get prep;

  /// No description provided for @serve_plan_are_your_team.
  ///
  /// In en, this message translates to:
  /// **'Are your team members accountable for on time delivery of the tasks assigned to them?'**
  String get serve_plan_are_your_team;

  /// No description provided for @serve_plan_do_your_team.
  ///
  /// In en, this message translates to:
  /// **'Do your team members consider this venture as their own venture or working as employees only?(do they share the same passion as you do  for the venture?)'**
  String get serve_plan_do_your_team;

  /// No description provided for @vl1.
  ///
  /// In en, this message translates to:
  /// **'They will stick till the end'**
  String get vl1;

  /// No description provided for @vl2.
  ///
  /// In en, this message translates to:
  /// **'They might move on if the venture does not do well'**
  String get vl2;

  /// No description provided for @vl3.
  ///
  /// In en, this message translates to:
  /// **'They are free move on as soon they get better opportunity'**
  String get vl3;

  /// No description provided for @serve_plan_if_this.
  ///
  /// In en, this message translates to:
  /// **'if this venture fails or could not take off as expected, do you have a plan-B'**
  String get serve_plan_if_this;

  /// No description provided for @opl1.
  ///
  /// In en, this message translates to:
  /// **'I will rework on strategies and do anything required will not let it die easily'**
  String get opl1;

  /// No description provided for @opl2.
  ///
  /// In en, this message translates to:
  /// **'I will close it down and  will look for something new'**
  String get opl2;

  /// No description provided for @opl3.
  ///
  /// In en, this message translates to:
  /// **'Learn from the experience and would start something similar again'**
  String get opl3;

  /// No description provided for @offlin.
  ///
  /// In en, this message translates to:
  /// **'Offline Marketing Exp.'**
  String get offlin;

  /// No description provided for @cos.
  ///
  /// In en, this message translates to:
  /// **'Cost of testing water'**
  String get cos;

  /// No description provided for @serve_plan_more_funds.
  ///
  /// In en, this message translates to:
  /// **'Are you or your team simultaneously working on raising more funds?'**
  String get serve_plan_more_funds;

  /// No description provided for @serve_plan_devloping.
  ///
  /// In en, this message translates to:
  /// **'Developing Pitch  Deck'**
  String get serve_plan_devloping;

  /// No description provided for @serve_plan_in_talks.
  ///
  /// In en, this message translates to:
  /// **'In talks with Banks'**
  String get serve_plan_in_talks;

  /// No description provided for @serve_plan_approaching.
  ///
  /// In en, this message translates to:
  /// **'Approaching seed/angle investors'**
  String get serve_plan_approaching;

  /// No description provided for @serve_plan_looking_for.
  ///
  /// In en, this message translates to:
  /// **'looking for fund raising consultants'**
  String get serve_plan_looking_for;

  /// No description provided for @cost_of_testing_water_1.
  ///
  /// In en, this message translates to:
  /// **'Cost of testing water'**
  String get cost_of_testing_water_1;

  /// No description provided for @case_study_std_home_1.
  ///
  /// In en, this message translates to:
  /// **'Case studies/Hypothesis make you thorough, you become an authority of the subject/topic, more the case studies you attempt more you have career options.'**
  String get case_study_std_home_1;

  /// No description provided for @case_study_std_home_3.
  ///
  /// In en, this message translates to:
  /// **'An all-rounder, self-assured, and marketable student is one who actively participates in and contributes to case studies and hypotheses.'**
  String get case_study_std_home_3;

  /// No description provided for @case_study_std_home_2.
  ///
  /// In en, this message translates to:
  /// **'Following topics are based on the information and derivations of your inputs, you can modify your preference '**
  String get case_study_std_home_2;

  /// No description provided for @case_study_std_home_4.
  ///
  /// In en, this message translates to:
  /// **'Making a difference in a student\'s life and developing their potential will help boost your own reputation as an instructor. Your reputation on Crux will grow in direct proportion to the amount of content you contribute.'**
  String get case_study_std_home_4;

  /// No description provided for @case_study_std_home_5.
  ///
  /// In en, this message translates to:
  /// **'Furthermore, your contribution to case studies/Hypotheses will be highlighted on appropriate international and domestic platforms.'**
  String get case_study_std_home_5;

  /// No description provided for @case_study_std_outcomes.
  ///
  /// In en, this message translates to:
  /// **'Learning Outcomes of this Studies'**
  String get case_study_std_outcomes;

  /// No description provided for @case_study_std_personality.
  ///
  /// In en, this message translates to:
  /// **'Personality wise Improvements'**
  String get case_study_std_personality;

  /// No description provided for @case_study_std_hold_on.
  ///
  /// In en, this message translates to:
  /// **'Hold on the subject/topic'**
  String get case_study_std_hold_on;

  /// No description provided for @case_study_std_life_career.
  ///
  /// In en, this message translates to:
  /// **'Application in life/career'**
  String get case_study_std_life_career;

  /// No description provided for @case_study_std_skill_set.
  ///
  /// In en, this message translates to:
  /// **'Skill set developed/learnt'**
  String get case_study_std_skill_set;

  /// No description provided for @case_study_std_reward.
  ///
  /// In en, this message translates to:
  /// **'Reward and Recognitions'**
  String get case_study_std_reward;

  /// No description provided for @case_study_std_redemble.
  ///
  /// In en, this message translates to:
  /// **'Redeemable CRUX credits'**
  String get case_study_std_redemble;

  /// No description provided for @case_study_std_to_stop.
  ///
  /// In en, this message translates to:
  /// **' to top studies (equally distributed'**
  String get case_study_std_to_stop;

  /// No description provided for @not_for_me.
  ///
  /// In en, this message translates to:
  /// **'Not for me'**
  String get not_for_me;

  /// No description provided for @i_am_attempting.
  ///
  /// In en, this message translates to:
  /// **'I am attempting'**
  String get i_am_attempting;

  /// No description provided for @case_study_contribut_hypo.
  ///
  /// In en, this message translates to:
  /// **'Contribute Hypo'**
  String get case_study_contribut_hypo;

  /// No description provided for @congratulation.
  ///
  /// In en, this message translates to:
  /// **'Congratulations your Idea/Concept/Business has qualified for next round of assessment, Fill the following for better and realistic understanding.'**
  String get congratulation;

  /// No description provided for @why_do_you.
  ///
  /// In en, this message translates to:
  /// **'Why do you want to do it'**
  String get why_do_you;

  /// No description provided for @nothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing of this kind is available'**
  String get nothing;

  /// No description provided for @some_such.
  ///
  /// In en, this message translates to:
  /// **'Some such services/products launched but failed'**
  String get some_such;

  /// No description provided for @competitor.
  ///
  /// In en, this message translates to:
  /// **' Competitors are not being able to satisfy 100%'**
  String get competitor;

  /// No description provided for @consumer.
  ///
  /// In en, this message translates to:
  /// **'Consumer wants more and upgraded product/service'**
  String get consumer;

  /// No description provided for @being_catered.
  ///
  /// In en, this message translates to:
  /// **' It is being catered as small business I can make it Big'**
  String get being_catered;

  /// No description provided for @this_is_going.
  ///
  /// In en, this message translates to:
  /// **' This is going to give entirely new experience '**
  String get this_is_going;

  /// No description provided for @explain.
  ///
  /// In en, this message translates to:
  /// **'Explain your selected option'**
  String get explain;

  /// No description provided for @achieve.
  ///
  /// In en, this message translates to:
  /// **'What will you achieve'**
  String get achieve;

  /// No description provided for @big.
  ///
  /// In en, this message translates to:
  /// **'Big money and fame'**
  String get big;

  /// No description provided for @moderate.
  ///
  /// In en, this message translates to:
  /// **'Moderate money but big fame'**
  String get moderate;

  /// No description provided for @organization.
  ///
  /// In en, this message translates to:
  /// **'A big Oragnization'**
  String get organization;

  /// No description provided for @wanttodo.
  ///
  /// In en, this message translates to:
  /// **'I want to do this business'**
  String get wanttodo;

  /// No description provided for @wanttomake.
  ///
  /// In en, this message translates to:
  /// **'I want to make a difference'**
  String get wanttomake;

  /// No description provided for @satisfaction.
  ///
  /// In en, this message translates to:
  /// **'self satisfaction for a social cause'**
  String get satisfaction;

  /// No description provided for @who_use.
  ///
  /// In en, this message translates to:
  /// **'Who will use it'**
  String get who_use;

  /// No description provided for @large.
  ///
  /// In en, this message translates to:
  /// **'Large number of people with all age groups'**
  String get large;

  /// No description provided for @limited.
  ///
  /// In en, this message translates to:
  /// **'Limited number of people with sizable spending power'**
  String get limited;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Business/Industries/Corporates'**
  String get business;

  /// No description provided for @msme.
  ///
  /// In en, this message translates to:
  /// **'MSME'**
  String get msme;

  /// No description provided for @rural.
  ///
  /// In en, this message translates to:
  /// **'only rural people'**
  String get rural;

  /// No description provided for @kids.
  ///
  /// In en, this message translates to:
  /// **'Only kids'**
  String get kids;

  /// No description provided for @students.
  ///
  /// In en, this message translates to:
  /// **'Only students'**
  String get students;

  /// No description provided for @how_do_we.
  ///
  /// In en, this message translates to:
  /// **'How do we do it today when your product/service is not there'**
  String get how_do_we;

  /// No description provided for @people.
  ///
  /// In en, this message translates to:
  /// **'People do not have it,do not hove an idea how easy there life will be'**
  String get people;

  /// No description provided for @peoplehalf.
  ///
  /// In en, this message translates to:
  /// **'People are using half cooked/Incomplete service/product'**
  String get peoplehalf;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'The products/services available are under utilized'**
  String get products;

  /// No description provided for @peoplexper.
  ///
  /// In en, this message translates to:
  /// **'People will know a new experience/new way to use it'**
  String get peoplexper;

  /// No description provided for @what_happens.
  ///
  /// In en, this message translates to:
  /// **'What happens when such product/service doesn\'t come ?'**
  String get what_happens;

  /// No description provided for @bound.
  ///
  /// In en, this message translates to:
  /// **'It is bound to come sooner or later'**
  String get bound;

  /// No description provided for @timewaste.
  ///
  /// In en, this message translates to:
  /// **'A lot of time is wasted'**
  String get timewaste;

  /// No description provided for @moneywaste.
  ///
  /// In en, this message translates to:
  /// **'A lot of money is wasted'**
  String get moneywaste;

  /// No description provided for @resourcewaste.
  ///
  /// In en, this message translates to:
  /// **'A lot of resources are wasted'**
  String get resourcewaste;

  /// No description provided for @timemoney.
  ///
  /// In en, this message translates to:
  /// **'A lot of time and money is wasted'**
  String get timemoney;

  /// No description provided for @trm.
  ///
  /// In en, this message translates to:
  /// **'A lot of time, resources and money is wasted'**
  String get trm;

  /// No description provided for @what_is_it.
  ///
  /// In en, this message translates to:
  /// **'What is it?'**
  String get what_is_it;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'It is a website based service'**
  String get website;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'It is a Mobile App based service'**
  String get mobile;

  /// No description provided for @both.
  ///
  /// In en, this message translates to:
  /// **'It is both website and mobile app based service'**
  String get both;

  /// No description provided for @physical.
  ///
  /// In en, this message translates to:
  /// **'It is a physical product (Object/Device Product)'**
  String get physical;

  /// No description provided for @solution.
  ///
  /// In en, this message translates to:
  /// **'It is a solution'**
  String get solution;

  /// No description provided for @diagrams.
  ///
  /// In en, this message translates to:
  /// **'Have you Prepared diagrams of your selected option?'**
  String get diagrams;

  /// No description provided for @y.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get y;

  /// No description provided for @n.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get n;

  /// No description provided for @flowchart.
  ///
  /// In en, this message translates to:
  /// **'Have you prepared a flowchart of your selected option?'**
  String get flowchart;

  /// No description provided for @prototype.
  ///
  /// In en, this message translates to:
  /// **'Is it possible to develop a prototype of your service/product?'**
  String get prototype;

  /// No description provided for @only.
  ///
  /// In en, this message translates to:
  /// **'Only final product/service can be developed'**
  String get only;

  /// No description provided for @cost_of_prototype.
  ///
  /// In en, this message translates to:
  /// **'Estimated cost of developing the prototype?'**
  String get cost_of_prototype;

  /// No description provided for @u5.
  ///
  /// In en, this message translates to:
  /// **'Up to Rs.50,000/-'**
  String get u5;

  /// No description provided for @u10.
  ///
  /// In en, this message translates to:
  /// **'Up to Rs.1,00,000/-'**
  String get u10;

  /// No description provided for @u20.
  ///
  /// In en, this message translates to:
  /// **'Up to Rs.2,00,000/-'**
  String get u20;

  /// No description provided for @u50.
  ///
  /// In en, this message translates to:
  /// **'Up to Rs.5,00,000/-'**
  String get u50;

  /// No description provided for @above.
  ///
  /// In en, this message translates to:
  /// **'Above Rs.5,00,000/-'**
  String get above;

  /// No description provided for @time_of_pro.
  ///
  /// In en, this message translates to:
  /// **'Estimated time of developing the prototype?'**
  String get time_of_pro;

  /// No description provided for @ar30.
  ///
  /// In en, this message translates to:
  /// **'Around 30 Days'**
  String get ar30;

  /// No description provided for @ar45.
  ///
  /// In en, this message translates to:
  /// **'Around 45 Days'**
  String get ar45;

  /// No description provided for @ar60.
  ///
  /// In en, this message translates to:
  /// **'Around 60 Days'**
  String get ar60;

  /// No description provided for @ar90.
  ///
  /// In en, this message translates to:
  /// **'Around 90 Days'**
  String get ar90;

  /// No description provided for @over90.
  ///
  /// In en, this message translates to:
  /// **'Over 90 Days'**
  String get over90;

  /// No description provided for @funding.
  ///
  /// In en, this message translates to:
  /// **'Funding for prototype'**
  String get funding;

  /// No description provided for @own.
  ///
  /// In en, this message translates to:
  /// **'I can fund it of my own'**
  String get own;

  /// No description provided for @partially.
  ///
  /// In en, this message translates to:
  /// **'I can fund it partially'**
  String get partially;

  /// No description provided for @difficult.
  ///
  /// In en, this message translates to:
  /// **'It is difficult for me to arrange funds for the prototype'**
  String get difficult;

  /// No description provided for @haveyou.
  ///
  /// In en, this message translates to:
  /// **'Have you identified and discussed with the team/people who will help you in developing prototype who will help you in developing prototype'**
  String get haveyou;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'Target market location/s?'**
  String get target;

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local (near me)'**
  String get local;

  /// No description provided for @few.
  ///
  /// In en, this message translates to:
  /// **'Few cities'**
  String get few;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'States'**
  String get state;

  /// No description provided for @fewsta.
  ///
  /// In en, this message translates to:
  /// **'Few States'**
  String get fewsta;

  /// No description provided for @whole.
  ///
  /// In en, this message translates to:
  /// **'Whole country'**
  String get whole;

  /// No description provided for @fewcoun.
  ///
  /// In en, this message translates to:
  /// **'Few countries'**
  String get fewcoun;

  /// No description provided for @global.
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get global;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Average Income of the target market in Rupees per month'**
  String get average;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No income'**
  String get no;

  /// No description provided for @inc1.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.1,000 to Rs.5,000/-'**
  String get inc1;

  /// No description provided for @inc2.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.5,000 to Rs.10,000/-'**
  String get inc2;

  /// No description provided for @inc3.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.10,000 to Rs.25,000/-'**
  String get inc3;

  /// No description provided for @inc4.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.25,000 to Rs.50,000/-'**
  String get inc4;

  /// No description provided for @inc5.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.50,000 to Rs.1,00,000/-'**
  String get inc5;

  /// No description provided for @inc6.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.1,00,000 to Rs.2,50,000/-'**
  String get inc6;

  /// No description provided for @inc7.
  ///
  /// In en, this message translates to:
  /// **'Rs.2,50,000/- and above'**
  String get inc7;

  /// No description provided for @inc8.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs.5,000/- to Rs.25,000/-'**
  String get inc8;

  /// No description provided for @inc9.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs.5,000/- to Rs.50,000/-'**
  String get inc9;

  /// No description provided for @inc10.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs.5,000/- to Rs.1,00,000/-'**
  String get inc10;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age group of the target market'**
  String get age;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'0-1'**
  String get on;

  /// No description provided for @tw.
  ///
  /// In en, this message translates to:
  /// **'1-5'**
  String get tw;

  /// No description provided for @thr.
  ///
  /// In en, this message translates to:
  /// **'2-5'**
  String get thr;

  /// No description provided for @fou.
  ///
  /// In en, this message translates to:
  /// **'2-10'**
  String get fou;

  /// No description provided for @fv.
  ///
  /// In en, this message translates to:
  /// **'2-18'**
  String get fv;

  /// No description provided for @si.
  ///
  /// In en, this message translates to:
  /// **'5-10'**
  String get si;

  /// No description provided for @sev.
  ///
  /// In en, this message translates to:
  /// **'5-18'**
  String get sev;

  /// No description provided for @eigh.
  ///
  /// In en, this message translates to:
  /// **'10-18'**
  String get eigh;

  /// No description provided for @nne.
  ///
  /// In en, this message translates to:
  /// **'15-20'**
  String get nne;

  /// No description provided for @ten.
  ///
  /// In en, this message translates to:
  /// **'20-30'**
  String get ten;

  /// No description provided for @e1.
  ///
  /// In en, this message translates to:
  /// **'Updated curriculum knowledge'**
  String get e1;

  /// No description provided for @t2.
  ///
  /// In en, this message translates to:
  /// **'30-60'**
  String get t2;

  /// No description provided for @th3.
  ///
  /// In en, this message translates to:
  /// **'60-100'**
  String get th3;

  /// No description provided for @frt.
  ///
  /// In en, this message translates to:
  /// **'5-100'**
  String get frt;

  /// No description provided for @ft.
  ///
  /// In en, this message translates to:
  /// **'10-100'**
  String get ft;

  /// No description provided for @sxt.
  ///
  /// In en, this message translates to:
  /// **'15-100'**
  String get sxt;

  /// No description provided for @st.
  ///
  /// In en, this message translates to:
  /// **'18-100'**
  String get st;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender of the target market(All/Male/Female/Others)'**
  String get gender;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @m.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get m;

  /// No description provided for @f.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get f;

  /// No description provided for @oth.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get oth;

  /// No description provided for @edu.
  ///
  /// In en, this message translates to:
  /// **'Education level of target market'**
  String get edu;

  /// No description provided for @noreq.
  ///
  /// In en, this message translates to:
  /// **'No education required'**
  String get noreq;

  /// No description provided for @clss5.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 5th'**
  String get clss5;

  /// No description provided for @clss10.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 10th'**
  String get clss10;

  /// No description provided for @clss12.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 12th'**
  String get clss12;

  /// No description provided for @gradu.
  ///
  /// In en, this message translates to:
  /// **'Minimum  Graduate'**
  String get gradu;

  /// No description provided for @postgradu.
  ///
  /// In en, this message translates to:
  /// **'Minimum Post Graduate'**
  String get postgradu;

  /// No description provided for @phd.
  ///
  /// In en, this message translates to:
  /// **'Minimum PHD'**
  String get phd;

  /// No description provided for @geography.
  ///
  /// In en, this message translates to:
  /// **'Geographies'**
  String get geography;

  /// No description provided for @geo1.
  ///
  /// In en, this message translates to:
  /// **'Rural'**
  String get geo1;

  /// No description provided for @geo2.
  ///
  /// In en, this message translates to:
  /// **'Rural and Urban'**
  String get geo2;

  /// No description provided for @geo3.
  ///
  /// In en, this message translates to:
  /// **'Rural and Semi Urban'**
  String get geo3;

  /// No description provided for @geo4.
  ///
  /// In en, this message translates to:
  /// **'Semi urban'**
  String get geo4;

  /// No description provided for @geo5.
  ///
  /// In en, this message translates to:
  /// **'All of the above'**
  String get geo5;

  /// No description provided for @geo6.
  ///
  /// In en, this message translates to:
  /// **'Tire 1 cities'**
  String get geo6;

  /// No description provided for @geo7.
  ///
  /// In en, this message translates to:
  /// **'Tire 2 cities'**
  String get geo7;

  /// No description provided for @geo8.
  ///
  /// In en, this message translates to:
  /// **'Tire 3 cities'**
  String get geo8;

  /// No description provided for @common.
  ///
  /// In en, this message translates to:
  /// **'Common profession of the target market Teaching, politics, farmer etc'**
  String get common;

  /// No description provided for @hobby.
  ///
  /// In en, this message translates to:
  /// **'Hobbies/interests of the target market (travelling, movie, reading etc.'**
  String get hobby;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @team1.
  ///
  /// In en, this message translates to:
  /// **'We are a team of students'**
  String get team1;

  /// No description provided for @team2.
  ///
  /// In en, this message translates to:
  /// **'We are a team of professionals'**
  String get team2;

  /// No description provided for @team3.
  ///
  /// In en, this message translates to:
  /// **'We are a team of educators'**
  String get team3;

  /// No description provided for @team4.
  ///
  /// In en, this message translates to:
  /// **'We are a team of educators and students'**
  String get team4;

  /// No description provided for @team5.
  ///
  /// In en, this message translates to:
  /// **'I am an individual'**
  String get team5;

  /// No description provided for @teamsize.
  ///
  /// In en, this message translates to:
  /// **'Team Size'**
  String get teamsize;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @p1.
  ///
  /// In en, this message translates to:
  /// **'It has been observed that there is a need of a '**
  String get p1;

  /// No description provided for @dropdown1a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get dropdown1a;

  /// No description provided for @dropdown1b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get dropdown1b;

  /// No description provided for @dropdown1c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get dropdown1c;

  /// No description provided for @p2.
  ///
  /// In en, this message translates to:
  /// **'which can help people or set of a'**
  String get p2;

  /// No description provided for @p22.
  ///
  /// In en, this message translates to:
  /// **'people in'**
  String get p22;

  /// No description provided for @p3.
  ///
  /// In en, this message translates to:
  /// **'The Users/customers will save a lot of'**
  String get p3;

  /// No description provided for @dropdown2a.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get dropdown2a;

  /// No description provided for @dropdown2b.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get dropdown2b;

  /// No description provided for @dropdown2c.
  ///
  /// In en, this message translates to:
  /// **'Time and Money'**
  String get dropdown2c;

  /// No description provided for @dropdown2d.
  ///
  /// In en, this message translates to:
  /// **'Efforts'**
  String get dropdown2d;

  /// No description provided for @dropdown2e.
  ///
  /// In en, this message translates to:
  /// **'All three Time, Money & Efforts'**
  String get dropdown2e;

  /// No description provided for @p4.
  ///
  /// In en, this message translates to:
  /// **'with this innovation.'**
  String get p4;

  /// No description provided for @the.
  ///
  /// In en, this message translates to:
  /// **'The'**
  String get the;

  /// No description provided for @list3a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get list3a;

  /// No description provided for @list3b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get list3b;

  /// No description provided for @list3c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get list3c;

  /// No description provided for @iss.
  ///
  /// In en, this message translates to:
  /// **'is'**
  String get iss;

  /// No description provided for @list4a.
  ///
  /// In en, this message translates to:
  /// **'In Ideation Stage'**
  String get list4a;

  /// No description provided for @list4b.
  ///
  /// In en, this message translates to:
  /// **'Ready as a Prototype'**
  String get list4b;

  /// No description provided for @list4c.
  ///
  /// In en, this message translates to:
  /// **'Already being sold and used by the users/customers'**
  String get list4c;

  /// No description provided for @list4d.
  ///
  /// In en, this message translates to:
  /// **'In demand'**
  String get list4d;

  /// No description provided for @howwill.
  ///
  /// In en, this message translates to:
  /// **'How will your customers/users save Money/Time/Efforts? What they used to used do before your system/product/service?'**
  String get howwill;

  /// No description provided for @the2.
  ///
  /// In en, this message translates to:
  /// **'The'**
  String get the2;

  /// No description provided for @list5a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get list5a;

  /// No description provided for @list5b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get list5b;

  /// No description provided for @list5c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get list5c;

  /// No description provided for @iss2.
  ///
  /// In en, this message translates to:
  /// **'is'**
  String get iss2;

  /// No description provided for @list6a.
  ///
  /// In en, this message translates to:
  /// **'Subscription Based'**
  String get list6a;

  /// No description provided for @list6b.
  ///
  /// In en, this message translates to:
  /// **'Use and Pay based'**
  String get list6b;

  /// No description provided for @list6c.
  ///
  /// In en, this message translates to:
  /// **'Freemium based'**
  String get list6c;

  /// No description provided for @list6d.
  ///
  /// In en, this message translates to:
  /// **'Onetime purchase based'**
  String get list6d;

  /// No description provided for @list6e.
  ///
  /// In en, this message translates to:
  /// **'Per unit based'**
  String get list6e;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and is used as'**
  String get and;

  /// No description provided for @mainn.
  ///
  /// In en, this message translates to:
  /// **'Main customers/users for this'**
  String get mainn;

  /// No description provided for @list7a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get list7a;

  /// No description provided for @list7b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get list7b;

  /// No description provided for @list7c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get list7c;

  /// No description provided for @wholive.
  ///
  /// In en, this message translates to:
  /// **'are who live in'**
  String get wholive;

  /// No description provided for @list8a.
  ///
  /// In en, this message translates to:
  /// **'Rural areas'**
  String get list8a;

  /// No description provided for @list8b.
  ///
  /// In en, this message translates to:
  /// **'semi urban areas'**
  String get list8b;

  /// No description provided for @list8c.
  ///
  /// In en, this message translates to:
  /// **'urban areas'**
  String get list8c;

  /// No description provided for @list8cc.
  ///
  /// In en, this message translates to:
  /// **'All of the Above'**
  String get list8cc;

  /// No description provided for @andany.
  ///
  /// In en, this message translates to:
  /// **'and any'**
  String get andany;

  /// No description provided for @edulevel.
  ///
  /// In en, this message translates to:
  /// **'one who has education level of'**
  String get edulevel;

  /// No description provided for @list9aa.
  ///
  /// In en, this message translates to:
  /// **'No Education required'**
  String get list9aa;

  /// No description provided for @list9a.
  ///
  /// In en, this message translates to:
  /// **'Class 1 to 10th'**
  String get list9a;

  /// No description provided for @list9b.
  ///
  /// In en, this message translates to:
  /// **'Minimum 10th class'**
  String get list9b;

  /// No description provided for @list9c.
  ///
  /// In en, this message translates to:
  /// **'Minimum 12th class'**
  String get list9c;

  /// No description provided for @list9d.
  ///
  /// In en, this message translates to:
  /// **'Graduation'**
  String get list9d;

  /// No description provided for @list9e.
  ///
  /// In en, this message translates to:
  /// **'Post Graduation and above'**
  String get list9e;

  /// No description provided for @andis.
  ///
  /// In en, this message translates to:
  /// **'and is'**
  String get andis;

  /// No description provided for @list10a.
  ///
  /// In en, this message translates to:
  /// **'of any gender'**
  String get list10a;

  /// No description provided for @list10b.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get list10b;

  /// No description provided for @list10c.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get list10c;

  /// No description provided for @list10d.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get list10d;

  /// No description provided for @within.
  ///
  /// In en, this message translates to:
  /// **'with in the age'**
  String get within;

  /// No description provided for @grou.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get grou;

  /// No description provided for @extensive.
  ///
  /// In en, this message translates to:
  /// **'An extensive research has been conducted'**
  String get extensive;

  /// No description provided for @competitors.
  ///
  /// In en, this message translates to:
  /// **'to find out competitors with the similar kind of'**
  String get competitors;

  /// No description provided for @list11a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get list11a;

  /// No description provided for @list11b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get list11b;

  /// No description provided for @list11c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get list11c;

  /// No description provided for @andthere.
  ///
  /// In en, this message translates to:
  /// **'and there'**
  String get andthere;

  /// No description provided for @list12a.
  ///
  /// In en, this message translates to:
  /// **'Is no such competitor as of now'**
  String get list12a;

  /// No description provided for @list12b.
  ///
  /// In en, this message translates to:
  /// **'are few but not serious one'**
  String get list12b;

  /// No description provided for @list12c.
  ///
  /// In en, this message translates to:
  /// **'are many but our offering in unique'**
  String get list12c;

  /// No description provided for @list12d.
  ///
  /// In en, this message translates to:
  /// **'Is close competition but we will have an edge'**
  String get list12d;

  /// No description provided for @maincompe.
  ///
  /// In en, this message translates to:
  /// **'Main Competitors are'**
  String get maincompe;

  /// No description provided for @ourrr.
  ///
  /// In en, this message translates to:
  /// **'Our'**
  String get ourrr;

  /// No description provided for @list13a.
  ///
  /// In en, this message translates to:
  /// **'system'**
  String get list13a;

  /// No description provided for @list13b.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get list13b;

  /// No description provided for @list13c.
  ///
  /// In en, this message translates to:
  /// **'service'**
  String get list13c;

  /// No description provided for @differentt.
  ///
  /// In en, this message translates to:
  /// **'is different and unique because'**
  String get differentt;

  /// No description provided for @providing.
  ///
  /// In en, this message translates to:
  /// **'We are providing'**
  String get providing;

  /// No description provided for @list14a.
  ///
  /// In en, this message translates to:
  /// **'a mobile app'**
  String get list14a;

  /// No description provided for @list14b.
  ///
  /// In en, this message translates to:
  /// **'a website'**
  String get list14b;

  /// No description provided for @list14c.
  ///
  /// In en, this message translates to:
  /// **'Both Mobile app and website'**
  String get list14c;

  /// No description provided for @list14d.
  ///
  /// In en, this message translates to:
  /// **'a Device'**
  String get list14d;

  /// No description provided for @list14e.
  ///
  /// In en, this message translates to:
  /// **'a set of devices'**
  String get list14e;

  /// No description provided for @list14f.
  ///
  /// In en, this message translates to:
  /// **'a Machine'**
  String get list14f;

  /// No description provided for @list14g.
  ///
  /// In en, this message translates to:
  /// **'a Product'**
  String get list14g;

  /// No description provided for @describe.
  ///
  /// In en, this message translates to:
  /// **'which will (Describe in detail how will it work'**
  String get describe;

  /// No description provided for @describe2.
  ///
  /// In en, this message translates to:
  /// **'and how will it help solve a particular problem)'**
  String get describe2;

  /// No description provided for @na.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get na;

  /// No description provided for @loca.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get loca;

  /// No description provided for @cont.
  ///
  /// In en, this message translates to:
  /// **'Contact Info'**
  String get cont;

  /// No description provided for @foll.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get foll;

  /// No description provided for @conn.
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get conn;

  /// No description provided for @mutuall.
  ///
  /// In en, this message translates to:
  /// **'Mutual Connections'**
  String get mutuall;

  /// No description provided for @desig.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get desig;

  /// No description provided for @uni.
  ///
  /// In en, this message translates to:
  /// **'University/Institute'**
  String get uni;

  /// No description provided for @sub.
  ///
  /// In en, this message translates to:
  /// **'Subject (major)'**
  String get sub;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Course (if Student)'**
  String get course;

  /// No description provided for @co1.
  ///
  /// In en, this message translates to:
  /// **'Co-creation'**
  String get co1;

  /// No description provided for @nameven.
  ///
  /// In en, this message translates to:
  /// **'Name of the venture'**
  String get nameven;

  /// No description provided for @webven.
  ///
  /// In en, this message translates to:
  /// **'Website of the venture'**
  String get webven;

  /// No description provided for @ski.
  ///
  /// In en, this message translates to:
  /// **'Skills contributed'**
  String get ski;

  /// No description provided for @recog.
  ///
  /// In en, this message translates to:
  /// **'Recognition'**
  String get recog;

  /// No description provided for @casestudy.
  ///
  /// In en, this message translates to:
  /// **'Case Studies'**
  String get casestudy;

  /// No description provided for @titl.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get titl;

  /// No description provided for @pur.
  ///
  /// In en, this message translates to:
  /// **'Purpose/Objective'**
  String get pur;

  /// No description provided for @overv.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overv;

  /// No description provided for @skii1.
  ///
  /// In en, this message translates to:
  /// **'Skill developed/learnt'**
  String get skii1;

  /// No description provided for @skii2.
  ///
  /// In en, this message translates to:
  /// **'Skill developed/learnt'**
  String get skii2;

  /// No description provided for @skii3.
  ///
  /// In en, this message translates to:
  /// **'Skill developed/learnt'**
  String get skii3;

  /// No description provided for @t2g.
  ///
  /// In en, this message translates to:
  /// **'Personality wise improvement'**
  String get t2g;

  /// No description provided for @t2h.
  ///
  /// In en, this message translates to:
  /// **'Hold on the Subject/topic'**
  String get t2h;

  /// No description provided for @t2i.
  ///
  /// In en, this message translates to:
  /// **'Application in Life/career'**
  String get t2i;

  /// No description provided for @threesamelista.
  ///
  /// In en, this message translates to:
  /// **'Yes to some extent'**
  String get threesamelista;

  /// No description provided for @threesamelistb.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get threesamelistb;

  /// No description provided for @threesamelistc.
  ///
  /// In en, this message translates to:
  /// **'Significant'**
  String get threesamelistc;

  /// No description provided for @casestudyeva.
  ///
  /// In en, this message translates to:
  /// **'Case studies evaluated'**
  String get casestudyeva;

  /// No description provided for @t3a.
  ///
  /// In en, this message translates to:
  /// **'Name/Title'**
  String get t3a;

  /// No description provided for @t3b.
  ///
  /// In en, this message translates to:
  /// **'Purpose'**
  String get t3b;

  /// No description provided for @t3c.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get t3c;

  /// No description provided for @t3d.
  ///
  /// In en, this message translates to:
  /// **'Date of evaluation'**
  String get t3d;

  /// No description provided for @t3e.
  ///
  /// In en, this message translates to:
  /// **'Unique ID'**
  String get t3e;

  /// No description provided for @businessidea.
  ///
  /// In en, this message translates to:
  /// **'Business Idea/s contributed'**
  String get businessidea;

  /// No description provided for @t4a.
  ///
  /// In en, this message translates to:
  /// **'Name/Title'**
  String get t4a;

  /// No description provided for @t4b.
  ///
  /// In en, this message translates to:
  /// **'Industry'**
  String get t4b;

  /// No description provided for @t4c.
  ///
  /// In en, this message translates to:
  /// **'Date of contribution'**
  String get t4c;

  /// No description provided for @t4d.
  ///
  /// In en, this message translates to:
  /// **'Unique ID'**
  String get t4d;

  /// No description provided for @businessidea2.
  ///
  /// In en, this message translates to:
  /// **'Business Idea/s evaluated'**
  String get businessidea2;

  /// No description provided for @t5a.
  ///
  /// In en, this message translates to:
  /// **'Name/Title'**
  String get t5a;

  /// No description provided for @t5b.
  ///
  /// In en, this message translates to:
  /// **'Industry'**
  String get t5b;

  /// No description provided for @t5c.
  ///
  /// In en, this message translates to:
  /// **'Date of evaluation'**
  String get t5c;

  /// No description provided for @t5d.
  ///
  /// In en, this message translates to:
  /// **'Unique ID'**
  String get t5d;

  /// No description provided for @mentor.
  ///
  /// In en, this message translates to:
  /// **'Mentorship'**
  String get mentor;

  /// No description provided for @exprncd1.
  ///
  /// In en, this message translates to:
  /// **'I am an experienced'**
  String get exprncd1;

  /// No description provided for @exprncd2.
  ///
  /// In en, this message translates to:
  /// **'I Have not mentored yet but have diversified experience which will be useful for the ventures.'**
  String get exprncd2;

  /// No description provided for @men1.
  ///
  /// In en, this message translates to:
  /// **'Name of the venture'**
  String get men1;

  /// No description provided for @men2.
  ///
  /// In en, this message translates to:
  /// **'Website of the venture'**
  String get men2;

  /// No description provided for @men3.
  ///
  /// In en, this message translates to:
  /// **'Title of Mentorship and Training'**
  String get men3;

  /// No description provided for @men4.
  ///
  /// In en, this message translates to:
  /// **'Outcomes'**
  String get men4;

  /// No description provided for @interested.
  ///
  /// In en, this message translates to:
  /// **'Interested in investment'**
  String get interested;

  /// No description provided for @focus.
  ///
  /// In en, this message translates to:
  /// **'Focus Industry'**
  String get focus;

  /// No description provided for @f1.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get f1;

  /// No description provided for @f2.
  ///
  /// In en, this message translates to:
  /// **'Clean Tech'**
  String get f2;

  /// No description provided for @f3.
  ///
  /// In en, this message translates to:
  /// **'Healthcare/Bio Tech'**
  String get f3;

  /// No description provided for @f4.
  ///
  /// In en, this message translates to:
  /// **'Software as Service'**
  String get f4;

  /// No description provided for @f5.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get f5;

  /// No description provided for @f6.
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get f6;

  /// No description provided for @f7.
  ///
  /// In en, this message translates to:
  /// **'Customer Goods and Services'**
  String get f7;

  /// No description provided for @f8.
  ///
  /// In en, this message translates to:
  /// **'Fintech'**
  String get f8;

  /// No description provided for @f9.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get f9;

  /// No description provided for @invest.
  ///
  /// In en, this message translates to:
  /// **'Size of Investment'**
  String get invest;

  /// No description provided for @intrs1.
  ///
  /// In en, this message translates to:
  /// **'Angel Investor 50,000/- to 2,00,000/-'**
  String get intrs1;

  /// No description provided for @intrs2.
  ///
  /// In en, this message translates to:
  /// **'Seed Investor 1,00,000/- to 25,00,000/-'**
  String get intrs2;

  /// No description provided for @intrs3.
  ///
  /// In en, this message translates to:
  /// **'Venture Capitalist 25,00,000/- to 2,00,00,000/-'**
  String get intrs3;

  /// No description provided for @intrs4.
  ///
  /// In en, this message translates to:
  /// **'Corporate Investor 2,00,00,000/-'**
  String get intrs4;

  /// No description provided for @intrs5.
  ///
  /// In en, this message translates to:
  /// **'Lender'**
  String get intrs5;

  /// No description provided for @offe.
  ///
  /// In en, this message translates to:
  /// **'Offering'**
  String get offe;

  /// No description provided for @invest1.
  ///
  /// In en, this message translates to:
  /// **'Only investment'**
  String get invest1;

  /// No description provided for @invest2.
  ///
  /// In en, this message translates to:
  /// **'Investment with mentoring'**
  String get invest2;

  /// No description provided for @abouttt.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get abouttt;

  /// No description provided for @exp.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get exp;

  /// No description provided for @exp1.
  ///
  /// In en, this message translates to:
  /// **'Job Title'**
  String get exp1;

  /// No description provided for @exp2.
  ///
  /// In en, this message translates to:
  /// **'Name of the Organization'**
  String get exp2;

  /// No description provided for @exp3.
  ///
  /// In en, this message translates to:
  /// **'Your Role'**
  String get exp3;

  /// No description provided for @exp4.
  ///
  /// In en, this message translates to:
  /// **'Significant Achievements'**
  String get exp4;

  /// No description provided for @educat.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educat;

  /// No description provided for @ed1.
  ///
  /// In en, this message translates to:
  /// **'Class/Degree/Certificate/Diploma'**
  String get ed1;

  /// No description provided for @ed2.
  ///
  /// In en, this message translates to:
  /// **'Name of the Institute/Board/ University'**
  String get ed2;

  /// No description provided for @ed3.
  ///
  /// In en, this message translates to:
  /// **'Major Subject-1'**
  String get ed3;

  /// No description provided for @ed4.
  ///
  /// In en, this message translates to:
  /// **'Major Subject-2'**
  String get ed4;

  /// No description provided for @ed5.
  ///
  /// In en, this message translates to:
  /// **'Significant Achievements/percentage'**
  String get ed5;

  /// No description provided for @profskill.
  ///
  /// In en, this message translates to:
  /// **'Professional skills'**
  String get profskill;

  /// No description provided for @marketing.
  ///
  /// In en, this message translates to:
  /// **'Marketing Skills'**
  String get marketing;

  /// No description provided for @m1.
  ///
  /// In en, this message translates to:
  /// **'Data analysis'**
  String get m1;

  /// No description provided for @m2.
  ///
  /// In en, this message translates to:
  /// **'Web analytics'**
  String get m2;

  /// No description provided for @m3.
  ///
  /// In en, this message translates to:
  /// **'SEO/SEM'**
  String get m3;

  /// No description provided for @m4.
  ///
  /// In en, this message translates to:
  /// **'HTML & CSS'**
  String get m4;

  /// No description provided for @m5.
  ///
  /// In en, this message translates to:
  /// **'Wordpress'**
  String get m5;

  /// No description provided for @m6.
  ///
  /// In en, this message translates to:
  /// **'Email marketing'**
  String get m6;

  /// No description provided for @m7.
  ///
  /// In en, this message translates to:
  /// **'Web scraping'**
  String get m7;

  /// No description provided for @m8.
  ///
  /// In en, this message translates to:
  /// **'CRO and A/B Testing'**
  String get m8;

  /// No description provided for @m9.
  ///
  /// In en, this message translates to:
  /// **'Data visualization & pattern-finding through critical thinking'**
  String get m9;

  /// No description provided for @m10.
  ///
  /// In en, this message translates to:
  /// **'Search Engine and Keyword Optimization'**
  String get m10;

  /// No description provided for @m11.
  ///
  /// In en, this message translates to:
  /// **'Project/campaign management'**
  String get m11;

  /// No description provided for @m12.
  ///
  /// In en, this message translates to:
  /// **'Social media and mobile marketing'**
  String get m12;

  /// No description provided for @m13.
  ///
  /// In en, this message translates to:
  /// **'Paid social media advertisements'**
  String get m13;

  /// No description provided for @m14.
  ///
  /// In en, this message translates to:
  /// **'B2B Marketing'**
  String get m14;

  /// No description provided for @m15.
  ///
  /// In en, this message translates to:
  /// **'The 4 P-s of Marketing'**
  String get m15;

  /// No description provided for @m16.
  ///
  /// In en, this message translates to:
  /// **'Consumer Behavior Drivers'**
  String get m16;

  /// No description provided for @m17.
  ///
  /// In en, this message translates to:
  /// **'Brand management'**
  String get m17;

  /// No description provided for @m18.
  ///
  /// In en, this message translates to:
  /// **'Creativity'**
  String get m18;

  /// No description provided for @m19.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get m19;

  /// No description provided for @m20.
  ///
  /// In en, this message translates to:
  /// **'Storytelling'**
  String get m20;

  /// No description provided for @m21.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get m21;

  /// No description provided for @m22.
  ///
  /// In en, this message translates to:
  /// **'CMS Tools'**
  String get m22;

  /// No description provided for @management.
  ///
  /// In en, this message translates to:
  /// **'Management Skills'**
  String get management;

  /// No description provided for @mn1.
  ///
  /// In en, this message translates to:
  /// **'Six Sigma techniques'**
  String get mn1;

  /// No description provided for @mn2.
  ///
  /// In en, this message translates to:
  /// **'The McKinsey 7s Framework'**
  String get mn2;

  /// No description provided for @mn3.
  ///
  /// In en, this message translates to:
  /// **'Porter’s Five Forces'**
  String get mn3;

  /// No description provided for @mn4.
  ///
  /// In en, this message translates to:
  /// **'PESTEL'**
  String get mn4;

  /// No description provided for @mn5.
  ///
  /// In en, this message translates to:
  /// **'Emotional Intelligence'**
  String get mn5;

  /// No description provided for @mn6.
  ///
  /// In en, this message translates to:
  /// **'Dealing with work-related stress'**
  String get mn6;

  /// No description provided for @mn7.
  ///
  /// In en, this message translates to:
  /// **'Motivation'**
  String get mn7;

  /// No description provided for @mn8.
  ///
  /// In en, this message translates to:
  /// **'Task delegation'**
  String get mn8;

  /// No description provided for @mn9.
  ///
  /// In en, this message translates to:
  /// **'Technological savviness'**
  String get mn9;

  /// No description provided for @mn10.
  ///
  /// In en, this message translates to:
  /// **'People management'**
  String get mn10;

  /// No description provided for @mn11.
  ///
  /// In en, this message translates to:
  /// **'Business Development'**
  String get mn11;

  /// No description provided for @mn12.
  ///
  /// In en, this message translates to:
  /// **'Strategic Management'**
  String get mn12;

  /// No description provided for @mn13.
  ///
  /// In en, this message translates to:
  /// **'Negotiation'**
  String get mn13;

  /// No description provided for @mn14.
  ///
  /// In en, this message translates to:
  /// **'Planning'**
  String get mn14;

  /// No description provided for @mn15.
  ///
  /// In en, this message translates to:
  /// **'Proposal writing'**
  String get mn15;

  /// No description provided for @mn16.
  ///
  /// In en, this message translates to:
  /// **'Problem-solving'**
  String get mn16;

  /// No description provided for @mn17.
  ///
  /// In en, this message translates to:
  /// **'Innovation'**
  String get mn17;

  /// No description provided for @mn18.
  ///
  /// In en, this message translates to:
  /// **'Charisma'**
  String get mn18;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Sales Skills'**
  String get sales;

  /// No description provided for @s1.
  ///
  /// In en, this message translates to:
  /// **'Customer Relationship Management (CRM)'**
  String get s1;

  /// No description provided for @s2.
  ///
  /// In en, this message translates to:
  /// **'Cold-calling'**
  String get s2;

  /// No description provided for @s3.
  ///
  /// In en, this message translates to:
  /// **'Negotiation'**
  String get s3;

  /// No description provided for @s4.
  ///
  /// In en, this message translates to:
  /// **'Public speaking'**
  String get s4;

  /// No description provided for @s5.
  ///
  /// In en, this message translates to:
  /// **'Closing'**
  String get s5;

  /// No description provided for @s6.
  ///
  /// In en, this message translates to:
  /// **'Lead generation'**
  String get s6;

  /// No description provided for @s7.
  ///
  /// In en, this message translates to:
  /// **'Buyer-Responsive selling'**
  String get s7;

  /// No description provided for @s8.
  ///
  /// In en, this message translates to:
  /// **'Buyer engagement'**
  String get s8;

  /// No description provided for @s9.
  ///
  /// In en, this message translates to:
  /// **'Product knowledge'**
  String get s9;

  /// No description provided for @s10.
  ///
  /// In en, this message translates to:
  /// **'Persuasion'**
  String get s10;

  /// No description provided for @s11.
  ///
  /// In en, this message translates to:
  /// **'Effective communication and sociability'**
  String get s11;

  /// No description provided for @s12.
  ///
  /// In en, this message translates to:
  /// **'Social media/digital communication'**
  String get s12;

  /// No description provided for @design.
  ///
  /// In en, this message translates to:
  /// **'Design Skills'**
  String get design;

  /// No description provided for @d1.
  ///
  /// In en, this message translates to:
  /// **'Adobe Creative Suite: Illustrator, InDesign, Photoshop'**
  String get d1;

  /// No description provided for @d2.
  ///
  /// In en, this message translates to:
  /// **'Dreamweaver'**
  String get d2;

  /// No description provided for @d3.
  ///
  /// In en, this message translates to:
  /// **'Infographics'**
  String get d3;

  /// No description provided for @d4.
  ///
  /// In en, this message translates to:
  /// **'HTML & CSS'**
  String get d4;

  /// No description provided for @d5.
  ///
  /// In en, this message translates to:
  /// **'Photo editing '**
  String get d5;

  /// No description provided for @d6.
  ///
  /// In en, this message translates to:
  /// **'Typography: spacing, line height, layout, choosing fonts'**
  String get d6;

  /// No description provided for @d7.
  ///
  /// In en, this message translates to:
  /// **'Storyboarding'**
  String get d7;

  /// No description provided for @d8.
  ///
  /// In en, this message translates to:
  /// **'Targeting and marketing through visual communications'**
  String get d8;

  /// No description provided for @d9.
  ///
  /// In en, this message translates to:
  /// **'Logo creation'**
  String get d9;

  /// No description provided for @d10.
  ///
  /// In en, this message translates to:
  /// **'Digital printing'**
  String get d10;

  /// No description provided for @d11.
  ///
  /// In en, this message translates to:
  /// **'Integration of visual communication in social media platforms'**
  String get d11;

  /// No description provided for @d12.
  ///
  /// In en, this message translates to:
  /// **'Interactive media design'**
  String get d12;

  /// No description provided for @d13.
  ///
  /// In en, this message translates to:
  /// **'Color sense & theory'**
  String get d13;

  /// No description provided for @d14.
  ///
  /// In en, this message translates to:
  /// **'Ad design'**
  String get d14;

  /// No description provided for @basic.
  ///
  /// In en, this message translates to:
  /// **'Basic Technical Skills'**
  String get basic;

  /// No description provided for @bts1.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Office Pack: Word, Excel, Access, Publisher, Outlook, Powerpoint'**
  String get bts1;

  /// No description provided for @bts2.
  ///
  /// In en, this message translates to:
  /// **'Filing and paper management'**
  String get bts2;

  /// No description provided for @bts3.
  ///
  /// In en, this message translates to:
  /// **'Data entry'**
  String get bts3;

  /// No description provided for @bts4.
  ///
  /// In en, this message translates to:
  /// **'Bookkeeping through Excel or TurboTax'**
  String get bts4;

  /// No description provided for @bts5.
  ///
  /// In en, this message translates to:
  /// **'Research and data analysis'**
  String get bts5;

  /// No description provided for @bts6.
  ///
  /// In en, this message translates to:
  /// **'Basic knowledge of user interface communication'**
  String get bts6;

  /// No description provided for @bts7.
  ///
  /// In en, this message translates to:
  /// **'Technical writing'**
  String get bts7;

  /// No description provided for @bts8.
  ///
  /// In en, this message translates to:
  /// **'Cloud networking and file sharing'**
  String get bts8;

  /// No description provided for @accounting.
  ///
  /// In en, this message translates to:
  /// **'Accounting & Finance Skills'**
  String get accounting;

  /// No description provided for @af1.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Excel (Advanced)'**
  String get af1;

  /// No description provided for @af2.
  ///
  /// In en, this message translates to:
  /// **'Enterprise Resource Planning '**
  String get af2;

  /// No description provided for @af3.
  ///
  /// In en, this message translates to:
  /// **'Big Data Analysis & SQL'**
  String get af3;

  /// No description provided for @af4.
  ///
  /// In en, this message translates to:
  /// **'Know Your Customers (KYC)'**
  String get af4;

  /// No description provided for @af5.
  ///
  /// In en, this message translates to:
  /// **'Cognos Analytics (IBM)'**
  String get af5;

  /// No description provided for @af6.
  ///
  /// In en, this message translates to:
  /// **'Visual Basic'**
  String get af6;

  /// No description provided for @af7.
  ///
  /// In en, this message translates to:
  /// **'Accounting Software'**
  String get af7;

  /// No description provided for @af8.
  ///
  /// In en, this message translates to:
  /// **'Revenue recognition'**
  String get af8;

  /// No description provided for @af9.
  ///
  /// In en, this message translates to:
  /// **'Anti Money Laundering'**
  String get af9;

  /// No description provided for @af10.
  ///
  /// In en, this message translates to:
  /// **'Clear communication'**
  String get af10;

  /// No description provided for @af11.
  ///
  /// In en, this message translates to:
  /// **'Numerical competence'**
  String get af11;

  /// No description provided for @educationski.
  ///
  /// In en, this message translates to:
  /// **'Education Skills'**
  String get educationski;

  /// No description provided for @e2.
  ///
  /// In en, this message translates to:
  /// **'Research & Data analysis'**
  String get e2;

  /// No description provided for @e3.
  ///
  /// In en, this message translates to:
  /// **'Communication'**
  String get e3;

  /// No description provided for @e4.
  ///
  /// In en, this message translates to:
  /// **'Educational platforms (software like Elearn)'**
  String get e4;

  /// No description provided for @e5.
  ///
  /// In en, this message translates to:
  /// **'Stress management'**
  String get e5;

  /// No description provided for @e6.
  ///
  /// In en, this message translates to:
  /// **'Technological & digital literacy'**
  String get e6;

  /// No description provided for @e7.
  ///
  /// In en, this message translates to:
  /// **'Patience'**
  String get e7;

  /// No description provided for @e8.
  ///
  /// In en, this message translates to:
  /// **'Critical thinking'**
  String get e8;

  /// No description provided for @e9.
  ///
  /// In en, this message translates to:
  /// **'Enthusiasm'**
  String get e9;

  /// No description provided for @e10.
  ///
  /// In en, this message translates to:
  /// **'Motivation'**
  String get e10;

  /// No description provided for @web.
  ///
  /// In en, this message translates to:
  /// **'Web Development Skills'**
  String get web;

  /// No description provided for @w1.
  ///
  /// In en, this message translates to:
  /// **'HTML/CSS'**
  String get w1;

  /// No description provided for @w2.
  ///
  /// In en, this message translates to:
  /// **'CSS preprocessors'**
  String get w2;

  /// No description provided for @w3.
  ///
  /// In en, this message translates to:
  /// **'Javascript'**
  String get w3;

  /// No description provided for @w4.
  ///
  /// In en, this message translates to:
  /// **'Wordpress'**
  String get w4;

  /// No description provided for @w5.
  ///
  /// In en, this message translates to:
  /// **'Graphic User Interfaces (GUI)'**
  String get w5;

  /// No description provided for @w6.
  ///
  /// In en, this message translates to:
  /// **'Git/Version control (Github, gitlab)'**
  String get w6;

  /// No description provided for @w7.
  ///
  /// In en, this message translates to:
  /// **'Search Engine Optimization (SEO)'**
  String get w7;

  /// No description provided for @w8.
  ///
  /// In en, this message translates to:
  /// **'Application Programming Interface (API)'**
  String get w8;

  /// No description provided for @w9.
  ///
  /// In en, this message translates to:
  /// **'Adobe Photoshop, InDesign'**
  String get w9;

  /// No description provided for @w10.
  ///
  /// In en, this message translates to:
  /// **'Content Management Systems (CMS)'**
  String get w10;

  /// No description provided for @w11.
  ///
  /// In en, this message translates to:
  /// **'Testing/Debugging'**
  String get w11;

  /// No description provided for @w12.
  ///
  /// In en, this message translates to:
  /// **'Responsive design principles'**
  String get w12;

  /// No description provided for @busin.
  ///
  /// In en, this message translates to:
  /// **'Business Analytics'**
  String get busin;

  /// No description provided for @bu1.
  ///
  /// In en, this message translates to:
  /// **'SQL (a must) and Hive (optional)'**
  String get bu1;

  /// No description provided for @bu2.
  ///
  /// In en, this message translates to:
  /// **'Programming language (R, Python, Scala, Matlab)'**
  String get bu2;

  /// No description provided for @bu3.
  ///
  /// In en, this message translates to:
  /// **'STATA, SPSS, SAS '**
  String get bu3;

  /// No description provided for @bu4.
  ///
  /// In en, this message translates to:
  /// **'Data Mapping'**
  String get bu4;

  /// No description provided for @bu5.
  ///
  /// In en, this message translates to:
  /// **'Entity Relationship Diagrams'**
  String get bu5;

  /// No description provided for @bu6.
  ///
  /// In en, this message translates to:
  /// **'Wireframes'**
  String get bu6;

  /// No description provided for @bu7.
  ///
  /// In en, this message translates to:
  /// **'Big Data tools '**
  String get bu7;

  /// No description provided for @bu8.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Visio'**
  String get bu8;

  /// No description provided for @bu9.
  ///
  /// In en, this message translates to:
  /// **'Agile Business Analysis'**
  String get bu9;

  /// No description provided for @bu10.
  ///
  /// In en, this message translates to:
  /// **'Machine learning '**
  String get bu10;

  /// No description provided for @bu11.
  ///
  /// In en, this message translates to:
  /// **'System Context Diagrams'**
  String get bu11;

  /// No description provided for @bu12.
  ///
  /// In en, this message translates to:
  /// **'Business Process Modeling'**
  String get bu12;

  /// No description provided for @bu13.
  ///
  /// In en, this message translates to:
  /// **'Technical and non-technical communication'**
  String get bu13;

  /// No description provided for @nursing.
  ///
  /// In en, this message translates to:
  /// **'Nursing and Healthcare Skills'**
  String get nursing;

  /// No description provided for @nh1.
  ///
  /// In en, this message translates to:
  /// **'Mathematics'**
  String get nh1;

  /// No description provided for @nh2.
  ///
  /// In en, this message translates to:
  /// **'CPR'**
  String get nh2;

  /// No description provided for @nh3.
  ///
  /// In en, this message translates to:
  /// **'Patient care and assistance'**
  String get nh3;

  /// No description provided for @nh4.
  ///
  /// In en, this message translates to:
  /// **'Paperwork/record-keeping abilities'**
  String get nh4;

  /// No description provided for @nh5.
  ///
  /// In en, this message translates to:
  /// **'Compassion'**
  String get nh5;

  /// No description provided for @nh6.
  ///
  /// In en, this message translates to:
  /// **'Advanced Cardiac Life Support (ACLS)'**
  String get nh6;

  /// No description provided for @nh7.
  ///
  /// In en, this message translates to:
  /// **'Telemetry'**
  String get nh7;

  /// No description provided for @nh8.
  ///
  /// In en, this message translates to:
  /// **'Attention to detail'**
  String get nh8;

  /// No description provided for @nh9.
  ///
  /// In en, this message translates to:
  /// **'Physical endurance '**
  String get nh9;

  /// No description provided for @nh10.
  ///
  /// In en, this message translates to:
  /// **'Acute care'**
  String get nh10;

  /// No description provided for @nh11.
  ///
  /// In en, this message translates to:
  /// **'Infection control'**
  String get nh11;

  /// No description provided for @nh12.
  ///
  /// In en, this message translates to:
  /// **'Surgery preparation'**
  String get nh12;

  /// No description provided for @business_plan.
  ///
  /// In en, this message translates to:
  /// **'Business Plan'**
  String get business_plan;

  /// No description provided for @persoskill.
  ///
  /// In en, this message translates to:
  /// **'Personal skills'**
  String get persoskill;

  /// No description provided for @ps1.
  ///
  /// In en, this message translates to:
  /// **'Effective communication'**
  String get ps1;

  /// No description provided for @ps2.
  ///
  /// In en, this message translates to:
  /// **'Teamwork'**
  String get ps2;

  /// No description provided for @ps3.
  ///
  /// In en, this message translates to:
  /// **'Responsibility'**
  String get ps3;

  /// No description provided for @ps4.
  ///
  /// In en, this message translates to:
  /// **'Creativity'**
  String get ps4;

  /// No description provided for @ps5.
  ///
  /// In en, this message translates to:
  /// **'Problem-solving'**
  String get ps5;

  /// No description provided for @ps6.
  ///
  /// In en, this message translates to:
  /// **'Productivity & organization'**
  String get ps6;

  /// No description provided for @ps7.
  ///
  /// In en, this message translates to:
  /// **'Critical thinking'**
  String get ps7;

  /// No description provided for @ps8.
  ///
  /// In en, this message translates to:
  /// **'Attention to detail'**
  String get ps8;

  /// No description provided for @ps9.
  ///
  /// In en, this message translates to:
  /// **'Leadership'**
  String get ps9;

  /// No description provided for @ps10.
  ///
  /// In en, this message translates to:
  /// **'Extroversion'**
  String get ps10;

  /// No description provided for @ps11.
  ///
  /// In en, this message translates to:
  /// **'People skills'**
  String get ps11;

  /// No description provided for @ps12.
  ///
  /// In en, this message translates to:
  /// **'Stress management'**
  String get ps12;

  /// No description provided for @ps13.
  ///
  /// In en, this message translates to:
  /// **'Conflict management'**
  String get ps13;

  /// No description provided for @ps14.
  ///
  /// In en, this message translates to:
  /// **'Openness'**
  String get ps14;

  /// No description provided for @ps15.
  ///
  /// In en, this message translates to:
  /// **'Adaptability'**
  String get ps15;

  /// No description provided for @ps16.
  ///
  /// In en, this message translates to:
  /// **'Emotional intelligence'**
  String get ps16;

  /// No description provided for @lang.
  ///
  /// In en, this message translates to:
  /// **'Language/s'**
  String get lang;

  /// No description provided for @hindi.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get hindi;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @german.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// No description provided for @chinese.
  ///
  /// In en, this message translates to:
  /// **'Mandarin/Chinese'**
  String get chinese;

  /// No description provided for @russian.
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get russian;

  /// No description provided for @persian.
  ///
  /// In en, this message translates to:
  /// **'Persian'**
  String get persian;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @bengali.
  ///
  /// In en, this message translates to:
  /// **'Bengali'**
  String get bengali;

  /// No description provided for @telugu.
  ///
  /// In en, this message translates to:
  /// **'Telugu'**
  String get telugu;

  /// No description provided for @tamil.
  ///
  /// In en, this message translates to:
  /// **'Tamil'**
  String get tamil;

  /// No description provided for @malyalam.
  ///
  /// In en, this message translates to:
  /// **'Malayalam'**
  String get malyalam;

  /// No description provided for @odiya.
  ///
  /// In en, this message translates to:
  /// **'Odiya'**
  String get odiya;

  /// No description provided for @kannada.
  ///
  /// In en, this message translates to:
  /// **'Kannada'**
  String get kannada;

  /// No description provided for @marathi.
  ///
  /// In en, this message translates to:
  /// **'Marathi'**
  String get marathi;

  /// No description provided for @gujrati.
  ///
  /// In en, this message translates to:
  /// **'Gujrati'**
  String get gujrati;

  /// No description provided for @punjabi.
  ///
  /// In en, this message translates to:
  /// **'Punjabi'**
  String get punjabi;

  /// No description provided for @assam.
  ///
  /// In en, this message translates to:
  /// **'Assamese'**
  String get assam;

  /// No description provided for @urdu.
  ///
  /// In en, this message translates to:
  /// **'Urdu'**
  String get urdu;

  /// No description provided for @othe.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get othe;

  /// No description provided for @beling.
  ///
  /// In en, this message translates to:
  /// **'BiLingual'**
  String get beling;

  /// No description provided for @beginner.
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get beginner;

  /// No description provided for @interm.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get interm;

  /// No description provided for @advan.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advan;

  /// No description provided for @addyo.
  ///
  /// In en, this message translates to:
  /// **'Add Your Own'**
  String get addyo;

  /// No description provided for @inter.
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get inter;

  /// No description provided for @fr.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get fr;

  /// No description provided for @til.
  ///
  /// In en, this message translates to:
  /// **'Till'**
  String get til;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'(Select Any Five)'**
  String get select;

  /// No description provided for @op1.
  ///
  /// In en, this message translates to:
  /// **'I am a Team player'**
  String get op1;

  /// No description provided for @op2.
  ///
  /// In en, this message translates to:
  /// **'I like to work alone'**
  String get op2;

  /// No description provided for @op3.
  ///
  /// In en, this message translates to:
  /// **'I can easily adjust with different types of people'**
  String get op3;

  /// No description provided for @op4.
  ///
  /// In en, this message translates to:
  /// **'I can work only with like minded people'**
  String get op4;

  /// No description provided for @op5.
  ///
  /// In en, this message translates to:
  /// **'I like to lead from the front'**
  String get op5;

  /// No description provided for @op6.
  ///
  /// In en, this message translates to:
  /// **'I believe in timely delivery of the task'**
  String get op6;

  /// No description provided for @op7.
  ///
  /// In en, this message translates to:
  /// **'I am result oriented'**
  String get op7;

  /// No description provided for @op8.
  ///
  /// In en, this message translates to:
  /// **'I am creative and seek solutions fast'**
  String get op8;

  /// No description provided for @op9.
  ///
  /// In en, this message translates to:
  /// **'I am a reserved person'**
  String get op9;

  /// No description provided for @op10.
  ///
  /// In en, this message translates to:
  /// **'I like to meet people'**
  String get op10;

  /// No description provided for @op11.
  ///
  /// In en, this message translates to:
  /// **'Money and Status of people do not affect me'**
  String get op11;

  /// No description provided for @op12.
  ///
  /// In en, this message translates to:
  /// **'I like to take orders and guidance from the superiors'**
  String get op12;

  /// No description provided for @op13.
  ///
  /// In en, this message translates to:
  /// **'I can not tolerate nonsense at work'**
  String get op13;

  /// No description provided for @op14.
  ///
  /// In en, this message translates to:
  /// **'I want to be flexible with policy frameworks'**
  String get op14;

  /// No description provided for @op15.
  ///
  /// In en, this message translates to:
  /// **'Rules are most important to me'**
  String get op15;

  /// No description provided for @op16.
  ///
  /// In en, this message translates to:
  /// **'I want to be flexible with rules'**
  String get op16;

  /// No description provided for @op17.
  ///
  /// In en, this message translates to:
  /// **'I am fun loving, and take my work as stride'**
  String get op17;

  /// No description provided for @op18.
  ///
  /// In en, this message translates to:
  /// **'I am serious worker no fun when working'**
  String get op18;

  /// No description provided for @op19.
  ///
  /// In en, this message translates to:
  /// **'I prefer flexible office timings'**
  String get op19;

  /// No description provided for @op20.
  ///
  /// In en, this message translates to:
  /// **'I can work under pressure'**
  String get op20;

  /// No description provided for @op21.
  ///
  /// In en, this message translates to:
  /// **'I finish my work before the deadline to avoid pressure'**
  String get op21;

  /// No description provided for @op22.
  ///
  /// In en, this message translates to:
  /// **'I am calm and composed at the time of crisis'**
  String get op22;

  /// No description provided for @marketsalesstrategy.
  ///
  /// In en, this message translates to:
  /// **'Is your Website Explaining your product/service ready'**
  String get marketsalesstrategy;

  /// No description provided for @prelaunch.
  ///
  /// In en, this message translates to:
  /// **'Pre Launch Strategy'**
  String get prelaunch;

  /// No description provided for @pl1.
  ///
  /// In en, this message translates to:
  /// **'My Landing Page is ready'**
  String get pl1;

  /// No description provided for @pl2.
  ///
  /// In en, this message translates to:
  /// **'Product/Service flow videos/images are ready'**
  String get pl2;

  /// No description provided for @pl3.
  ///
  /// In en, this message translates to:
  /// **'My social media promos are ready'**
  String get pl3;

  /// No description provided for @pl4.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp messages are ready'**
  String get pl4;

  /// No description provided for @pl5.
  ///
  /// In en, this message translates to:
  /// **'Teasers are ready'**
  String get pl5;

  /// No description provided for @pl6.
  ///
  /// In en, this message translates to:
  /// **'Gap teasers are ready'**
  String get pl6;

  /// No description provided for @pl7.
  ///
  /// In en, this message translates to:
  /// **'We are hiring relevant influencer'**
  String get pl7;

  /// No description provided for @pl8.
  ///
  /// In en, this message translates to:
  /// **'I have collected data of few potential customers/clients'**
  String get pl8;

  /// No description provided for @plbox.
  ///
  /// In en, this message translates to:
  /// **'Write here if you have something different, more or new'**
  String get plbox;

  /// No description provided for @planattract.
  ///
  /// In en, this message translates to:
  /// **'Plan to attract new business'**
  String get planattract;

  /// No description provided for @pa1.
  ///
  /// In en, this message translates to:
  /// **'Early bird discounts for limited period'**
  String get pa1;

  /// No description provided for @pa2.
  ///
  /// In en, this message translates to:
  /// **'Highly targeted advertising'**
  String get pa2;

  /// No description provided for @pa3.
  ///
  /// In en, this message translates to:
  /// **'Huge discounts and reward points for referrals'**
  String get pa3;

  /// No description provided for @pa4.
  ///
  /// In en, this message translates to:
  /// **'Strong presence on social media'**
  String get pa4;

  /// No description provided for @pa5.
  ///
  /// In en, this message translates to:
  /// **'Hosting Events'**
  String get pa5;

  /// No description provided for @pa6.
  ///
  /// In en, this message translates to:
  /// **'PR through press'**
  String get pa6;

  /// No description provided for @pa7.
  ///
  /// In en, this message translates to:
  /// **'Showcasing testimonials'**
  String get pa7;

  /// No description provided for @pa8.
  ///
  /// In en, this message translates to:
  /// **'Promoting videos of users and ‘how their life has changed'**
  String get pa8;

  /// No description provided for @retentation.
  ///
  /// In en, this message translates to:
  /// **'Retention strategy'**
  String get retentation;

  /// No description provided for @r1.
  ///
  /// In en, this message translates to:
  /// **'Engage with targeted post-purchase messaging'**
  String get r1;

  /// No description provided for @r2.
  ///
  /// In en, this message translates to:
  /// **'Incentivize a second purchase'**
  String get r2;

  /// No description provided for @r3.
  ///
  /// In en, this message translates to:
  /// **'Retarget best customers with a unique discount'**
  String get r3;

  /// No description provided for @r4.
  ///
  /// In en, this message translates to:
  /// **'Implement a pay-over-time payment solution'**
  String get r4;

  /// No description provided for @r5.
  ///
  /// In en, this message translates to:
  /// **'Create a subscription model'**
  String get r5;

  /// No description provided for @r6.
  ///
  /// In en, this message translates to:
  /// **'Provide outstanding customer service'**
  String get r6;

  /// No description provided for @r7.
  ///
  /// In en, this message translates to:
  /// **'Create custom emails/messages based on customer segments'**
  String get r7;

  /// No description provided for @advertisingstrategy.
  ///
  /// In en, this message translates to:
  /// **'Advertising and Promotion strategy'**
  String get advertisingstrategy;

  /// No description provided for @as1.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get as1;

  /// No description provided for @as2.
  ///
  /// In en, this message translates to:
  /// **'Paid search'**
  String get as2;

  /// No description provided for @as3.
  ///
  /// In en, this message translates to:
  /// **'Paid social media'**
  String get as3;

  /// No description provided for @as4.
  ///
  /// In en, this message translates to:
  /// **'Sponsoring an event'**
  String get as4;

  /// No description provided for @as5.
  ///
  /// In en, this message translates to:
  /// **'Story telling'**
  String get as5;

  /// No description provided for @as6.
  ///
  /// In en, this message translates to:
  /// **'Offline ads'**
  String get as6;

  /// No description provided for @as7.
  ///
  /// In en, this message translates to:
  /// **'Ad sense'**
  String get as7;

  /// No description provided for @growthstrategy.
  ///
  /// In en, this message translates to:
  /// **'Growth Strategy'**
  String get growthstrategy;

  /// No description provided for @gs1.
  ///
  /// In en, this message translates to:
  /// **'Exploring new markets'**
  String get gs1;

  /// No description provided for @gs2.
  ///
  /// In en, this message translates to:
  /// **'Developing existing market'**
  String get gs2;

  /// No description provided for @gs3.
  ///
  /// In en, this message translates to:
  /// **'Adding features/product line'**
  String get gs3;

  /// No description provided for @gs4.
  ///
  /// In en, this message translates to:
  /// **'Diversifying as per new orders'**
  String get gs4;

  /// No description provided for @gs5.
  ///
  /// In en, this message translates to:
  /// **'Partnering with other businesses'**
  String get gs5;

  /// No description provided for @gs6.
  ///
  /// In en, this message translates to:
  /// **'Collecting customer data and improvising on patterns'**
  String get gs6;

  /// No description provided for @aftersalestrategy.
  ///
  /// In en, this message translates to:
  /// **'Aftersales support strategy'**
  String get aftersalestrategy;

  /// No description provided for @afs1.
  ///
  /// In en, this message translates to:
  /// **'Proper product training (videos and manuals)'**
  String get afs1;

  /// No description provided for @afs2.
  ///
  /// In en, this message translates to:
  /// **'Replacement/Refund'**
  String get afs2;

  /// No description provided for @afs3.
  ///
  /// In en, this message translates to:
  /// **'Warranty'**
  String get afs3;

  /// No description provided for @afs4.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get afs4;

  /// No description provided for @afs5.
  ///
  /// In en, this message translates to:
  /// **'Feedback and Response'**
  String get afs5;

  /// No description provided for @afs6.
  ///
  /// In en, this message translates to:
  /// **'Online support'**
  String get afs6;

  /// No description provided for @afs7.
  ///
  /// In en, this message translates to:
  /// **'Offline support'**
  String get afs7;

  /// No description provided for @afs8.
  ///
  /// In en, this message translates to:
  /// **'Thankyou Note'**
  String get afs8;

  /// No description provided for @launchtarget.
  ///
  /// In en, this message translates to:
  /// **'Launch Targets/Targets'**
  String get launchtarget;

  /// No description provided for @lt1.
  ///
  /// In en, this message translates to:
  /// **'Time frame'**
  String get lt1;

  /// No description provided for @lt2.
  ///
  /// In en, this message translates to:
  /// **'Sales (Units)'**
  String get lt2;

  /// No description provided for @lt3.
  ///
  /// In en, this message translates to:
  /// **'Customer Reach'**
  String get lt3;

  /// No description provided for @lt4.
  ///
  /// In en, this message translates to:
  /// **'Revenue (Per Unit)'**
  String get lt4;

  /// No description provided for @lt5.
  ///
  /// In en, this message translates to:
  /// **'Monitoring'**
  String get lt5;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get months;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @assess.
  ///
  /// In en, this message translates to:
  /// **'Assess'**
  String get assess;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @nos.
  ///
  /// In en, this message translates to:
  /// **'Nos.'**
  String get nos;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get day;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Years'**
  String get year;

  /// No description provided for @rupee.
  ///
  /// In en, this message translates to:
  /// **'Rupees'**
  String get rupee;

  /// No description provided for @ltbox.
  ///
  /// In en, this message translates to:
  /// **'Midway strategy if targets are not looking achievable'**
  String get ltbox;

  /// No description provided for @productiondevelopment1.
  ///
  /// In en, this message translates to:
  /// **'Have you done your survey/ market research about the needs of the people for your product/service?'**
  String get productiondevelopment1;

  /// No description provided for @productiondevelopment2.
  ///
  /// In en, this message translates to:
  /// **'Is your product in line with needs of the people your met/surveyed?'**
  String get productiondevelopment2;

  /// No description provided for @webservice.
  ///
  /// In en, this message translates to:
  /// **'It is a website based service'**
  String get webservice;

  /// No description provided for @ws1.
  ///
  /// In en, this message translates to:
  /// **'We have Complete website is in place'**
  String get ws1;

  /// No description provided for @ws2.
  ///
  /// In en, this message translates to:
  /// **'We Have to design UI of the website'**
  String get ws2;

  /// No description provided for @ws3.
  ///
  /// In en, this message translates to:
  /// **'We Have to develop content for each UI/screen'**
  String get ws3;

  /// No description provided for @ws4.
  ///
  /// In en, this message translates to:
  /// **'We Need to collect and compile the data/information as service'**
  String get ws4;

  /// No description provided for @ws5.
  ///
  /// In en, this message translates to:
  /// **'We Need a payment gateway'**
  String get ws5;

  /// No description provided for @mobservice.
  ///
  /// In en, this message translates to:
  /// **'It is a Mobile app  based service'**
  String get mobservice;

  /// No description provided for @ms1.
  ///
  /// In en, this message translates to:
  /// **'We have Complete Mobile App is in place'**
  String get ms1;

  /// No description provided for @ms2.
  ///
  /// In en, this message translates to:
  /// **'We Have to design UI of the App'**
  String get ms2;

  /// No description provided for @ms3.
  ///
  /// In en, this message translates to:
  /// **'We Have to develop content for each UI/Screen'**
  String get ms3;

  /// No description provided for @ms4.
  ///
  /// In en, this message translates to:
  /// **'We Need to collect and compile the data/information as service'**
  String get ms4;

  /// No description provided for @ms5.
  ///
  /// In en, this message translates to:
  /// **'We Need a payment gateway'**
  String get ms5;

  /// No description provided for @bothservice.
  ///
  /// In en, this message translates to:
  /// **'It is both website and mobile app based service'**
  String get bothservice;

  /// No description provided for @bs1.
  ///
  /// In en, this message translates to:
  /// **'We have Complete Mobile App and website is in place'**
  String get bs1;

  /// No description provided for @bs2.
  ///
  /// In en, this message translates to:
  /// **'We Have to design UI of the App and website'**
  String get bs2;

  /// No description provided for @bs3.
  ///
  /// In en, this message translates to:
  /// **'We Have to develop content for each UI/Screen'**
  String get bs3;

  /// No description provided for @bs4.
  ///
  /// In en, this message translates to:
  /// **'We Need to collect and compile the data/information as service'**
  String get bs4;

  /// No description provided for @bs5.
  ///
  /// In en, this message translates to:
  /// **'We Need a payment gateway'**
  String get bs5;

  /// No description provided for @physicalproduct.
  ///
  /// In en, this message translates to:
  /// **'It is a physical product'**
  String get physicalproduct;

  /// No description provided for @pp1.
  ///
  /// In en, this message translates to:
  /// **'Our Product is ready and running'**
  String get pp1;

  /// No description provided for @pp2.
  ///
  /// In en, this message translates to:
  /// **'We Already have website defining product and about us'**
  String get pp2;

  /// No description provided for @pp3.
  ///
  /// In en, this message translates to:
  /// **'Diagrams of each part/component are ready'**
  String get pp3;

  /// No description provided for @pp4.
  ///
  /// In en, this message translates to:
  /// **'Diagrams of each part/component have to be prepared'**
  String get pp4;

  /// No description provided for @pp5.
  ///
  /// In en, this message translates to:
  /// **'We Need to produce raw material'**
  String get pp5;

  /// No description provided for @pp6.
  ///
  /// In en, this message translates to:
  /// **'We need an assembly line/factory/space to manufacture the product'**
  String get pp6;

  /// No description provided for @pp7.
  ///
  /// In en, this message translates to:
  /// **'We need a website also, defining product and about us'**
  String get pp7;

  /// No description provided for @drop.
  ///
  /// In en, this message translates to:
  /// **'How are you going to supply your product/services (logistics)'**
  String get drop;

  /// No description provided for @dr1.
  ///
  /// In en, this message translates to:
  /// **'A dealers network will be developed'**
  String get dr1;

  /// No description provided for @dr2.
  ///
  /// In en, this message translates to:
  /// **'Will be sold directly from own warehouse'**
  String get dr2;

  /// No description provided for @dr3.
  ///
  /// In en, this message translates to:
  /// **'Will use the services of delivery providers'**
  String get dr3;

  /// No description provided for @dr4.
  ///
  /// In en, this message translates to:
  /// **'Will sell through online portals'**
  String get dr4;

  /// No description provided for @dr5.
  ///
  /// In en, this message translates to:
  /// **'These are online services based on subscription/download'**
  String get dr5;

  /// No description provided for @labell.
  ///
  /// In en, this message translates to:
  /// **'Number of days required/took to develop the prototype'**
  String get labell;

  /// No description provided for @labell2.
  ///
  /// In en, this message translates to:
  /// **'I will need/I already have a team (size including you)'**
  String get labell2;

  /// No description provided for @designa.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get designa;

  /// No description provided for @rolee.
  ///
  /// In en, this message translates to:
  /// **'Role in detail'**
  String get rolee;

  /// No description provided for @skiedu.
  ///
  /// In en, this message translates to:
  /// **'Skill/Education'**
  String get skiedu;

  /// No description provided for @tearesource.
  ///
  /// In en, this message translates to:
  /// **'Team members/resources'**
  String get tearesource;

  /// No description provided for @ad.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get ad;

  /// No description provided for @namee.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get namee;

  /// No description provided for @competitiveanalysis.
  ///
  /// In en, this message translates to:
  /// **'Who is/are my main competitor/s'**
  String get competitiveanalysis;

  /// No description provided for @namecompe1.
  ///
  /// In en, this message translates to:
  /// **'Name of the competitor -1'**
  String get namecompe1;

  /// No description provided for @namecompe2.
  ///
  /// In en, this message translates to:
  /// **'Name of the competitor -2'**
  String get namecompe2;

  /// No description provided for @namecompe3.
  ///
  /// In en, this message translates to:
  /// **'Name of the competitor -3'**
  String get namecompe3;

  /// No description provided for @averagepricing.
  ///
  /// In en, this message translates to:
  /// **'Average pricing of their product/service?'**
  String get averagepricing;

  /// No description provided for @compe1.
  ///
  /// In en, this message translates to:
  /// **'Competitor -1'**
  String get compe1;

  /// No description provided for @compe2.
  ///
  /// In en, this message translates to:
  /// **'Competitor -2'**
  String get compe2;

  /// No description provided for @compe3.
  ///
  /// In en, this message translates to:
  /// **'Competitor -3'**
  String get compe3;

  /// No description provided for @targetofcomp1.
  ///
  /// In en, this message translates to:
  /// **'Target market of the competitor -1'**
  String get targetofcomp1;

  /// No description provided for @targetofcomp2.
  ///
  /// In en, this message translates to:
  /// **'Target market of the competitor -2'**
  String get targetofcomp2;

  /// No description provided for @targetofcomp3.
  ///
  /// In en, this message translates to:
  /// **'Target market of the competitor -3'**
  String get targetofcomp3;

  /// No description provided for @agecomp.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get agecomp;

  /// No description provided for @incom.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get incom;

  /// No description provided for @incom1.
  ///
  /// In en, this message translates to:
  /// **'No Income'**
  String get incom1;

  /// No description provided for @incom2.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.1,000 to Rs. 5000/-'**
  String get incom2;

  /// No description provided for @incom3.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.5000 to Rs.10,000/-'**
  String get incom3;

  /// No description provided for @incom4.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.10,000 to Rs. 25,000/-'**
  String get incom4;

  /// No description provided for @incom5.
  ///
  /// In en, this message translates to:
  /// **'Between Rs.25,000 to  Rs. 50,000/-'**
  String get incom5;

  /// No description provided for @incom6.
  ///
  /// In en, this message translates to:
  /// **'Between Rs. 50,000 to Rs. 1,00,000/-'**
  String get incom6;

  /// No description provided for @incom7.
  ///
  /// In en, this message translates to:
  /// **'Between Rs. 1,00,000 to Rs. 250,000/-'**
  String get incom7;

  /// No description provided for @incom8.
  ///
  /// In en, this message translates to:
  /// **'Rs. 2,50,000/- and above'**
  String get incom8;

  /// No description provided for @incom9.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs. 5,000/- to Rs. 25,000/-'**
  String get incom9;

  /// No description provided for @incom10.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs. 5,000/- to Rs. 50,000/-'**
  String get incom10;

  /// No description provided for @incom11.
  ///
  /// In en, this message translates to:
  /// **'Any one from Rs. 5,000/- to Rs. 1,00,000/-'**
  String get incom11;

  /// No description provided for @gend.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gend;

  /// No description provided for @g1.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get g1;

  /// No description provided for @g2.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get g2;

  /// No description provided for @g3.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get g3;

  /// No description provided for @g4.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get g4;

  /// No description provided for @educ.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educ;

  /// No description provided for @educ1.
  ///
  /// In en, this message translates to:
  /// **'No education required'**
  String get educ1;

  /// No description provided for @educ2.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 5th'**
  String get educ2;

  /// No description provided for @educ3.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 10th'**
  String get educ3;

  /// No description provided for @educ4.
  ///
  /// In en, this message translates to:
  /// **'Minimum up to class 12th'**
  String get educ4;

  /// No description provided for @educ5.
  ///
  /// In en, this message translates to:
  /// **'Minimum Graduate'**
  String get educ5;

  /// No description provided for @educ6.
  ///
  /// In en, this message translates to:
  /// **'Minimum Post Graduate'**
  String get educ6;

  /// No description provided for @educ7.
  ///
  /// In en, this message translates to:
  /// **'Minimum PHD'**
  String get educ7;

  /// No description provided for @locate.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get locate;

  /// No description provided for @l1.
  ///
  /// In en, this message translates to:
  /// **'Local (near me)'**
  String get l1;

  /// No description provided for @l2.
  ///
  /// In en, this message translates to:
  /// **'Few cities'**
  String get l2;

  /// No description provided for @l3.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get l3;

  /// No description provided for @l4.
  ///
  /// In en, this message translates to:
  /// **'Few state'**
  String get l4;

  /// No description provided for @l5.
  ///
  /// In en, this message translates to:
  /// **'Whole country'**
  String get l5;

  /// No description provided for @l6.
  ///
  /// In en, this message translates to:
  /// **'Few countries'**
  String get l6;

  /// No description provided for @l7.
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get l7;

  /// No description provided for @geograph.
  ///
  /// In en, this message translates to:
  /// **'Geography'**
  String get geograph;

  /// No description provided for @geog1.
  ///
  /// In en, this message translates to:
  /// **'Rural'**
  String get geog1;

  /// No description provided for @geog2.
  ///
  /// In en, this message translates to:
  /// **'Rural and Urban'**
  String get geog2;

  /// No description provided for @geog3.
  ///
  /// In en, this message translates to:
  /// **'Rural and Semi urban'**
  String get geog3;

  /// No description provided for @geog4.
  ///
  /// In en, this message translates to:
  /// **'Urban (includes all types of cities)'**
  String get geog4;

  /// No description provided for @geog5.
  ///
  /// In en, this message translates to:
  /// **'Tire 1 cities'**
  String get geog5;

  /// No description provided for @geog6.
  ///
  /// In en, this message translates to:
  /// **'Tire 2 cities'**
  String get geog6;

  /// No description provided for @geog7.
  ///
  /// In en, this message translates to:
  /// **'Tire 3 cities'**
  String get geog7;

  /// No description provided for @geog8.
  ///
  /// In en, this message translates to:
  /// **'Semi urban'**
  String get geog8;

  /// No description provided for @averagesales.
  ///
  /// In en, this message translates to:
  /// **'Average daily sales of their product/service (In units)'**
  String get averagesales;

  /// No description provided for @listmethods.
  ///
  /// In en, this message translates to:
  /// **'List of methods adopted for product/service promotion?'**
  String get listmethods;

  /// No description provided for @li1.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get li1;

  /// No description provided for @li2.
  ///
  /// In en, this message translates to:
  /// **'Paid search'**
  String get li2;

  /// No description provided for @li3.
  ///
  /// In en, this message translates to:
  /// **'Paid social media'**
  String get li3;

  /// No description provided for @li4.
  ///
  /// In en, this message translates to:
  /// **'Sponsoring an event'**
  String get li4;

  /// No description provided for @li5.
  ///
  /// In en, this message translates to:
  /// **'Story telling'**
  String get li5;

  /// No description provided for @li6.
  ///
  /// In en, this message translates to:
  /// **'Offline ads'**
  String get li6;

  /// No description provided for @li7.
  ///
  /// In en, this message translates to:
  /// **'Ad sense'**
  String get li7;

  /// No description provided for @estimated.
  ///
  /// In en, this message translates to:
  /// **'Estimated team size of the competitor/s'**
  String get estimated;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration of operation of the competitor/s'**
  String get duration;

  /// No description provided for @all_buttons_in_hindi.
  ///
  /// In en, this message translates to:
  /// **'sgakbmahgdmabfbmsgmhgsdmbs*******************'**
  String get all_buttons_in_hindi;

  /// No description provided for @test_again.
  ///
  /// In en, this message translates to:
  /// **'Test Again'**
  String get test_again;

  /// No description provided for @how_to_utilize.
  ///
  /// In en, this message translates to:
  /// **'How to Utilize'**
  String get how_to_utilize;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @how_to_improve.
  ///
  /// In en, this message translates to:
  /// **'How to Improve'**
  String get how_to_improve;

  /// No description provided for @response.
  ///
  /// In en, this message translates to:
  /// **'Response'**
  String get response;

  /// No description provided for @poc.
  ///
  /// In en, this message translates to:
  /// **'POC'**
  String get poc;

  /// No description provided for @pm.
  ///
  /// In en, this message translates to:
  /// **'\'\'PM\'\''**
  String get pm;

  /// No description provided for @team.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get team;

  /// No description provided for @objective.
  ///
  /// In en, this message translates to:
  /// **'Objective'**
  String get objective;

  /// No description provided for @performance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get performance;

  /// No description provided for @conversations.
  ///
  /// In en, this message translates to:
  /// **'Conversations'**
  String get conversations;

  /// No description provided for @attempt_case_study.
  ///
  /// In en, this message translates to:
  /// **'Attempt Case Study'**
  String get attempt_case_study;

  /// No description provided for @technology_is_used.
  ///
  /// In en, this message translates to:
  /// **'Technology is used'**
  String get technology_is_used;

  /// No description provided for @form_of_technology.
  ///
  /// In en, this message translates to:
  /// **'The form of technology used is'**
  String get form_of_technology;

  /// No description provided for @lets.
  ///
  /// In en, this message translates to:
  /// **'Lets Understand your idea in detail, CRUX ensures you of 100% security of your idea, your idea will never be share with any one, other than the authorized assessors who are going to assess your idea for further actions.'**
  String get lets;

  /// No description provided for @lets_submit.
  ///
  /// In en, this message translates to:
  /// **'Lets sum-up!'**
  String get lets_submit;

  /// No description provided for @lets_submit1.
  ///
  /// In en, this message translates to:
  /// **'By clicking your requirements from the incubation centre, you will be responded soon about your Idea. Thankyou for your submission'**
  String get lets_submit1;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @why_it_is_unique.
  ///
  /// In en, this message translates to:
  /// **'Why it is Unique?'**
  String get why_it_is_unique;

  /// No description provided for @why_it_is_milestone.
  ///
  /// In en, this message translates to:
  /// **'What are the major product/services milestone that have been met to date?(Discussed and appreciated , tested ,being used by people) ?'**
  String get why_it_is_milestone;

  /// No description provided for @your_product.
  ///
  /// In en, this message translates to:
  /// **'Why is your product/service is different from other already available product/service. (Use plus \'+\' button to add every \'new\' difference/feature)'**
  String get your_product;

  /// No description provided for @have_you.
  ///
  /// In en, this message translates to:
  /// **'Have you discussed the idea/venture/product/service with your closed one?'**
  String get have_you;

  /// No description provided for @reaction.
  ///
  /// In en, this message translates to:
  /// **'What was their reaction?'**
  String get reaction;

  /// No description provided for @who_are.
  ///
  /// In en, this message translates to:
  /// **'Who are your customers/clients'**
  String get who_are;

  /// No description provided for @age_group.
  ///
  /// In en, this message translates to:
  /// **'Age Group'**
  String get age_group;

  /// No description provided for @monthly_income.
  ///
  /// In en, this message translates to:
  /// **'Monthly Income'**
  String get monthly_income;

  /// No description provided for @location_.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location_;

  /// No description provided for @preasent.
  ///
  /// In en, this message translates to:
  /// **'Present team size'**
  String get preasent;

  /// No description provided for @technolist1.
  ///
  /// In en, this message translates to:
  /// **'At the time of procurement of information/dat/raw material etc.'**
  String get technolist1;

  /// No description provided for @technolist2.
  ///
  /// In en, this message translates to:
  /// **'At the time of delivery-product/service is delivered with the help of technology'**
  String get technolist2;

  /// No description provided for @technolist3.
  ///
  /// In en, this message translates to:
  /// **'To showcase the product/services in detail with usage details'**
  String get technolist3;

  /// No description provided for @technolist4.
  ///
  /// In en, this message translates to:
  /// **'Technology is involved right from the beginning till delivery and customer satisfaction'**
  String get technolist4;

  /// No description provided for @formList1.
  ///
  /// In en, this message translates to:
  /// **'An app/website for procurement'**
  String get formList1;

  /// No description provided for @formList2.
  ///
  /// In en, this message translates to:
  /// **'An app/website for display and ordering'**
  String get formList2;

  /// No description provided for @formList3.
  ///
  /// In en, this message translates to:
  /// **'An app/website for usage'**
  String get formList3;

  /// No description provided for @formList4.
  ///
  /// In en, this message translates to:
  /// **'An app/website for delivery'**
  String get formList4;

  /// No description provided for @formList5.
  ///
  /// In en, this message translates to:
  /// **'An app/website for monitoring'**
  String get formList5;

  /// No description provided for @formList6.
  ///
  /// In en, this message translates to:
  /// **'An app/website for all the processes'**
  String get formList6;

  /// No description provided for @formList7.
  ///
  /// In en, this message translates to:
  /// **'A device based on IoT'**
  String get formList7;

  /// No description provided for @formList8.
  ///
  /// In en, this message translates to:
  /// **'IoT'**
  String get formList8;

  /// No description provided for @formList9.
  ///
  /// In en, this message translates to:
  /// **'Something related to VR/AR/MR/XR'**
  String get formList9;

  /// No description provided for @formList10.
  ///
  /// In en, this message translates to:
  /// **'Something related to Machine Learning ML'**
  String get formList10;

  /// No description provided for @formList11.
  ///
  /// In en, this message translates to:
  /// **'Something related to Artificial Intelligence AI'**
  String get formList11;

  /// No description provided for @formList12.
  ///
  /// In en, this message translates to:
  /// **'Something else'**
  String get formList12;

  /// No description provided for @based.
  ///
  /// In en, this message translates to:
  /// **'Based on your expertise, subject knowledge, interest you are requested to assess these business Ideas/Concepts and provide your valuable inputs.'**
  String get based;

  /// No description provided for @i1.
  ///
  /// In en, this message translates to:
  /// **'Ideas change the world'**
  String get i1;

  /// No description provided for @i2.
  ///
  /// In en, this message translates to:
  /// **'Your Idea/Concept can also change the lives.'**
  String get i2;

  /// No description provided for @i3.
  ///
  /// In en, this message translates to:
  /// **'Let us together nurture your idea further'**
  String get i3;

  /// No description provided for @i4.
  ///
  /// In en, this message translates to:
  /// **'And make it a big success'**
  String get i4;

  /// No description provided for @rlist1.
  ///
  /// In en, this message translates to:
  /// **'They liked the idea'**
  String get rlist1;

  /// No description provided for @rlist2.
  ///
  /// In en, this message translates to:
  /// **'They encouraged to develop a prototype'**
  String get rlist2;

  /// No description provided for @rlist3.
  ///
  /// In en, this message translates to:
  /// **'They liked after using the product/service'**
  String get rlist3;

  /// No description provided for @rlist4.
  ///
  /// In en, this message translates to:
  /// **'They could not understand properly'**
  String get rlist4;

  /// No description provided for @inn.
  ///
  /// In en, this message translates to:
  /// **'Innovation'**
  String get inn;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @reg_type.
  ///
  /// In en, this message translates to:
  /// **'Profile type'**
  String get reg_type;

  /// No description provided for @reg_student.
  ///
  /// In en, this message translates to:
  /// **'I am a student'**
  String get reg_student;

  /// No description provided for @reg_educator.
  ///
  /// In en, this message translates to:
  /// **'I am an educator'**
  String get reg_educator;

  /// No description provided for @reg_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get reg_name;

  /// No description provided for @reg_email.
  ///
  /// In en, this message translates to:
  /// **'Email Id'**
  String get reg_email;

  /// No description provided for @reg_university.
  ///
  /// In en, this message translates to:
  /// **'University/ Institutes'**
  String get reg_university;

  /// No description provided for @reg_college.
  ///
  /// In en, this message translates to:
  /// **'Collages'**
  String get reg_college;

  /// No description provided for @reg_course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get reg_course;

  /// No description provided for @reg_sem.
  ///
  /// In en, this message translates to:
  /// **'Semester'**
  String get reg_sem;

  /// No description provided for @reg_year.
  ///
  /// In en, this message translates to:
  /// **'Select Year'**
  String get reg_year;

  /// No description provided for @reg_majorsub1.
  ///
  /// In en, this message translates to:
  /// **'Major Subject1'**
  String get reg_majorsub1;

  /// No description provided for @reg_majorsub2.
  ///
  /// In en, this message translates to:
  /// **'Major Subject2'**
  String get reg_majorsub2;

  /// No description provided for @reg_minorsub1.
  ///
  /// In en, this message translates to:
  /// **'Miner Subject1'**
  String get reg_minorsub1;

  /// No description provided for @reg_minorsub2.
  ///
  /// In en, this message translates to:
  /// **'Miner Subject2'**
  String get reg_minorsub2;

  /// No description provided for @reg_areaofresearch.
  ///
  /// In en, this message translates to:
  /// **'Area of Research'**
  String get reg_areaofresearch;

  /// No description provided for @reg_dob.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get reg_dob;

  /// No description provided for @reg_passion.
  ///
  /// In en, this message translates to:
  /// **'Passion if any'**
  String get reg_passion;

  /// No description provided for @reg_expinyear.
  ///
  /// In en, this message translates to:
  /// **'Experience in Years'**
  String get reg_expinyear;

  /// No description provided for @remind_me.
  ///
  /// In en, this message translates to:
  /// **'Remind me to update my profile every'**
  String get remind_me;

  /// No description provided for @every_month.
  ///
  /// In en, this message translates to:
  /// **'Every Month'**
  String get every_month;

  /// No description provided for @three_month.
  ///
  /// In en, this message translates to:
  /// **'In 3 Month'**
  String get three_month;

  /// No description provided for @four_month.
  ///
  /// In en, this message translates to:
  /// **'In 4 Month'**
  String get four_month;

  /// No description provided for @six_month.
  ///
  /// In en, this message translates to:
  /// **'In 6 Month'**
  String get six_month;

  /// No description provided for @i_am_edu.
  ///
  /// In en, this message translates to:
  /// **'I am an educator'**
  String get i_am_edu;

  /// No description provided for @i_am_stu.
  ///
  /// In en, this message translates to:
  /// **'I am student'**
  String get i_am_stu;

  /// No description provided for @reg_first.
  ///
  /// In en, this message translates to:
  /// **'I would like to explore my abilities and shortcoming.'**
  String get reg_first;

  /// No description provided for @reg_second.
  ///
  /// In en, this message translates to:
  /// **'I would like to be a \'Co-creator\'part of a great idea/venture of relevent to my skills and my passion.'**
  String get reg_second;

  /// No description provided for @reg_third.
  ///
  /// In en, this message translates to:
  /// **'I would like to be guided about my career based on my capabilities'**
  String get reg_third;

  /// No description provided for @reg_forth.
  ///
  /// In en, this message translates to:
  /// **'I would like to be mentored for the best and most suitable career for me.'**
  String get reg_forth;

  /// No description provided for @reg_fifth.
  ///
  /// In en, this message translates to:
  /// **'I would like to earn with relevant projects and assignment while I am studying.'**
  String get reg_fifth;

  /// No description provided for @reg_sixth.
  ///
  /// In en, this message translates to:
  /// **'I would like to asses the business ideas/concepts related to my subject/research.'**
  String get reg_sixth;

  /// No description provided for @reg_seven.
  ///
  /// In en, this message translates to:
  /// **'I would like to Evaluate case studies/hypothesis etc.related to my subjct/research.'**
  String get reg_seven;

  /// No description provided for @reg_eight.
  ///
  /// In en, this message translates to:
  /// **'I would like to appraise my student on various parameters.'**
  String get reg_eight;

  /// No description provided for @reg_nine.
  ///
  /// In en, this message translates to:
  /// **'I would like to be a \'Mentor/Co-creator\' part of a great idea/venture of relevant to my skills and my passion'**
  String get reg_nine;

  /// No description provided for @cpath.
  ///
  /// In en, this message translates to:
  /// **'Your career matches are generally those that offer a service-oriented environment. You perform  best when working with others to achieve visible results.'**
  String get cpath;

  /// No description provided for @cpath1.
  ///
  /// In en, this message translates to:
  /// **'Your tendency to live in the moment makes them unsuited for long-term projects or roles that involves forward planning.'**
  String get cpath1;

  /// No description provided for @cpath2.
  ///
  /// In en, this message translates to:
  /// **'You view teamwork as a form of social interaction. You don\'t take things too seriously. You are also good at uniting a team, using their observational skills to pinpoint where individual talents lie.'**
  String get cpath2;

  /// No description provided for @cpath3.
  ///
  /// In en, this message translates to:
  /// **'As a manager you  prefer to focus on short-term plans with tangible results. This makes you less suited to leadership roles that involve long-term strategy or substantial planning.'**
  String get cpath3;

  /// No description provided for @suitableCareer.
  ///
  /// In en, this message translates to:
  /// **'Suitable Career'**
  String get suitableCareer;

  /// No description provided for @guide1.
  ///
  /// In en, this message translates to:
  /// **'Guide Me'**
  String get guide1;

  /// No description provided for @guide2.
  ///
  /// In en, this message translates to:
  /// **'CRUX is happy to guide you and inform you about the most suitable careers all along based on your knowledge, skill sets and  aspirations .'**
  String get guide2;

  /// No description provided for @guide3.
  ///
  /// In en, this message translates to:
  /// **'Create your detailed profile by Clicking'**
  String get guide3;

  /// No description provided for @guide4.
  ///
  /// In en, this message translates to:
  /// **'on'**
  String get guide4;

  /// No description provided for @guide5.
  ///
  /// In en, this message translates to:
  /// **'home page .'**
  String get guide5;

  /// No description provided for @guide6.
  ///
  /// In en, this message translates to:
  /// **'Career Guidance'**
  String get guide6;

  /// No description provided for @guide7.
  ///
  /// In en, this message translates to:
  /// **'Date: 00/00/0000'**
  String get guide7;

  /// No description provided for @guide8.
  ///
  /// In en, this message translates to:
  /// **'You will be informed through posts and Notification and all the suitable Career suggestions will be kept in \'\'Career vault\'\'.'**
  String get guide8;

  /// No description provided for @trans1.
  ///
  /// In en, this message translates to:
  /// **'Transition'**
  String get trans1;

  /// No description provided for @trans2.
  ///
  /// In en, this message translates to:
  /// **'Are you improving ????'**
  String get trans2;

  /// No description provided for @trans3.
  ///
  /// In en, this message translates to:
  /// **'Career wise, Personality wise,'**
  String get trans3;

  /// No description provided for @trans4.
  ///
  /// In en, this message translates to:
  /// **'Knowledge wise, Wisdom wise,'**
  String get trans4;

  /// No description provided for @trans5.
  ///
  /// In en, this message translates to:
  /// **'and so on. \'\'Transition\'\' measures all such changes and informs you time to time (relevance) '**
  String get trans5;

  /// No description provided for @trans6.
  ///
  /// In en, this message translates to:
  /// **'Create your  detailed profile by Clicking'**
  String get trans6;

  /// No description provided for @trans7.
  ///
  /// In en, this message translates to:
  /// **'home page .'**
  String get trans7;

  /// No description provided for @lrn1.
  ///
  /// In en, this message translates to:
  /// **'LearnAid'**
  String get lrn1;

  /// No description provided for @lrn2.
  ///
  /// In en, this message translates to:
  /// **'LearnAid is an opportunity to get popular and earn a decent & regular income. Create a course/program on anything which you think you know better then others and CRUX will showcase it all who might be looking for such a course/Program.'**
  String get lrn2;

  /// No description provided for @lrn3.
  ///
  /// In en, this message translates to:
  /// **'Create your Own'**
  String get lrn3;

  /// No description provided for @lrn4.
  ///
  /// In en, this message translates to:
  /// **'Available Courses/Program'**
  String get lrn4;

  /// No description provided for @lrn5.
  ///
  /// In en, this message translates to:
  /// **'1.  Development'**
  String get lrn5;

  /// No description provided for @lrn6.
  ///
  /// In en, this message translates to:
  /// **'2.  Bussiness'**
  String get lrn6;

  /// No description provided for @lrn7.
  ///
  /// In en, this message translates to:
  /// **'3.  Finance & Accounting'**
  String get lrn7;

  /// No description provided for @lrn8.
  ///
  /// In en, this message translates to:
  /// **'4.  IT & Software'**
  String get lrn8;

  /// No description provided for @lrn9.
  ///
  /// In en, this message translates to:
  /// **'5.  Office Productivity'**
  String get lrn9;

  /// No description provided for @lrn10.
  ///
  /// In en, this message translates to:
  /// **'6.  Personal Development'**
  String get lrn10;

  /// No description provided for @lrn11.
  ///
  /// In en, this message translates to:
  /// **'7.  Design'**
  String get lrn11;

  /// No description provided for @lrn12.
  ///
  /// In en, this message translates to:
  /// **'8.  Marketing'**
  String get lrn12;

  /// No description provided for @lrn13.
  ///
  /// In en, this message translates to:
  /// **'9.  Lifestyle'**
  String get lrn13;

  /// No description provided for @lrn14.
  ///
  /// In en, this message translates to:
  /// **'10. Photography & Video'**
  String get lrn14;

  /// No description provided for @lrn15.
  ///
  /// In en, this message translates to:
  /// **'11. Health & Fitness'**
  String get lrn15;

  /// No description provided for @lrn16.
  ///
  /// In en, this message translates to:
  /// **'12. Music'**
  String get lrn16;

  /// No description provided for @lrn17.
  ///
  /// In en, this message translates to:
  /// **'13. Teaching & Academics'**
  String get lrn17;

  /// No description provided for @vaultt.
  ///
  /// In en, this message translates to:
  /// **'Career Vault'**
  String get vaultt;

  /// No description provided for @lrn2a.
  ///
  /// In en, this message translates to:
  /// **'Create your own course on any topic you can teach/train/coach. CRUX gives you an opportunity to spread your wisdom and gain your due fame'**
  String get lrn2a;

  /// No description provided for @lrn2b.
  ///
  /// In en, this message translates to:
  /// **'Title of the program'**
  String get lrn2b;

  /// No description provided for @lrn2c.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get lrn2c;

  /// No description provided for @lrn2d.
  ///
  /// In en, this message translates to:
  /// **'Create your own'**
  String get lrn2d;

  /// No description provided for @lrn2e.
  ///
  /// In en, this message translates to:
  /// **'Enter Category'**
  String get lrn2e;

  /// No description provided for @lrn2f.
  ///
  /// In en, this message translates to:
  /// **'Topic of the program'**
  String get lrn2f;

  /// No description provided for @lrn2g.
  ///
  /// In en, this message translates to:
  /// **'Enter Field'**
  String get lrn2g;

  /// No description provided for @lrn2h.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get lrn2h;

  /// No description provided for @lrn2i.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get lrn2i;

  /// No description provided for @lrn2j.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get lrn2j;

  /// No description provided for @lrn2k.
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get lrn2k;

  /// No description provided for @lrn2l.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get lrn2l;

  /// No description provided for @lrn2ll.
  ///
  /// In en, this message translates to:
  /// **'Mediums of Instruction'**
  String get lrn2ll;

  /// No description provided for @lrn2m.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get lrn2m;

  /// No description provided for @lrn2n.
  ///
  /// In en, this message translates to:
  /// **'Presentation'**
  String get lrn2n;

  /// No description provided for @lrn2o.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get lrn2o;

  /// No description provided for @lrn2p.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get lrn2p;

  /// No description provided for @lrn2q.
  ///
  /// In en, this message translates to:
  /// **'Sample Format for best results'**
  String get lrn2q;

  /// No description provided for @lrn2r.
  ///
  /// In en, this message translates to:
  /// **'Program details (Describe your program in detail, use plus button for new para or new line)'**
  String get lrn2r;

  /// No description provided for @lrn2s.
  ///
  /// In en, this message translates to:
  /// **'Program Offerings (more the offerings/content more the chances of success-add more with the plus button)'**
  String get lrn2s;

  /// No description provided for @lrn2t.
  ///
  /// In en, this message translates to:
  /// **'Outcome of the program(how and where it is applicable, benefits , skill sets developed/learnt etc -add more with plus button)'**
  String get lrn2t;

  /// No description provided for @lrn2u.
  ///
  /// In en, this message translates to:
  /// **'Content/Syllabus of the Program(what are you going teach/train -add more with plus button)'**
  String get lrn2u;

  /// No description provided for @lrn2v.
  ///
  /// In en, this message translates to:
  /// **'Program Requirements (minimum qualification or skills sets-add more with plus button)'**
  String get lrn2v;

  /// No description provided for @lrn2w.
  ///
  /// In en, this message translates to:
  /// **'Pricing'**
  String get lrn2w;

  /// No description provided for @lrn2x.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get lrn2x;

  /// No description provided for @lrn2y.
  ///
  /// In en, this message translates to:
  /// **'Free on 5 referrels'**
  String get lrn2y;

  /// No description provided for @lrn2z.
  ///
  /// In en, this message translates to:
  /// **'Part Free Part Paid'**
  String get lrn2z;

  /// No description provided for @lrn2aa.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get lrn2aa;

  /// No description provided for @lrn2bb.
  ///
  /// In en, this message translates to:
  /// **'Certification'**
  String get lrn2bb;

  /// No description provided for @lrn2cc.
  ///
  /// In en, this message translates to:
  /// **'I will give rating'**
  String get lrn2cc;

  /// No description provided for @lrn2dd.
  ///
  /// In en, this message translates to:
  /// **'I will give my own certificate'**
  String get lrn2dd;

  /// No description provided for @lrn2ee.
  ///
  /// In en, this message translates to:
  /// **'I want my Program to be certified by CRUX'**
  String get lrn2ee;

  /// No description provided for @lrn2ff.
  ///
  /// In en, this message translates to:
  /// **'Explain your selected option'**
  String get lrn2ff;

  /// No description provided for @cs.
  ///
  /// In en, this message translates to:
  /// **'Case Study'**
  String get cs;

  /// No description provided for @cs1.
  ///
  /// In en, this message translates to:
  /// **'Attempt Case Studies'**
  String get cs1;

  /// No description provided for @cs2.
  ///
  /// In en, this message translates to:
  /// **'Attempt Hypothesis'**
  String get cs2;

  /// No description provided for @mv.
  ///
  /// In en, this message translates to:
  /// **'My Vault'**
  String get mv;

  /// No description provided for @mv1.
  ///
  /// In en, this message translates to:
  /// **'Case Studies'**
  String get mv1;

  /// No description provided for @mv2.
  ///
  /// In en, this message translates to:
  /// **'Hypothesis'**
  String get mv2;

  /// No description provided for @devlist.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get devlist;

  /// No description provided for @devlist1.
  ///
  /// In en, this message translates to:
  /// **'Data Science'**
  String get devlist1;

  /// No description provided for @devlist2.
  ///
  /// In en, this message translates to:
  /// **'Mobile development'**
  String get devlist2;

  /// No description provided for @devlist3.
  ///
  /// In en, this message translates to:
  /// **'Programming Languages'**
  String get devlist3;

  /// No description provided for @devlist4.
  ///
  /// In en, this message translates to:
  /// **'Game Development'**
  String get devlist4;

  /// No description provided for @devlist5.
  ///
  /// In en, this message translates to:
  /// **'Database Design & Development'**
  String get devlist5;

  /// No description provided for @devlist6.
  ///
  /// In en, this message translates to:
  /// **'Software Testing'**
  String get devlist6;

  /// No description provided for @devlist7.
  ///
  /// In en, this message translates to:
  /// **'Software Engineering'**
  String get devlist7;

  /// No description provided for @devlist8.
  ///
  /// In en, this message translates to:
  /// **'Softrware Development Tools'**
  String get devlist8;

  /// No description provided for @devlist9.
  ///
  /// In en, this message translates to:
  /// **'No-Code Development'**
  String get devlist9;

  /// No description provided for @busilist.
  ///
  /// In en, this message translates to:
  /// **'Entrepreneurship'**
  String get busilist;

  /// No description provided for @busilist1.
  ///
  /// In en, this message translates to:
  /// **'Communication'**
  String get busilist1;

  /// No description provided for @busilist2.
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get busilist2;

  /// No description provided for @busilist3.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get busilist3;

  /// No description provided for @busilist4.
  ///
  /// In en, this message translates to:
  /// **'Business Strategy'**
  String get busilist4;

  /// No description provided for @busilist5.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get busilist5;

  /// No description provided for @busilist6.
  ///
  /// In en, this message translates to:
  /// **'Project Management'**
  String get busilist6;

  /// No description provided for @busilist7.
  ///
  /// In en, this message translates to:
  /// **'Business Law'**
  String get busilist7;

  /// No description provided for @busilist8.
  ///
  /// In en, this message translates to:
  /// **'Business Analytics & Intelligence'**
  String get busilist8;

  /// No description provided for @busilist9.
  ///
  /// In en, this message translates to:
  /// **'Human Resources'**
  String get busilist9;

  /// No description provided for @busilist10.
  ///
  /// In en, this message translates to:
  /// **'Industry'**
  String get busilist10;

  /// No description provided for @busilist11.
  ///
  /// In en, this message translates to:
  /// **'E-Commerce'**
  String get busilist11;

  /// No description provided for @busilist12.
  ///
  /// In en, this message translates to:
  /// **'Media'**
  String get busilist12;

  /// No description provided for @busilist13.
  ///
  /// In en, this message translates to:
  /// **'Real Estate'**
  String get busilist13;

  /// No description provided for @busilist14.
  ///
  /// In en, this message translates to:
  /// **'Other Business'**
  String get busilist14;

  /// No description provided for @finlist.
  ///
  /// In en, this message translates to:
  /// **'Accounting & Bookkeeping'**
  String get finlist;

  /// No description provided for @finlist1.
  ///
  /// In en, this message translates to:
  /// **'Compliance'**
  String get finlist1;

  /// No description provided for @finlist2.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency & Blockchain'**
  String get finlist2;

  /// No description provided for @finlist3.
  ///
  /// In en, this message translates to:
  /// **'Economics'**
  String get finlist3;

  /// No description provided for @finlist4.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get finlist4;

  /// No description provided for @finlist5.
  ///
  /// In en, this message translates to:
  /// **'Finance Cert & Exam Prep'**
  String get finlist5;

  /// No description provided for @finlist6.
  ///
  /// In en, this message translates to:
  /// **'Financial Modeling & Analysis'**
  String get finlist6;

  /// No description provided for @finlist7.
  ///
  /// In en, this message translates to:
  /// **'Investing & Trading'**
  String get finlist7;

  /// No description provided for @finlist8.
  ///
  /// In en, this message translates to:
  /// **'Money Management Tools'**
  String get finlist8;

  /// No description provided for @finlist9.
  ///
  /// In en, this message translates to:
  /// **'Taxes'**
  String get finlist9;

  /// No description provided for @finlist10.
  ///
  /// In en, this message translates to:
  /// **'Other Finance & Accounting'**
  String get finlist10;

  /// No description provided for @itlist.
  ///
  /// In en, this message translates to:
  /// **'IT Certifications'**
  String get itlist;

  /// No description provided for @itlist1.
  ///
  /// In en, this message translates to:
  /// **'Network & Security'**
  String get itlist1;

  /// No description provided for @itlist2.
  ///
  /// In en, this message translates to:
  /// **'Hardware'**
  String get itlist2;

  /// No description provided for @itlist3.
  ///
  /// In en, this message translates to:
  /// **'Operating Systems & Servers'**
  String get itlist3;

  /// No description provided for @itlist4.
  ///
  /// In en, this message translates to:
  /// **'Other IT & Software'**
  String get itlist4;

  /// No description provided for @ofproductlist.
  ///
  /// In en, this message translates to:
  /// **'Microsoft'**
  String get ofproductlist;

  /// No description provided for @ofproductlist1.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get ofproductlist1;

  /// No description provided for @ofproductlist2.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get ofproductlist2;

  /// No description provided for @ofproductlist3.
  ///
  /// In en, this message translates to:
  /// **'SAP'**
  String get ofproductlist3;

  /// No description provided for @ofproductlist4.
  ///
  /// In en, this message translates to:
  /// **'Oracle'**
  String get ofproductlist4;

  /// No description provided for @ofproductlist5.
  ///
  /// In en, this message translates to:
  /// **'Other Office Productivity'**
  String get ofproductlist5;

  /// No description provided for @persolist.
  ///
  /// In en, this message translates to:
  /// **'Personal Transformation'**
  String get persolist;

  /// No description provided for @persolist1.
  ///
  /// In en, this message translates to:
  /// **'Personal Productivity'**
  String get persolist1;

  /// No description provided for @persolist2.
  ///
  /// In en, this message translates to:
  /// **'Leadership'**
  String get persolist2;

  /// No description provided for @persolist3.
  ///
  /// In en, this message translates to:
  /// **'Career Development'**
  String get persolist3;

  /// No description provided for @persolist4.
  ///
  /// In en, this message translates to:
  /// **'Parenting & Relationships'**
  String get persolist4;

  /// No description provided for @persolist5.
  ///
  /// In en, this message translates to:
  /// **'Happiness'**
  String get persolist5;

  /// No description provided for @persolist6.
  ///
  /// In en, this message translates to:
  /// **'Esoteric Practices'**
  String get persolist6;

  /// No description provided for @persolist7.
  ///
  /// In en, this message translates to:
  /// **'Religion & Spirituality'**
  String get persolist7;

  /// No description provided for @persolist8.
  ///
  /// In en, this message translates to:
  /// **'Personal Brand Building'**
  String get persolist8;

  /// No description provided for @persolist9.
  ///
  /// In en, this message translates to:
  /// **'Creativity'**
  String get persolist9;

  /// No description provided for @persolist10.
  ///
  /// In en, this message translates to:
  /// **'Influence'**
  String get persolist10;

  /// No description provided for @persolist11.
  ///
  /// In en, this message translates to:
  /// **'Self Esteem & Confidence'**
  String get persolist11;

  /// No description provided for @persolist12.
  ///
  /// In en, this message translates to:
  /// **'Stress Management'**
  String get persolist12;

  /// No description provided for @persolist13.
  ///
  /// In en, this message translates to:
  /// **'Memory & Study Skills'**
  String get persolist13;

  /// No description provided for @persolist14.
  ///
  /// In en, this message translates to:
  /// **'Motivation'**
  String get persolist14;

  /// No description provided for @persolist15.
  ///
  /// In en, this message translates to:
  /// **'Other Personal Development'**
  String get persolist15;

  /// No description provided for @desilist.
  ///
  /// In en, this message translates to:
  /// **'Web Design'**
  String get desilist;

  /// No description provided for @desilist1.
  ///
  /// In en, this message translates to:
  /// **'Graphic Design & Illustration'**
  String get desilist1;

  /// No description provided for @desilist2.
  ///
  /// In en, this message translates to:
  /// **'Design Tools'**
  String get desilist2;

  /// No description provided for @desilist3.
  ///
  /// In en, this message translates to:
  /// **'User Experience Design'**
  String get desilist3;

  /// No description provided for @desilist4.
  ///
  /// In en, this message translates to:
  /// **'Game Design'**
  String get desilist4;

  /// No description provided for @desilist5.
  ///
  /// In en, this message translates to:
  /// **'3D & Animation'**
  String get desilist5;

  /// No description provided for @desilist6.
  ///
  /// In en, this message translates to:
  /// **'Fashion Design'**
  String get desilist6;

  /// No description provided for @desilist7.
  ///
  /// In en, this message translates to:
  /// **'Architectural Design'**
  String get desilist7;

  /// No description provided for @desilist8.
  ///
  /// In en, this message translates to:
  /// **'Interior Design'**
  String get desilist8;

  /// No description provided for @desilist9.
  ///
  /// In en, this message translates to:
  /// **'Other Design'**
  String get desilist9;

  /// No description provided for @marketlist.
  ///
  /// In en, this message translates to:
  /// **'Digital Marketing'**
  String get marketlist;

  /// No description provided for @marketlist1.
  ///
  /// In en, this message translates to:
  /// **'Search Engine Optimization'**
  String get marketlist1;

  /// No description provided for @marketlist2.
  ///
  /// In en, this message translates to:
  /// **'Social Media Marketing'**
  String get marketlist2;

  /// No description provided for @marketlist3.
  ///
  /// In en, this message translates to:
  /// **'Branding'**
  String get marketlist3;

  /// No description provided for @marketlist4.
  ///
  /// In en, this message translates to:
  /// **'Marketing Fundamentals'**
  String get marketlist4;

  /// No description provided for @marketlist5.
  ///
  /// In en, this message translates to:
  /// **'Marketing Analytics & Automation'**
  String get marketlist5;

  /// No description provided for @marketlist6.
  ///
  /// In en, this message translates to:
  /// **'Public Relations'**
  String get marketlist6;

  /// No description provided for @marketlist7.
  ///
  /// In en, this message translates to:
  /// **'Video & Mobile Marketing'**
  String get marketlist7;

  /// No description provided for @marketlist8.
  ///
  /// In en, this message translates to:
  /// **'Paid Advertising'**
  String get marketlist8;

  /// No description provided for @marketlist9.
  ///
  /// In en, this message translates to:
  /// **'Growth Hacking'**
  String get marketlist9;

  /// No description provided for @marketlist10.
  ///
  /// In en, this message translates to:
  /// **'Content Marketing'**
  String get marketlist10;

  /// No description provided for @marketlist11.
  ///
  /// In en, this message translates to:
  /// **'Product Marketing'**
  String get marketlist11;

  /// No description provided for @marketlist12.
  ///
  /// In en, this message translates to:
  /// **'Affiliate Marketing'**
  String get marketlist12;

  /// No description provided for @marketlist13.
  ///
  /// In en, this message translates to:
  /// **'Other Marketing'**
  String get marketlist13;

  /// No description provided for @lifelist.
  ///
  /// In en, this message translates to:
  /// **'Arts & Crafts'**
  String get lifelist;

  /// No description provided for @lifelist1.
  ///
  /// In en, this message translates to:
  /// **'Beauty & Makeup'**
  String get lifelist1;

  /// No description provided for @lifelist2.
  ///
  /// In en, this message translates to:
  /// **'Esoteric Practices'**
  String get lifelist2;

  /// No description provided for @lifelist3.
  ///
  /// In en, this message translates to:
  /// **'Food & Beverage'**
  String get lifelist3;

  /// No description provided for @lifelist4.
  ///
  /// In en, this message translates to:
  /// **'Gaming'**
  String get lifelist4;

  /// No description provided for @lifelist5.
  ///
  /// In en, this message translates to:
  /// **'Home Improvement & Gardening'**
  String get lifelist5;

  /// No description provided for @lifelist6.
  ///
  /// In en, this message translates to:
  /// **'Pet Care & Training'**
  String get lifelist6;

  /// No description provided for @lifelist7.
  ///
  /// In en, this message translates to:
  /// **'Travel'**
  String get lifelist7;

  /// No description provided for @lifelist8.
  ///
  /// In en, this message translates to:
  /// **'Other Lifestyle'**
  String get lifelist8;

  /// No description provided for @photolist.
  ///
  /// In en, this message translates to:
  /// **'Digital Photography'**
  String get photolist;

  /// No description provided for @photolist1.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get photolist1;

  /// No description provided for @photolist2.
  ///
  /// In en, this message translates to:
  /// **'Portrait Photography'**
  String get photolist2;

  /// No description provided for @photolist3.
  ///
  /// In en, this message translates to:
  /// **'Photography Tools'**
  String get photolist3;

  /// No description provided for @photolist4.
  ///
  /// In en, this message translates to:
  /// **'Commercial Photography'**
  String get photolist4;

  /// No description provided for @photolist5.
  ///
  /// In en, this message translates to:
  /// **'Video Design'**
  String get photolist5;

  /// No description provided for @photolist6.
  ///
  /// In en, this message translates to:
  /// **'Other Photography & Video'**
  String get photolist6;

  /// No description provided for @healthlist.
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get healthlist;

  /// No description provided for @healthlist1.
  ///
  /// In en, this message translates to:
  /// **'General Health'**
  String get healthlist1;

  /// No description provided for @healthlist2.
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get healthlist2;

  /// No description provided for @healthlist3.
  ///
  /// In en, this message translates to:
  /// **'Nutrition & Diet'**
  String get healthlist3;

  /// No description provided for @healthlist4.
  ///
  /// In en, this message translates to:
  /// **'Yoga'**
  String get healthlist4;

  /// No description provided for @healthlist5.
  ///
  /// In en, this message translates to:
  /// **'Mental Health'**
  String get healthlist5;

  /// No description provided for @healthlist6.
  ///
  /// In en, this message translates to:
  /// **'Martial Arts & Self Defense'**
  String get healthlist6;

  /// No description provided for @healthlist7.
  ///
  /// In en, this message translates to:
  /// **'Safety & First Aid'**
  String get healthlist7;

  /// No description provided for @healthlist8.
  ///
  /// In en, this message translates to:
  /// **'Dance'**
  String get healthlist8;

  /// No description provided for @healthlist9.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get healthlist9;

  /// No description provided for @healthlist10.
  ///
  /// In en, this message translates to:
  /// **'Other Health & Fitness'**
  String get healthlist10;

  /// No description provided for @musiclist.
  ///
  /// In en, this message translates to:
  /// **'Instruments'**
  String get musiclist;

  /// No description provided for @musiclist1.
  ///
  /// In en, this message translates to:
  /// **'Music Production'**
  String get musiclist1;

  /// No description provided for @musiclist2.
  ///
  /// In en, this message translates to:
  /// **'Music Fundamentals'**
  String get musiclist2;

  /// No description provided for @musiclist3.
  ///
  /// In en, this message translates to:
  /// **'Vocal'**
  String get musiclist3;

  /// No description provided for @musiclist4.
  ///
  /// In en, this message translates to:
  /// **'Music Techniques'**
  String get musiclist4;

  /// No description provided for @musiclist5.
  ///
  /// In en, this message translates to:
  /// **'Music Software'**
  String get musiclist5;

  /// No description provided for @musiclist6.
  ///
  /// In en, this message translates to:
  /// **'Other Music'**
  String get musiclist6;

  /// No description provided for @teachinglist.
  ///
  /// In en, this message translates to:
  /// **'Engineering'**
  String get teachinglist;

  /// No description provided for @teachinglist1.
  ///
  /// In en, this message translates to:
  /// **'Humanities'**
  String get teachinglist1;

  /// No description provided for @teachinglist2.
  ///
  /// In en, this message translates to:
  /// **'Math'**
  String get teachinglist2;

  /// No description provided for @teachinglist3.
  ///
  /// In en, this message translates to:
  /// **'Science'**
  String get teachinglist3;

  /// No description provided for @teachinglist4.
  ///
  /// In en, this message translates to:
  /// **'Online Education'**
  String get teachinglist4;

  /// No description provided for @teachinglist5.
  ///
  /// In en, this message translates to:
  /// **'Social Science'**
  String get teachinglist5;

  /// No description provided for @teachinglist6.
  ///
  /// In en, this message translates to:
  /// **'Language Learning'**
  String get teachinglist6;

  /// No description provided for @teachinglist7.
  ///
  /// In en, this message translates to:
  /// **'Teacher Training'**
  String get teachinglist7;

  /// No description provided for @teachinglist8.
  ///
  /// In en, this message translates to:
  /// **'Test Prep'**
  String get teachinglist8;

  /// No description provided for @teachinglist9.
  ///
  /// In en, this message translates to:
  /// **'Other Teaching & Academics'**
  String get teachinglist9;

  /// No description provided for @webdevlist.
  ///
  /// In en, this message translates to:
  /// **'JavaScript'**
  String get webdevlist;

  /// No description provided for @webdevlist1.
  ///
  /// In en, this message translates to:
  /// **'React'**
  String get webdevlist1;

  /// No description provided for @webdevlist2.
  ///
  /// In en, this message translates to:
  /// **'Angular'**
  String get webdevlist2;

  /// No description provided for @webdevlist3.
  ///
  /// In en, this message translates to:
  /// **'CSS'**
  String get webdevlist3;

  /// No description provided for @webdevlist4.
  ///
  /// In en, this message translates to:
  /// **'Node.Js'**
  String get webdevlist4;

  /// No description provided for @webdevlist5.
  ///
  /// In en, this message translates to:
  /// **'Typescript'**
  String get webdevlist5;

  /// No description provided for @webdevlist6.
  ///
  /// In en, this message translates to:
  /// **'HTML5'**
  String get webdevlist6;

  /// No description provided for @webdevlist7.
  ///
  /// In en, this message translates to:
  /// **'PHP'**
  String get webdevlist7;

  /// No description provided for @datascilist.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get datascilist;

  /// No description provided for @datascilist1.
  ///
  /// In en, this message translates to:
  /// **'Machine Learning'**
  String get datascilist1;

  /// No description provided for @datascilist2.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get datascilist2;

  /// No description provided for @datascilist3.
  ///
  /// In en, this message translates to:
  /// **'Deep Learning'**
  String get datascilist3;

  /// No description provided for @datascilist4.
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence'**
  String get datascilist4;

  /// No description provided for @datascilist5.
  ///
  /// In en, this message translates to:
  /// **'R(Programming Langusge)'**
  String get datascilist5;

  /// No description provided for @datascilist6.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get datascilist6;

  /// No description provided for @datascilist7.
  ///
  /// In en, this message translates to:
  /// **'Natural Language Processing'**
  String get datascilist7;

  /// No description provided for @mobdevlist.
  ///
  /// In en, this message translates to:
  /// **'Google Flutter'**
  String get mobdevlist;

  /// No description provided for @mobdevlist1.
  ///
  /// In en, this message translates to:
  /// **'iOS Development'**
  String get mobdevlist1;

  /// No description provided for @mobdevlist2.
  ///
  /// In en, this message translates to:
  /// **'Swift'**
  String get mobdevlist2;

  /// No description provided for @mobdevlist3.
  ///
  /// In en, this message translates to:
  /// **'React Native'**
  String get mobdevlist3;

  /// No description provided for @mobdevlist4.
  ///
  /// In en, this message translates to:
  /// **'Dart(programming Language)'**
  String get mobdevlist4;

  /// No description provided for @mobdevlist5.
  ///
  /// In en, this message translates to:
  /// **'Kotlin'**
  String get mobdevlist5;

  /// No description provided for @mobdevlist6.
  ///
  /// In en, this message translates to:
  /// **'SwiftUI'**
  String get mobdevlist6;

  /// No description provided for @mobdevlist7.
  ///
  /// In en, this message translates to:
  /// **'Mobile App Development'**
  String get mobdevlist7;

  /// No description provided for @programlanglist.
  ///
  /// In en, this message translates to:
  /// **'python'**
  String get programlanglist;

  /// No description provided for @programlanglist1.
  ///
  /// In en, this message translates to:
  /// **'Java'**
  String get programlanglist1;

  /// No description provided for @programlanglist2.
  ///
  /// In en, this message translates to:
  /// **'C#'**
  String get programlanglist2;

  /// No description provided for @programlanglist3.
  ///
  /// In en, this message translates to:
  /// **'JavaScript'**
  String get programlanglist3;

  /// No description provided for @programlanglist4.
  ///
  /// In en, this message translates to:
  /// **'Go(programming language)'**
  String get programlanglist4;

  /// No description provided for @programlanglist5.
  ///
  /// In en, this message translates to:
  /// **'Spring Framework'**
  String get programlanglist5;

  /// No description provided for @programlanglist6.
  ///
  /// In en, this message translates to:
  /// **'C(Programming language)'**
  String get programlanglist6;

  /// No description provided for @gamedevlist.
  ///
  /// In en, this message translates to:
  /// **'Unity'**
  String get gamedevlist;

  /// No description provided for @gamedevlist1.
  ///
  /// In en, this message translates to:
  /// **'Unreal Engine'**
  String get gamedevlist1;

  /// No description provided for @gamedevlist2.
  ///
  /// In en, this message translates to:
  /// **'Game Development Fundamentals'**
  String get gamedevlist2;

  /// No description provided for @gamedevlist3.
  ///
  /// In en, this message translates to:
  /// **'C#'**
  String get gamedevlist3;

  /// No description provided for @gamedevlist4.
  ///
  /// In en, this message translates to:
  /// **'3D Game Development'**
  String get gamedevlist4;

  /// No description provided for @gamedevlist5.
  ///
  /// In en, this message translates to:
  /// **'C++'**
  String get gamedevlist5;

  /// No description provided for @gamedevlist6.
  ///
  /// In en, this message translates to:
  /// **'Unreal Engine Blueprints'**
  String get gamedevlist6;

  /// No description provided for @gamedevlist7.
  ///
  /// In en, this message translates to:
  /// **'2D Game Development'**
  String get gamedevlist7;

  /// No description provided for @gamedevlist8.
  ///
  /// In en, this message translates to:
  /// **'Mobile Game Development'**
  String get gamedevlist8;

  /// No description provided for @datadesignlist.
  ///
  /// In en, this message translates to:
  /// **'SQL'**
  String get datadesignlist;

  /// No description provided for @datadesignlist1.
  ///
  /// In en, this message translates to:
  /// **'MySQL'**
  String get datadesignlist1;

  /// No description provided for @datadesignlist2.
  ///
  /// In en, this message translates to:
  /// **'Oracle SQL'**
  String get datadesignlist2;

  /// No description provided for @datadesignlist3.
  ///
  /// In en, this message translates to:
  /// **'Database Management'**
  String get datadesignlist3;

  /// No description provided for @datadesignlist4.
  ///
  /// In en, this message translates to:
  /// **'MongoDB'**
  String get datadesignlist4;

  /// No description provided for @datadesignlist5.
  ///
  /// In en, this message translates to:
  /// **'Apache Kafka'**
  String get datadesignlist5;

  /// No description provided for @datadesignlist6.
  ///
  /// In en, this message translates to:
  /// **'SQL Server'**
  String get datadesignlist6;

  /// No description provided for @datadesignlist7.
  ///
  /// In en, this message translates to:
  /// **'PostgreSQL'**
  String get datadesignlist7;

  /// No description provided for @datadesignlist8.
  ///
  /// In en, this message translates to:
  /// **'Database Programming'**
  String get datadesignlist8;

  /// No description provided for @softwaretestlist.
  ///
  /// In en, this message translates to:
  /// **'Selenium Testing WebDriver'**
  String get softwaretestlist;

  /// No description provided for @softwaretestlist1.
  ///
  /// In en, this message translates to:
  /// **'Java'**
  String get softwaretestlist1;

  /// No description provided for @softwaretestlist2.
  ///
  /// In en, this message translates to:
  /// **'Automation Testing'**
  String get softwaretestlist2;

  /// No description provided for @softwaretestlist3.
  ///
  /// In en, this message translates to:
  /// **'API Testing'**
  String get softwaretestlist3;

  /// No description provided for @softwaretestlist4.
  ///
  /// In en, this message translates to:
  /// **'Postman'**
  String get softwaretestlist4;

  /// No description provided for @softwaretestlist5.
  ///
  /// In en, this message translates to:
  /// **'Selenium Testing Framework'**
  String get softwaretestlist5;

  /// No description provided for @softwaretestlist6.
  ///
  /// In en, this message translates to:
  /// **'Quality Assurance'**
  String get softwaretestlist6;

  /// No description provided for @softwaretestlist7.
  ///
  /// In en, this message translates to:
  /// **'Cypress.io'**
  String get softwaretestlist7;

  /// No description provided for @softwareenglist.
  ///
  /// In en, this message translates to:
  /// **'Data Structures'**
  String get softwareenglist;

  /// No description provided for @softwareenglist1.
  ///
  /// In en, this message translates to:
  /// **'Coding Interview'**
  String get softwareenglist1;

  /// No description provided for @softwareenglist2.
  ///
  /// In en, this message translates to:
  /// **'Algorithms'**
  String get softwareenglist2;

  /// No description provided for @softwareenglist3.
  ///
  /// In en, this message translates to:
  /// **'Microservices'**
  String get softwareenglist3;

  /// No description provided for @softwareenglist4.
  ///
  /// In en, this message translates to:
  /// **'Kubernets'**
  String get softwareenglist4;

  /// No description provided for @softwareenglist5.
  ///
  /// In en, this message translates to:
  /// **'Certified Kubernets Application developer(CKAD)'**
  String get softwareenglist5;

  /// No description provided for @softwareenglist6.
  ///
  /// In en, this message translates to:
  /// **'Sftware Architecture'**
  String get softwareenglist6;

  /// No description provided for @softwareenglist7.
  ///
  /// In en, this message translates to:
  /// **'Software practices'**
  String get softwareenglist7;

  /// No description provided for @softwareenglist8.
  ///
  /// In en, this message translates to:
  /// **'Apache Airflow'**
  String get softwareenglist8;

  /// No description provided for @softwaredeveloplist.
  ///
  /// In en, this message translates to:
  /// **'Git'**
  String get softwaredeveloplist;

  /// No description provided for @softwaredeveloplist1.
  ///
  /// In en, this message translates to:
  /// **'Docker'**
  String get softwaredeveloplist1;

  /// No description provided for @softwaredeveloplist2.
  ///
  /// In en, this message translates to:
  /// **'Kubernets'**
  String get softwaredeveloplist2;

  /// No description provided for @softwaredeveloplist3.
  ///
  /// In en, this message translates to:
  /// **'JIRA'**
  String get softwaredeveloplist3;

  /// No description provided for @softwaredeveloplist4.
  ///
  /// In en, this message translates to:
  /// **'DevOps'**
  String get softwaredeveloplist4;

  /// No description provided for @softwaredeveloplist5.
  ///
  /// In en, this message translates to:
  /// **'Confluence'**
  String get softwaredeveloplist5;

  /// No description provided for @softwaredeveloplist6.
  ///
  /// In en, this message translates to:
  /// **'Jenkins'**
  String get softwaredeveloplist6;

  /// No description provided for @softwaredeveloplist7.
  ///
  /// In en, this message translates to:
  /// **'Terraform'**
  String get softwaredeveloplist7;

  /// No description provided for @softwaredeveloplist8.
  ///
  /// In en, this message translates to:
  /// **'Node.Js'**
  String get softwaredeveloplist8;

  /// No description provided for @nocodedevlist.
  ///
  /// In en, this message translates to:
  /// **'Bubble Visual Programming'**
  String get nocodedevlist;

  /// No description provided for @nocodedevlist1.
  ///
  /// In en, this message translates to:
  /// **'Elementor'**
  String get nocodedevlist1;

  /// No description provided for @nocodedevlist2.
  ///
  /// In en, this message translates to:
  /// **'Word Press'**
  String get nocodedevlist2;

  /// No description provided for @nocodedevlist3.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Power Platform'**
  String get nocodedevlist3;

  /// No description provided for @nocodedevlist4.
  ///
  /// In en, this message translates to:
  /// **'Wix'**
  String get nocodedevlist4;

  /// No description provided for @nocodedevlist5.
  ///
  /// In en, this message translates to:
  /// **'Web Design'**
  String get nocodedevlist5;

  /// No description provided for @nocodedevlist6.
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence'**
  String get nocodedevlist6;

  /// No description provided for @nocodedevlist7.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get nocodedevlist7;

  /// No description provided for @nocodedevlist8.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Power Automate'**
  String get nocodedevlist8;

  /// No description provided for @entreprelist.
  ///
  /// In en, this message translates to:
  /// **'Business Fundamentals'**
  String get entreprelist;

  /// No description provided for @entreprelist1.
  ///
  /// In en, this message translates to:
  /// **'Entrepreneurship Fundamentals'**
  String get entreprelist1;

  /// No description provided for @entreprelist2.
  ///
  /// In en, this message translates to:
  /// **'Freelancing'**
  String get entreprelist2;

  /// No description provided for @entreprelist3.
  ///
  /// In en, this message translates to:
  /// **'Business Strategy'**
  String get entreprelist3;

  /// No description provided for @entreprelist4.
  ///
  /// In en, this message translates to:
  /// **'Online Business'**
  String get entreprelist4;

  /// No description provided for @entreprelist5.
  ///
  /// In en, this message translates to:
  /// **'Startup'**
  String get entreprelist5;

  /// No description provided for @entreprelist6.
  ///
  /// In en, this message translates to:
  /// **'Business Plan'**
  String get entreprelist6;

  /// No description provided for @entreprelist7.
  ///
  /// In en, this message translates to:
  /// **'Blogging'**
  String get entreprelist7;

  /// No description provided for @entreprelist8.
  ///
  /// In en, this message translates to:
  /// **'Amazon Kindle Direct Publishing'**
  String get entreprelist8;

  /// No description provided for @commulist.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get commulist;

  /// No description provided for @commulist1.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get commulist1;

  /// No description provided for @commulist2.
  ///
  /// In en, this message translates to:
  /// **'Presentation Skilss'**
  String get commulist2;

  /// No description provided for @commulist3.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get commulist3;

  /// No description provided for @commulist4.
  ///
  /// In en, this message translates to:
  /// **'Fiction Writing'**
  String get commulist4;

  /// No description provided for @commulist5.
  ///
  /// In en, this message translates to:
  /// **'Storytelling'**
  String get commulist5;

  /// No description provided for @commulist6.
  ///
  /// In en, this message translates to:
  /// **'Email Writing and Etiquette'**
  String get commulist6;

  /// No description provided for @commulist7.
  ///
  /// In en, this message translates to:
  /// **'Business Communication'**
  String get commulist7;

  /// No description provided for @managelist.
  ///
  /// In en, this message translates to:
  /// **'Product Management'**
  String get managelist;

  /// No description provided for @managelist1.
  ///
  /// In en, this message translates to:
  /// **'Leadership'**
  String get managelist1;

  /// No description provided for @managelist2.
  ///
  /// In en, this message translates to:
  /// **'Management Skills'**
  String get managelist2;

  /// No description provided for @managelist3.
  ///
  /// In en, this message translates to:
  /// **'Business Skills'**
  String get managelist3;

  /// No description provided for @managelist4.
  ///
  /// In en, this message translates to:
  /// **'Business Strategy'**
  String get managelist4;

  /// No description provided for @managelist5.
  ///
  /// In en, this message translates to:
  /// **'ISO 9001'**
  String get managelist5;

  /// No description provided for @managelist6.
  ///
  /// In en, this message translates to:
  /// **'Manager Training'**
  String get managelist6;

  /// No description provided for @managelist7.
  ///
  /// In en, this message translates to:
  /// **'Project MAnagement'**
  String get managelist7;

  /// No description provided for @managelist8.
  ///
  /// In en, this message translates to:
  /// **'PMP'**
  String get managelist8;

  /// No description provided for @managelist9.
  ///
  /// In en, this message translates to:
  /// **'Quality Management'**
  String get managelist9;

  /// No description provided for @salelist.
  ///
  /// In en, this message translates to:
  /// **'Sales Skiklls'**
  String get salelist;

  /// No description provided for @salelist1.
  ///
  /// In en, this message translates to:
  /// **'B2B Sales'**
  String get salelist1;

  /// No description provided for @salelist2.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get salelist2;

  /// No description provided for @salelist3.
  ///
  /// In en, this message translates to:
  /// **'Lead Generation'**
  String get salelist3;

  /// No description provided for @salelist4.
  ///
  /// In en, this message translates to:
  /// **'Business Development'**
  String get salelist4;

  /// No description provided for @salelist5.
  ///
  /// In en, this message translates to:
  /// **'Cold Email'**
  String get salelist5;

  /// No description provided for @salelist6.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get salelist6;

  /// No description provided for @salelist7.
  ///
  /// In en, this message translates to:
  /// **'Customer Success Management'**
  String get salelist7;

  /// No description provided for @salelist8.
  ///
  /// In en, this message translates to:
  /// **'Presentation Skills'**
  String get salelist8;

  /// No description provided for @businesslistt.
  ///
  /// In en, this message translates to:
  /// **'Digital Marketing'**
  String get businesslistt;

  /// No description provided for @businesslistt1.
  ///
  /// In en, this message translates to:
  /// **'Management Consulting'**
  String get businesslistt1;

  /// No description provided for @businesslistt2.
  ///
  /// In en, this message translates to:
  /// **'TOGAF 9 Foundation'**
  String get businesslistt2;

  /// No description provided for @businesslistt3.
  ///
  /// In en, this message translates to:
  /// **'TOGAF 9 Certified'**
  String get businesslistt3;

  /// No description provided for @businesslistt4.
  ///
  /// In en, this message translates to:
  /// **'Digital Transformation'**
  String get businesslistt4;

  /// No description provided for @businesslistt5.
  ///
  /// In en, this message translates to:
  /// **'Design Thinking'**
  String get businesslistt5;

  /// No description provided for @businesslistt6.
  ///
  /// In en, this message translates to:
  /// **'Business Model'**
  String get businesslistt6;

  /// No description provided for @businesslistt7.
  ///
  /// In en, this message translates to:
  /// **'Product Management'**
  String get businesslistt7;

  /// No description provided for @operatelist.
  ///
  /// In en, this message translates to:
  /// **'Six Sigma'**
  String get operatelist;

  /// No description provided for @operatelist1.
  ///
  /// In en, this message translates to:
  /// **'Six Sigma Green Belt'**
  String get operatelist1;

  /// No description provided for @operatelist2.
  ///
  /// In en, this message translates to:
  /// **'Six Sigma Yellow Belt'**
  String get operatelist2;

  /// No description provided for @operatelist3.
  ///
  /// In en, this message translates to:
  /// **'Supply Chain'**
  String get operatelist3;

  /// No description provided for @operatelist4.
  ///
  /// In en, this message translates to:
  /// **'Six Sigma Black Belt'**
  String get operatelist4;

  /// No description provided for @operatelist5.
  ///
  /// In en, this message translates to:
  /// **'Virtual Assistant'**
  String get operatelist5;

  /// No description provided for @operatelist6.
  ///
  /// In en, this message translates to:
  /// **'Logistics Management'**
  String get operatelist6;

  /// No description provided for @operatelist7.
  ///
  /// In en, this message translates to:
  /// **'Quality Management'**
  String get operatelist7;

  /// No description provided for @operatelist8.
  ///
  /// In en, this message translates to:
  /// **'Lean'**
  String get operatelist8;

  /// No description provided for @prolist.
  ///
  /// In en, this message translates to:
  /// **'PMP'**
  String get prolist;

  /// No description provided for @prolist1.
  ///
  /// In en, this message translates to:
  /// **'PMI PMBOK'**
  String get prolist1;

  /// No description provided for @prolist2.
  ///
  /// In en, this message translates to:
  /// **'Scrum'**
  String get prolist2;

  /// No description provided for @prolist3.
  ///
  /// In en, this message translates to:
  /// **'Agile'**
  String get prolist3;

  /// No description provided for @prolist4.
  ///
  /// In en, this message translates to:
  /// **'CAPM Certified Associate in Project Management'**
  String get prolist4;

  /// No description provided for @prolist5.
  ///
  /// In en, this message translates to:
  /// **'Professional Scrum Master (PSM)'**
  String get prolist5;

  /// No description provided for @prolist6.
  ///
  /// In en, this message translates to:
  /// **'PMI-ACP'**
  String get prolist6;

  /// No description provided for @prolist7.
  ///
  /// In en, this message translates to:
  /// **'Product Owner'**
  String get prolist7;

  /// No description provided for @bussilist.
  ///
  /// In en, this message translates to:
  /// **'Law'**
  String get bussilist;

  /// No description provided for @bussilist1.
  ///
  /// In en, this message translates to:
  /// **'GDPR'**
  String get bussilist1;

  /// No description provided for @bussilist2.
  ///
  /// In en, this message translates to:
  /// **'Contract Law'**
  String get bussilist2;

  /// No description provided for @bussilist3.
  ///
  /// In en, this message translates to:
  /// **'Contract Management'**
  String get bussilist3;

  /// No description provided for @bussilist4.
  ///
  /// In en, this message translates to:
  /// **'Healthcare IT'**
  String get bussilist4;

  /// No description provided for @bussilist5.
  ///
  /// In en, this message translates to:
  /// **'Data Protection'**
  String get bussilist5;

  /// No description provided for @bussilist6.
  ///
  /// In en, this message translates to:
  /// **'Medical Device Development'**
  String get bussilist6;

  /// No description provided for @bussilist7.
  ///
  /// In en, this message translates to:
  /// **'LGPD Lei Geral de Protecao de Dados'**
  String get bussilist7;

  /// No description provided for @busianalist.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Power BI'**
  String get busianalist;

  /// No description provided for @busianalist1.
  ///
  /// In en, this message translates to:
  /// **'SQL'**
  String get busianalist1;

  /// No description provided for @busianalist2.
  ///
  /// In en, this message translates to:
  /// **'TAbleau'**
  String get busianalist2;

  /// No description provided for @busianalist3.
  ///
  /// In en, this message translates to:
  /// **'Data Modeling'**
  String get busianalist3;

  /// No description provided for @busianalist4.
  ///
  /// In en, this message translates to:
  /// **'Business Analysis'**
  String get busianalist4;

  /// No description provided for @busianalist5.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get busianalist5;

  /// No description provided for @busianalist6.
  ///
  /// In en, this message translates to:
  /// **'Data Warehouse'**
  String get busianalist6;

  /// No description provided for @busianalist7.
  ///
  /// In en, this message translates to:
  /// **'Business Intelligence'**
  String get busianalist7;

  /// No description provided for @busianalist8.
  ///
  /// In en, this message translates to:
  /// **'Blockchain'**
  String get busianalist8;

  /// No description provided for @humanreslist.
  ///
  /// In en, this message translates to:
  /// **'Recruiting'**
  String get humanreslist;

  /// No description provided for @humanreslist1.
  ///
  /// In en, this message translates to:
  /// **'HR Analytics'**
  String get humanreslist1;

  /// No description provided for @humanreslist2.
  ///
  /// In en, this message translates to:
  /// **'Hiring'**
  String get humanreslist2;

  /// No description provided for @humanreslist3.
  ///
  /// In en, this message translates to:
  /// **'Instructional Design'**
  String get humanreslist3;

  /// No description provided for @humanreslist4.
  ///
  /// In en, this message translates to:
  /// **'Corporate Learning and Development (L&D)'**
  String get humanreslist4;

  /// No description provided for @humanreslist5.
  ///
  /// In en, this message translates to:
  /// **'Employment Law'**
  String get humanreslist5;

  /// No description provided for @humanreslist6.
  ///
  /// In en, this message translates to:
  /// **'Diversity and Inclusion'**
  String get humanreslist6;

  /// No description provided for @humanreslist7.
  ///
  /// In en, this message translates to:
  /// **'Emotional Intelligence'**
  String get humanreslist7;

  /// No description provided for @induslist.
  ///
  /// In en, this message translates to:
  /// **'Piping'**
  String get induslist;

  /// No description provided for @induslist1.
  ///
  /// In en, this message translates to:
  /// **'Trucking'**
  String get induslist1;

  /// No description provided for @induslist2.
  ///
  /// In en, this message translates to:
  /// **'Solar Energy'**
  String get induslist2;

  /// No description provided for @induslist3.
  ///
  /// In en, this message translates to:
  /// **'Oil and Gas Industry'**
  String get induslist3;

  /// No description provided for @induslist4.
  ///
  /// In en, this message translates to:
  /// **'EPLAN Electric P8'**
  String get induslist4;

  /// No description provided for @induslist5.
  ///
  /// In en, this message translates to:
  /// **'Chemical Engineering'**
  String get induslist5;

  /// No description provided for @induslist6.
  ///
  /// In en, this message translates to:
  /// **'Life Coach Training'**
  String get induslist6;

  /// No description provided for @induslist7.
  ///
  /// In en, this message translates to:
  /// **'Workplace Health and Safety'**
  String get induslist7;

  /// No description provided for @induslist8.
  ///
  /// In en, this message translates to:
  /// **'Salesforce'**
  String get induslist8;

  /// No description provided for @ecomlist.
  ///
  /// In en, this message translates to:
  /// **'Amazon FBA'**
  String get ecomlist;

  /// No description provided for @ecomlist1.
  ///
  /// In en, this message translates to:
  /// **'Dropshipping'**
  String get ecomlist1;

  /// No description provided for @ecomlist2.
  ///
  /// In en, this message translates to:
  /// **'Shopify Dropshipping'**
  String get ecomlist2;

  /// No description provided for @ecomlist3.
  ///
  /// In en, this message translates to:
  /// **'Shopify'**
  String get ecomlist3;

  /// No description provided for @ecomlist4.
  ///
  /// In en, this message translates to:
  /// **'Selling on Amazon'**
  String get ecomlist4;

  /// No description provided for @ecomlist5.
  ///
  /// In en, this message translates to:
  /// **'Etsy'**
  String get ecomlist5;

  /// No description provided for @ecomlist6.
  ///
  /// In en, this message translates to:
  /// **'Online Business'**
  String get ecomlist6;

  /// No description provided for @ecomlist7.
  ///
  /// In en, this message translates to:
  /// **'Passive Income'**
  String get ecomlist7;

  /// No description provided for @medialist.
  ///
  /// In en, this message translates to:
  /// **'Amazon Kindle Direct Publishing (KDP)'**
  String get medialist;

  /// No description provided for @medialist1.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get medialist1;

  /// No description provided for @medialist2.
  ///
  /// In en, this message translates to:
  /// **'Audiobook Creation'**
  String get medialist2;

  /// No description provided for @medialist3.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get medialist3;

  /// No description provided for @medialist4.
  ///
  /// In en, this message translates to:
  /// **'Screenwriting and Scriptwriting'**
  String get medialist4;

  /// No description provided for @medialist5.
  ///
  /// In en, this message translates to:
  /// **'Journalism'**
  String get medialist5;

  /// No description provided for @medialist6.
  ///
  /// In en, this message translates to:
  /// **'After Effects'**
  String get medialist6;

  /// No description provided for @medialist7.
  ///
  /// In en, this message translates to:
  /// **'Motion Graphics'**
  String get medialist7;

  /// No description provided for @medialist8.
  ///
  /// In en, this message translates to:
  /// **'Content Creation'**
  String get medialist8;

  /// No description provided for @reallist.
  ///
  /// In en, this message translates to:
  /// **'Real Estate Investing'**
  String get reallist;

  /// No description provided for @reallist1.
  ///
  /// In en, this message translates to:
  /// **'Airbnb Hosting'**
  String get reallist1;

  /// No description provided for @reallist2.
  ///
  /// In en, this message translates to:
  /// **'Mortgage'**
  String get reallist2;

  /// No description provided for @reallist3.
  ///
  /// In en, this message translates to:
  /// **'Construction'**
  String get reallist3;

  /// No description provided for @reallist4.
  ///
  /// In en, this message translates to:
  /// **'Financial Modeling'**
  String get reallist4;

  /// No description provided for @reallist5.
  ///
  /// In en, this message translates to:
  /// **'Notary Business'**
  String get reallist5;

  /// No description provided for @reallist6.
  ///
  /// In en, this message translates to:
  /// **'Real Estate Marketing'**
  String get reallist6;

  /// No description provided for @reallist7.
  ///
  /// In en, this message translates to:
  /// **'Real Estate Flipping'**
  String get reallist7;

  /// No description provided for @otherbusilist.
  ///
  /// In en, this message translates to:
  /// **'QuicBooks Online'**
  String get otherbusilist;

  /// No description provided for @otherbusilist1.
  ///
  /// In en, this message translates to:
  /// **'Grant Writing'**
  String get otherbusilist1;

  /// No description provided for @otherbusilist2.
  ///
  /// In en, this message translates to:
  /// **'Industry 4.0'**
  String get otherbusilist2;

  /// No description provided for @otherbusilist3.
  ///
  /// In en, this message translates to:
  /// **'Digital Transformation'**
  String get otherbusilist3;

  /// No description provided for @otherbusilist4.
  ///
  /// In en, this message translates to:
  /// **'Transcription'**
  String get otherbusilist4;

  /// No description provided for @otherbusilist5.
  ///
  /// In en, this message translates to:
  /// **'Data Entry Skills'**
  String get otherbusilist5;

  /// No description provided for @otherbusilist6.
  ///
  /// In en, this message translates to:
  /// **'Freelance Writing'**
  String get otherbusilist6;

  /// No description provided for @otherbusilist7.
  ///
  /// In en, this message translates to:
  /// **'Sports Betting'**
  String get otherbusilist7;

  /// No description provided for @otherbusilist8.
  ///
  /// In en, this message translates to:
  /// **'Fundraising'**
  String get otherbusilist8;

  /// No description provided for @accountbooklist.
  ///
  /// In en, this message translates to:
  /// **'Accounting'**
  String get accountbooklist;

  /// No description provided for @accountbooklist1.
  ///
  /// In en, this message translates to:
  /// **'Bookkeeping'**
  String get accountbooklist1;

  /// No description provided for @accountbooklist2.
  ///
  /// In en, this message translates to:
  /// **'Financial Accounting'**
  String get accountbooklist2;

  /// No description provided for @accountbooklist3.
  ///
  /// In en, this message translates to:
  /// **'Financial Fundamentals'**
  String get accountbooklist3;

  /// No description provided for @accountbooklist4.
  ///
  /// In en, this message translates to:
  /// **'QuickBooks Online'**
  String get accountbooklist4;

  /// No description provided for @accountbooklist5.
  ///
  /// In en, this message translates to:
  /// **'IFRS'**
  String get accountbooklist5;

  /// No description provided for @accountbooklist6.
  ///
  /// In en, this message translates to:
  /// **'SAP FICO'**
  String get accountbooklist6;

  /// No description provided for @accountbooklist7.
  ///
  /// In en, this message translates to:
  /// **'Uniform CPA Examination'**
  String get accountbooklist7;

  /// No description provided for @accountbooklist8.
  ///
  /// In en, this message translates to:
  /// **'TallyPrime (Tally.ERP)'**
  String get accountbooklist8;

  /// No description provided for @complilist.
  ///
  /// In en, this message translates to:
  /// **'Anti-Money Laundering'**
  String get complilist;

  /// No description provided for @complilist1.
  ///
  /// In en, this message translates to:
  /// **'Sarbanes-Oxley (SOX)'**
  String get complilist1;

  /// No description provided for @complilist2.
  ///
  /// In en, this message translates to:
  /// **'Internal Controls'**
  String get complilist2;

  /// No description provided for @complilist3.
  ///
  /// In en, this message translates to:
  /// **'Internal Auditing'**
  String get complilist3;

  /// No description provided for @complilist4.
  ///
  /// In en, this message translates to:
  /// **'Trade and Commerce'**
  String get complilist4;

  /// No description provided for @complilist5.
  ///
  /// In en, this message translates to:
  /// **'Risk Management'**
  String get complilist5;

  /// No description provided for @complilist6.
  ///
  /// In en, this message translates to:
  /// **'Investment Banking'**
  String get complilist6;

  /// No description provided for @complilist7.
  ///
  /// In en, this message translates to:
  /// **'Fraud Analytics'**
  String get complilist7;

  /// No description provided for @complilist8.
  ///
  /// In en, this message translates to:
  /// **'IFRS'**
  String get complilist8;

  /// No description provided for @cryptolist.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency'**
  String get cryptolist;

  /// No description provided for @cryptolist1.
  ///
  /// In en, this message translates to:
  /// **'NFT (Non-Fungible Tokens)'**
  String get cryptolist1;

  /// No description provided for @cryptolist2.
  ///
  /// In en, this message translates to:
  /// **'Blockchain'**
  String get cryptolist2;

  /// No description provided for @cryptolist3.
  ///
  /// In en, this message translates to:
  /// **'Binance'**
  String get cryptolist3;

  /// No description provided for @cryptolist4.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get cryptolist4;

  /// No description provided for @cryptolist5.
  ///
  /// In en, this message translates to:
  /// **'Metaverse'**
  String get cryptolist5;

  /// No description provided for @cryptolist6.
  ///
  /// In en, this message translates to:
  /// **'Day Trading'**
  String get cryptolist6;

  /// No description provided for @cryptolist7.
  ///
  /// In en, this message translates to:
  /// **'Online Arbitrage'**
  String get cryptolist7;

  /// No description provided for @cryptolist8.
  ///
  /// In en, this message translates to:
  /// **'Stock Trading'**
  String get cryptolist8;

  /// No description provided for @ecolist.
  ///
  /// In en, this message translates to:
  /// **'Macroeconomics'**
  String get ecolist;

  /// No description provided for @ecolist1.
  ///
  /// In en, this message translates to:
  /// **'Microeconomics'**
  String get ecolist1;

  /// No description provided for @ecolist2.
  ///
  /// In en, this message translates to:
  /// **'Stata'**
  String get ecolist2;

  /// No description provided for @ecolist3.
  ///
  /// In en, this message translates to:
  /// **'Finance Fundamentals'**
  String get ecolist3;

  /// No description provided for @ecolist4.
  ///
  /// In en, this message translates to:
  /// **'Economics'**
  String get ecolist4;

  /// No description provided for @ecolist5.
  ///
  /// In en, this message translates to:
  /// **'Global Economics'**
  String get ecolist5;

  /// No description provided for @ecolist6.
  ///
  /// In en, this message translates to:
  /// **'Entrepreneurship Fundamentals'**
  String get ecolist6;

  /// No description provided for @ecolist7.
  ///
  /// In en, this message translates to:
  /// **'Circular Economy'**
  String get ecolist7;

  /// No description provided for @finanlist.
  ///
  /// In en, this message translates to:
  /// **'Personal Finance'**
  String get finanlist;

  /// No description provided for @finanlist1.
  ///
  /// In en, this message translates to:
  /// **'Investment Banking'**
  String get finanlist1;

  /// No description provided for @finanlist2.
  ///
  /// In en, this message translates to:
  /// **'Finance Fundamentals'**
  String get finanlist2;

  /// No description provided for @finanlist3.
  ///
  /// In en, this message translates to:
  /// **'CFA Chartered Financial Analyst'**
  String get finanlist3;

  /// No description provided for @finanlist4.
  ///
  /// In en, this message translates to:
  /// **'Financial Management'**
  String get finanlist4;

  /// No description provided for @finanlist5.
  ///
  /// In en, this message translates to:
  /// **'Corporate Finance'**
  String get finanlist5;

  /// No description provided for @finanlist6.
  ///
  /// In en, this message translates to:
  /// **'Financial Analysis'**
  String get finanlist6;

  /// No description provided for @finanlist7.
  ///
  /// In en, this message translates to:
  /// **'Banking'**
  String get finanlist7;

  /// No description provided for @finanlist8.
  ///
  /// In en, this message translates to:
  /// **'Private Equity'**
  String get finanlist8;

  /// No description provided for @financertlist.
  ///
  /// In en, this message translates to:
  /// **'CFA Chartered Financial Analyst'**
  String get financertlist;

  /// No description provided for @financertlist1.
  ///
  /// In en, this message translates to:
  /// **'Certified Management Accountant (CMA)'**
  String get financertlist1;

  /// No description provided for @financertlist2.
  ///
  /// In en, this message translates to:
  /// **'Financial Management'**
  String get financertlist2;

  /// No description provided for @financertlist3.
  ///
  /// In en, this message translates to:
  /// **'ANBIMA Certification'**
  String get financertlist3;

  /// No description provided for @financertlist4.
  ///
  /// In en, this message translates to:
  /// **'ACCA'**
  String get financertlist4;

  /// No description provided for @financertlist5.
  ///
  /// In en, this message translates to:
  /// **'Quantitative Finance'**
  String get financertlist5;

  /// No description provided for @financertlist6.
  ///
  /// In en, this message translates to:
  /// **'Internal Auditing'**
  String get financertlist6;

  /// No description provided for @financertlist7.
  ///
  /// In en, this message translates to:
  /// **'Fixed Income Securities'**
  String get financertlist7;

  /// No description provided for @financertlist8.
  ///
  /// In en, this message translates to:
  /// **'Financial Planning'**
  String get financertlist8;

  /// No description provided for @finanmodellist.
  ///
  /// In en, this message translates to:
  /// **'Financial Analysis'**
  String get finanmodellist;

  /// No description provided for @finanmodellist1.
  ///
  /// In en, this message translates to:
  /// **'Financial Modeling'**
  String get finanmodellist1;

  /// No description provided for @finanmodellist2.
  ///
  /// In en, this message translates to:
  /// **'Excel'**
  String get finanmodellist2;

  /// No description provided for @finanmodellist3.
  ///
  /// In en, this message translates to:
  /// **'Finance Fundamentals'**
  String get finanmodellist3;

  /// No description provided for @finanmodellist4.
  ///
  /// In en, this message translates to:
  /// **'Investment Banking'**
  String get finanmodellist4;

  /// No description provided for @finanmodellist5.
  ///
  /// In en, this message translates to:
  /// **'Accounting'**
  String get finanmodellist5;

  /// No description provided for @finanmodellist6.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get finanmodellist6;

  /// No description provided for @finanmodellist7.
  ///
  /// In en, this message translates to:
  /// **'Financial accounting'**
  String get finanmodellist7;

  /// No description provided for @finanmodellist8.
  ///
  /// In en, this message translates to:
  /// **'Company Valuation'**
  String get finanmodellist8;

  /// No description provided for @investlist.
  ///
  /// In en, this message translates to:
  /// **'Stock Trading'**
  String get investlist;

  /// No description provided for @investlist1.
  ///
  /// In en, this message translates to:
  /// **'Investing'**
  String get investlist1;

  /// No description provided for @investlist2.
  ///
  /// In en, this message translates to:
  /// **'Forex'**
  String get investlist2;

  /// No description provided for @investlist3.
  ///
  /// In en, this message translates to:
  /// **'Algorithmic Trading'**
  String get investlist3;

  /// No description provided for @investlist4.
  ///
  /// In en, this message translates to:
  /// **'Technical Analysis (finance)'**
  String get investlist4;

  /// No description provided for @investlist5.
  ///
  /// In en, this message translates to:
  /// **'Day Trading'**
  String get investlist5;

  /// No description provided for @investlist6.
  ///
  /// In en, this message translates to:
  /// **'Options Trading'**
  String get investlist6;

  /// No description provided for @investlist7.
  ///
  /// In en, this message translates to:
  /// **'Financial Markets'**
  String get investlist7;

  /// No description provided for @investlist8.
  ///
  /// In en, this message translates to:
  /// **'Financial Trading'**
  String get investlist8;

  /// No description provided for @moneylist.
  ///
  /// In en, this message translates to:
  /// **'QuickBooks Online'**
  String get moneylist;

  /// No description provided for @moneylist1.
  ///
  /// In en, this message translates to:
  /// **'QuickBooks'**
  String get moneylist1;

  /// No description provided for @moneylist2.
  ///
  /// In en, this message translates to:
  /// **'SAP FICO'**
  String get moneylist2;

  /// No description provided for @moneylist3.
  ///
  /// In en, this message translates to:
  /// **'Excel'**
  String get moneylist3;

  /// No description provided for @moneylist4.
  ///
  /// In en, this message translates to:
  /// **'Xero'**
  String get moneylist4;

  /// No description provided for @moneylist5.
  ///
  /// In en, this message translates to:
  /// **'QuickBooks Pro'**
  String get moneylist5;

  /// No description provided for @moneylist6.
  ///
  /// In en, this message translates to:
  /// **'Financial Analysis'**
  String get moneylist6;

  /// No description provided for @moneylist7.
  ///
  /// In en, this message translates to:
  /// **'Financial Modeling'**
  String get moneylist7;

  /// No description provided for @moneylist8.
  ///
  /// In en, this message translates to:
  /// **'Excel Analytics'**
  String get moneylist8;

  /// No description provided for @taxlist.
  ///
  /// In en, this message translates to:
  /// **'Tax Preparation'**
  String get taxlist;

  /// No description provided for @taxlist1.
  ///
  /// In en, this message translates to:
  /// **'Accounting'**
  String get taxlist1;

  /// No description provided for @taxlist2.
  ///
  /// In en, this message translates to:
  /// **'Goods and Services Tax'**
  String get taxlist2;

  /// No description provided for @taxlist3.
  ///
  /// In en, this message translates to:
  /// **'Value Added Tax (VAT)'**
  String get taxlist3;

  /// No description provided for @taxlist4.
  ///
  /// In en, this message translates to:
  /// **'Law'**
  String get taxlist4;

  /// No description provided for @taxlist5.
  ///
  /// In en, this message translates to:
  /// **'Financial Accounting'**
  String get taxlist5;

  /// No description provided for @taxlist6.
  ///
  /// In en, this message translates to:
  /// **'Home Business'**
  String get taxlist6;

  /// No description provided for @taxlist7.
  ///
  /// In en, this message translates to:
  /// **'Pricing'**
  String get taxlist7;

  /// No description provided for @taxlist8.
  ///
  /// In en, this message translates to:
  /// **'Business Strategy'**
  String get taxlist8;

  /// No description provided for @otherlist.
  ///
  /// In en, this message translates to:
  /// **'NFT (Non-Fungible Tokens)'**
  String get otherlist;

  /// No description provided for @otherlist1.
  ///
  /// In en, this message translates to:
  /// **'Stock Trading'**
  String get otherlist1;

  /// No description provided for @otherlist2.
  ///
  /// In en, this message translates to:
  /// **'Technical Analysis (finance)'**
  String get otherlist2;

  /// No description provided for @otherlist3.
  ///
  /// In en, this message translates to:
  /// **'Financial Planning'**
  String get otherlist3;

  /// No description provided for @otherlist4.
  ///
  /// In en, this message translates to:
  /// **'Personal Finance'**
  String get otherlist4;

  /// No description provided for @otherlist5.
  ///
  /// In en, this message translates to:
  /// **'Insurance'**
  String get otherlist5;

  /// No description provided for @otherlist6.
  ///
  /// In en, this message translates to:
  /// **'Credit Repair'**
  String get otherlist6;

  /// No description provided for @otherlist7.
  ///
  /// In en, this message translates to:
  /// **'Coaching'**
  String get otherlist7;

  /// No description provided for @otherlist8.
  ///
  /// In en, this message translates to:
  /// **'Finance Fundamentals'**
  String get otherlist8;

  /// No description provided for @itcertilist.
  ///
  /// In en, this message translates to:
  /// **'AWS Certification'**
  String get itcertilist;

  /// No description provided for @itcertilist1.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Certification'**
  String get itcertilist1;

  /// No description provided for @itcertilist2.
  ///
  /// In en, this message translates to:
  /// **'AWS Certified Solutions Architect-Associate'**
  String get itcertilist2;

  /// No description provided for @itcertilist3.
  ///
  /// In en, this message translates to:
  /// **'AWS Certified Cloud Practitioner'**
  String get itcertilist3;

  /// No description provided for @itcertilist4.
  ///
  /// In en, this message translates to:
  /// **'CompTIA A+'**
  String get itcertilist4;

  /// No description provided for @itcertilist5.
  ///
  /// In en, this message translates to:
  /// **'Amazon AWS'**
  String get itcertilist5;

  /// No description provided for @itcertilist6.
  ///
  /// In en, this message translates to:
  /// **'Cisco CCNA'**
  String get itcertilist6;

  /// No description provided for @itcertilist7.
  ///
  /// In en, this message translates to:
  /// **'CompTIA Security+'**
  String get itcertilist7;

  /// No description provided for @itcertilist8.
  ///
  /// In en, this message translates to:
  /// **'Microsoft AZ-900'**
  String get itcertilist8;

  /// No description provided for @networklist.
  ///
  /// In en, this message translates to:
  /// **'Ethical Hacking'**
  String get networklist;

  /// No description provided for @networklist1.
  ///
  /// In en, this message translates to:
  /// **'Cyber Security'**
  String get networklist1;

  /// No description provided for @networklist2.
  ///
  /// In en, this message translates to:
  /// **'Penetration Testing'**
  String get networklist2;

  /// No description provided for @networklist3.
  ///
  /// In en, this message translates to:
  /// **'Network Security'**
  String get networklist3;

  /// No description provided for @networklist4.
  ///
  /// In en, this message translates to:
  /// **'CompTIA Network+'**
  String get networklist4;

  /// No description provided for @networklist5.
  ///
  /// In en, this message translates to:
  /// **'Kubernetes'**
  String get networklist5;

  /// No description provided for @networklist6.
  ///
  /// In en, this message translates to:
  /// **'IT Networking Fundamentals'**
  String get networklist6;

  /// No description provided for @networklist7.
  ///
  /// In en, this message translates to:
  /// **'Terraform'**
  String get networklist7;

  /// No description provided for @networklist8.
  ///
  /// In en, this message translates to:
  /// **'HashiCorp Certified: Terraform Associate'**
  String get networklist8;

  /// No description provided for @hardwarelist.
  ///
  /// In en, this message translates to:
  /// **'PLC'**
  String get hardwarelist;

  /// No description provided for @hardwarelist1.
  ///
  /// In en, this message translates to:
  /// **'Arduino'**
  String get hardwarelist1;

  /// No description provided for @hardwarelist2.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get hardwarelist2;

  /// No description provided for @hardwarelist3.
  ///
  /// In en, this message translates to:
  /// **'Microcontroller'**
  String get hardwarelist3;

  /// No description provided for @hardwarelist4.
  ///
  /// In en, this message translates to:
  /// **'Embedded Systems'**
  String get hardwarelist4;

  /// No description provided for @hardwarelist5.
  ///
  /// In en, this message translates to:
  /// **'Raspberry Pi'**
  String get hardwarelist5;

  /// No description provided for @hardwarelist6.
  ///
  /// In en, this message translates to:
  /// **'Embedded C'**
  String get hardwarelist6;

  /// No description provided for @hardwarelist7.
  ///
  /// In en, this message translates to:
  /// **'Cell Phone Repair'**
  String get hardwarelist7;

  /// No description provided for @hardwarelist8.
  ///
  /// In en, this message translates to:
  /// **'FPGA'**
  String get hardwarelist8;

  /// No description provided for @operatesyslist.
  ///
  /// In en, this message translates to:
  /// **'Linux'**
  String get operatesyslist;

  /// No description provided for @operatesyslist1.
  ///
  /// In en, this message translates to:
  /// **'Linux Administration'**
  String get operatesyslist1;

  /// No description provided for @operatesyslist2.
  ///
  /// In en, this message translates to:
  /// **'Windows Server'**
  String get operatesyslist2;

  /// No description provided for @operatesyslist3.
  ///
  /// In en, this message translates to:
  /// **'Shell Scripting'**
  String get operatesyslist3;

  /// No description provided for @operatesyslist4.
  ///
  /// In en, this message translates to:
  /// **'Active Directory'**
  String get operatesyslist4;

  /// No description provided for @operatesyslist5.
  ///
  /// In en, this message translates to:
  /// **'PowerShell'**
  String get operatesyslist5;

  /// No description provided for @operatesyslist6.
  ///
  /// In en, this message translates to:
  /// **'Linux Command Line'**
  String get operatesyslist6;

  /// No description provided for @operatesyslist7.
  ///
  /// In en, this message translates to:
  /// **'VMware Vsphere'**
  String get operatesyslist7;

  /// No description provided for @operatesyslist8.
  ///
  /// In en, this message translates to:
  /// **'Operating System Creation'**
  String get operatesyslist8;

  /// No description provided for @otheritlist.
  ///
  /// In en, this message translates to:
  /// **'DevOps'**
  String get otheritlist;

  /// No description provided for @otheritlist1.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get otheritlist1;

  /// No description provided for @otheritlist2.
  ///
  /// In en, this message translates to:
  /// **'Kubernetes'**
  String get otheritlist2;

  /// No description provided for @otheritlist3.
  ///
  /// In en, this message translates to:
  /// **'Docker'**
  String get otheritlist3;

  /// No description provided for @otheritlist4.
  ///
  /// In en, this message translates to:
  /// **'Algorithms'**
  String get otheritlist4;

  /// No description provided for @otheritlist5.
  ///
  /// In en, this message translates to:
  /// **'Microservices'**
  String get otheritlist5;

  /// No description provided for @otheritlist6.
  ///
  /// In en, this message translates to:
  /// **'SQL'**
  String get otheritlist6;

  /// No description provided for @otheritlist7.
  ///
  /// In en, this message translates to:
  /// **'Terraform'**
  String get otheritlist7;

  /// No description provided for @otheritlist8.
  ///
  /// In en, this message translates to:
  /// **'React'**
  String get otheritlist8;

  /// No description provided for @microlist.
  ///
  /// In en, this message translates to:
  /// **'Excel'**
  String get microlist;

  /// No description provided for @microlist1.
  ///
  /// In en, this message translates to:
  /// **'Excel VBA'**
  String get microlist1;

  /// No description provided for @microlist2.
  ///
  /// In en, this message translates to:
  /// **'Excel Formulas and Functions'**
  String get microlist2;

  /// No description provided for @microlist3.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Office'**
  String get microlist3;

  /// No description provided for @microlist4.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Power BI'**
  String get microlist4;

  /// No description provided for @microlist5.
  ///
  /// In en, this message translates to:
  /// **'PowerPoint'**
  String get microlist5;

  /// No description provided for @microlist6.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get microlist6;

  /// No description provided for @microlist7.
  ///
  /// In en, this message translates to:
  /// **'Pivot Tables'**
  String get microlist7;

  /// No description provided for @microlist8.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Word'**
  String get microlist8;

  /// No description provided for @applelist.
  ///
  /// In en, this message translates to:
  /// **'iMovie'**
  String get applelist;

  /// No description provided for @applelist1.
  ///
  /// In en, this message translates to:
  /// **'Mac Basics'**
  String get applelist1;

  /// No description provided for @applelist2.
  ///
  /// In en, this message translates to:
  /// **'Apple Keynote'**
  String get applelist2;

  /// No description provided for @applelist3.
  ///
  /// In en, this message translates to:
  /// **'macOS'**
  String get applelist3;

  /// No description provided for @applelist4.
  ///
  /// In en, this message translates to:
  /// **'Numbers For Mac'**
  String get applelist4;

  /// No description provided for @applelist5.
  ///
  /// In en, this message translates to:
  /// **'Apple Products Basics'**
  String get applelist5;

  /// No description provided for @applelist6.
  ///
  /// In en, this message translates to:
  /// **'Mac Pages'**
  String get applelist6;

  /// No description provided for @applelist7.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Office 365'**
  String get applelist7;

  /// No description provided for @applelist8.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Word'**
  String get applelist8;

  /// No description provided for @googlelist.
  ///
  /// In en, this message translates to:
  /// **'Google Sheets'**
  String get googlelist;

  /// No description provided for @googlelist1.
  ///
  /// In en, this message translates to:
  /// **'Google Workspace (G Suite)'**
  String get googlelist1;

  /// No description provided for @googlelist2.
  ///
  /// In en, this message translates to:
  /// **'Google Looker'**
  String get googlelist2;

  /// No description provided for @googlelist3.
  ///
  /// In en, this message translates to:
  /// **'Google Data Studio'**
  String get googlelist3;

  /// No description provided for @googlelist4.
  ///
  /// In en, this message translates to:
  /// **'Google Drive'**
  String get googlelist4;

  /// No description provided for @googlelist5.
  ///
  /// In en, this message translates to:
  /// **'Google Apps Script'**
  String get googlelist5;

  /// No description provided for @googlelist6.
  ///
  /// In en, this message translates to:
  /// **'Gmail Productivity'**
  String get googlelist6;

  /// No description provided for @googlelist7.
  ///
  /// In en, this message translates to:
  /// **'Google Docs'**
  String get googlelist7;

  /// No description provided for @googlelist8.
  ///
  /// In en, this message translates to:
  /// **'Google office'**
  String get googlelist8;

  /// No description provided for @saplist.
  ///
  /// In en, this message translates to:
  /// **'SAP ABAP'**
  String get saplist;

  /// No description provided for @saplist1.
  ///
  /// In en, this message translates to:
  /// **'SAP S/4HANA'**
  String get saplist1;

  /// No description provided for @saplist2.
  ///
  /// In en, this message translates to:
  /// **'SAP MM'**
  String get saplist2;

  /// No description provided for @saplist3.
  ///
  /// In en, this message translates to:
  /// **'SAP SD'**
  String get saplist3;

  /// No description provided for @saplist4.
  ///
  /// In en, this message translates to:
  /// **'SAP HCM'**
  String get saplist4;

  /// No description provided for @saplist5.
  ///
  /// In en, this message translates to:
  /// **'SAP Financial Accounting'**
  String get saplist5;

  /// No description provided for @saplist6.
  ///
  /// In en, this message translates to:
  /// **'SAP FICO'**
  String get saplist6;

  /// No description provided for @saplist7.
  ///
  /// In en, this message translates to:
  /// **'SAP Plant Maintenance'**
  String get saplist7;

  /// No description provided for @oraclelist.
  ///
  /// In en, this message translates to:
  /// **'Oracle SQL'**
  String get oraclelist;

  /// No description provided for @oraclelist1.
  ///
  /// In en, this message translates to:
  /// **'PI/SQL'**
  String get oraclelist1;

  /// No description provided for @oraclelist2.
  ///
  /// In en, this message translates to:
  /// **'Oracle Database'**
  String get oraclelist2;

  /// No description provided for @oraclelist3.
  ///
  /// In en, this message translates to:
  /// **'Oracle Primavera'**
  String get oraclelist3;

  /// No description provided for @oraclelist4.
  ///
  /// In en, this message translates to:
  /// **'Database Administration'**
  String get oraclelist4;

  /// No description provided for @oraclelist5.
  ///
  /// In en, this message translates to:
  /// **'Oracle Data Integrator'**
  String get oraclelist5;

  /// No description provided for @oraclelist6.
  ///
  /// In en, this message translates to:
  /// **'Oracle E-Business Suite'**
  String get oraclelist6;

  /// No description provided for @oraclelist7.
  ///
  /// In en, this message translates to:
  /// **'Project Management'**
  String get oraclelist7;

  /// No description provided for @oraclelist8.
  ///
  /// In en, this message translates to:
  /// **'SQL'**
  String get oraclelist8;

  /// No description provided for @otherofficelist.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get otherofficelist;

  /// No description provided for @otherofficelist1.
  ///
  /// In en, this message translates to:
  /// **'ServiceNow'**
  String get otherofficelist1;

  /// No description provided for @otherofficelist2.
  ///
  /// In en, this message translates to:
  /// **'Programming Fundamentals'**
  String get otherofficelist2;

  /// No description provided for @otherofficelist3.
  ///
  /// In en, this message translates to:
  /// **'Typing'**
  String get otherofficelist3;

  /// No description provided for @otherofficelist4.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Power BI'**
  String get otherofficelist4;

  /// No description provided for @otherofficelist5.
  ///
  /// In en, this message translates to:
  /// **'Computer Skills'**
  String get otherofficelist5;

  /// No description provided for @otherofficelist6.
  ///
  /// In en, this message translates to:
  /// **'Python Scripting'**
  String get otherofficelist6;

  /// No description provided for @otherofficelist7.
  ///
  /// In en, this message translates to:
  /// **'Automation'**
  String get otherofficelist7;

  /// No description provided for @otherofficelist8.
  ///
  /// In en, this message translates to:
  /// **'Construction Estimation'**
  String get otherofficelist8;

  /// No description provided for @personaltransformlist.
  ///
  /// In en, this message translates to:
  /// **'Life Coach Training'**
  String get personaltransformlist;

  /// No description provided for @personaltransformlist1.
  ///
  /// In en, this message translates to:
  /// **'Neuro-Linguistic Programming'**
  String get personaltransformlist1;

  /// No description provided for @personaltransformlist2.
  ///
  /// In en, this message translates to:
  /// **'Personal Development'**
  String get personaltransformlist2;

  /// No description provided for @personaltransformlist3.
  ///
  /// In en, this message translates to:
  /// **'Life Purpose'**
  String get personaltransformlist3;

  /// No description provided for @personaltransformlist4.
  ///
  /// In en, this message translates to:
  /// **'Mindfulness'**
  String get personaltransformlist4;

  /// No description provided for @personaltransformlist5.
  ///
  /// In en, this message translates to:
  /// **'Sound Therapy'**
  String get personaltransformlist5;

  /// No description provided for @personaltransformlist6.
  ///
  /// In en, this message translates to:
  /// **'Emotional Intelligence'**
  String get personaltransformlist6;

  /// No description provided for @personaltransformlist7.
  ///
  /// In en, this message translates to:
  /// **'Coaching'**
  String get personaltransformlist7;

  /// No description provided for @personalproductlist.
  ///
  /// In en, this message translates to:
  /// **'Time Management'**
  String get personalproductlist;

  /// No description provided for @personalproductlist1.
  ///
  /// In en, this message translates to:
  /// **'Notion Workspace'**
  String get personalproductlist1;

  /// No description provided for @personalproductlist2.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get personalproductlist2;

  /// No description provided for @personalproductlist3.
  ///
  /// In en, this message translates to:
  /// **'Speed Reading'**
  String get personalproductlist3;

  /// No description provided for @personalproductlist4.
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get personalproductlist4;

  /// No description provided for @personalproductlist5.
  ///
  /// In en, this message translates to:
  /// **'Focus Mastery'**
  String get personalproductlist5;

  /// No description provided for @personalproductlist6.
  ///
  /// In en, this message translates to:
  /// **'Procrastination'**
  String get personalproductlist6;

  /// No description provided for @personalproductlist7.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Project'**
  String get personalproductlist7;

  /// No description provided for @leadershiplist.
  ///
  /// In en, this message translates to:
  /// **'Management Skills'**
  String get leadershiplist;

  /// No description provided for @leadershiplist1.
  ///
  /// In en, this message translates to:
  /// **'Manager Training'**
  String get leadershiplist1;

  /// No description provided for @leadershiplist2.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get leadershiplist2;

  /// No description provided for @leadershiplist3.
  ///
  /// In en, this message translates to:
  /// **'Coaching'**
  String get leadershiplist3;

  /// No description provided for @leadershiplist4.
  ///
  /// In en, this message translates to:
  /// **'Conflict Management'**
  String get leadershiplist4;

  /// No description provided for @leadershiplist5.
  ///
  /// In en, this message translates to:
  /// **'Relationship Building'**
  String get leadershiplist5;

  /// No description provided for @leadershiplist6.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get leadershiplist6;

  /// No description provided for @leadershiplist7.
  ///
  /// In en, this message translates to:
  /// **'Listening Skills'**
  String get leadershiplist7;

  /// No description provided for @careerlist.
  ///
  /// In en, this message translates to:
  /// **'Interviewing Skills'**
  String get careerlist;

  /// No description provided for @careerlist1.
  ///
  /// In en, this message translates to:
  /// **'Job Search'**
  String get careerlist1;

  /// No description provided for @careerlist2.
  ///
  /// In en, this message translates to:
  /// **'Business Communication'**
  String get careerlist2;

  /// No description provided for @careerlist3.
  ///
  /// In en, this message translates to:
  /// **'Business Writing'**
  String get careerlist3;

  /// No description provided for @careerlist4.
  ///
  /// In en, this message translates to:
  /// **'Resume and CV Writing'**
  String get careerlist4;

  /// No description provided for @careerlist5.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get careerlist5;

  /// No description provided for @careerlist6.
  ///
  /// In en, this message translates to:
  /// **'Voice Acting'**
  String get careerlist6;

  /// No description provided for @careerlist7.
  ///
  /// In en, this message translates to:
  /// **'Social Media Management'**
  String get careerlist7;

  /// No description provided for @parentinglist.
  ///
  /// In en, this message translates to:
  /// **'Parenting'**
  String get parentinglist;

  /// No description provided for @parentinglist1.
  ///
  /// In en, this message translates to:
  /// **'Relationship Building'**
  String get parentinglist1;

  /// No description provided for @parentinglist2.
  ///
  /// In en, this message translates to:
  /// **'Child Psychology'**
  String get parentinglist2;

  /// No description provided for @parentinglist3.
  ///
  /// In en, this message translates to:
  /// **'Marriage'**
  String get parentinglist3;

  /// No description provided for @parentinglist4.
  ///
  /// In en, this message translates to:
  /// **'Couples Counselling'**
  String get parentinglist4;

  /// No description provided for @parentinglist5.
  ///
  /// In en, this message translates to:
  /// **'Love'**
  String get parentinglist5;

  /// No description provided for @parentinglist6.
  ///
  /// In en, this message translates to:
  /// **'Early Childhood Education'**
  String get parentinglist6;

  /// No description provided for @parentinglist7.
  ///
  /// In en, this message translates to:
  /// **'Counselling'**
  String get parentinglist7;

  /// No description provided for @parentinglist8.
  ///
  /// In en, this message translates to:
  /// **'Autism'**
  String get parentinglist8;

  /// No description provided for @happinesslist.
  ///
  /// In en, this message translates to:
  /// **'Life Coach Training'**
  String get happinesslist;

  /// No description provided for @happinesslist1.
  ///
  /// In en, this message translates to:
  /// **'Positive Psychology'**
  String get happinesslist1;

  /// No description provided for @happinesslist2.
  ///
  /// In en, this message translates to:
  /// **'Manifestation and Law of Attraction'**
  String get happinesslist2;

  /// No description provided for @happinesslist3.
  ///
  /// In en, this message translates to:
  /// **'Childhood Trauma Healing'**
  String get happinesslist3;

  /// No description provided for @happinesslist4.
  ///
  /// In en, this message translates to:
  /// **'Eye Movement Desensitization and Reprocessing (EMDR)'**
  String get happinesslist4;

  /// No description provided for @happinesslist5.
  ///
  /// In en, this message translates to:
  /// **'CBT Cognitive Behavioral Therapy'**
  String get happinesslist5;

  /// No description provided for @happinesslist6.
  ///
  /// In en, this message translates to:
  /// **'Neuro-Linguistic Programming'**
  String get happinesslist6;

  /// No description provided for @happinesslist7.
  ///
  /// In en, this message translates to:
  /// **'Anxiety Management'**
  String get happinesslist7;

  /// No description provided for @esotericlist.
  ///
  /// In en, this message translates to:
  /// **'Reiki'**
  String get esotericlist;

  /// No description provided for @esotericlist1.
  ///
  /// In en, this message translates to:
  /// **'Energy Healing'**
  String get esotericlist1;

  /// No description provided for @esotericlist2.
  ///
  /// In en, this message translates to:
  /// **'Tarot Reading'**
  String get esotericlist2;

  /// No description provided for @esotericlist3.
  ///
  /// In en, this message translates to:
  /// **'Psychic'**
  String get esotericlist3;

  /// No description provided for @esotericlist4.
  ///
  /// In en, this message translates to:
  /// **'Spiritual Healing'**
  String get esotericlist4;

  /// No description provided for @esotericlist5.
  ///
  /// In en, this message translates to:
  /// **'Hypnotherapy'**
  String get esotericlist5;

  /// No description provided for @esotericlist6.
  ///
  /// In en, this message translates to:
  /// **'Astrology'**
  String get esotericlist6;

  /// No description provided for @esotericlist7.
  ///
  /// In en, this message translates to:
  /// **'Crystal Energy'**
  String get esotericlist7;

  /// No description provided for @esotericlist8.
  ///
  /// In en, this message translates to:
  /// **'Chakra'**
  String get esotericlist8;

  /// No description provided for @religionlist.
  ///
  /// In en, this message translates to:
  /// **'Spirituality'**
  String get religionlist;

  /// No description provided for @religionlist1.
  ///
  /// In en, this message translates to:
  /// **'The Bible'**
  String get religionlist1;

  /// No description provided for @religionlist2.
  ///
  /// In en, this message translates to:
  /// **'Life Coach Training'**
  String get religionlist2;

  /// No description provided for @religionlist3.
  ///
  /// In en, this message translates to:
  /// **'Mindfulness'**
  String get religionlist3;

  /// No description provided for @religionlist4.
  ///
  /// In en, this message translates to:
  /// **'Tarot Reading'**
  String get religionlist4;

  /// No description provided for @religionlist5.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get religionlist5;

  /// No description provided for @religionlist6.
  ///
  /// In en, this message translates to:
  /// **'Spiritual Healing'**
  String get religionlist6;

  /// No description provided for @religionlist7.
  ///
  /// In en, this message translates to:
  /// **'Kabbalah'**
  String get religionlist7;

  /// No description provided for @religionlist8.
  ///
  /// In en, this message translates to:
  /// **'Witchcraft'**
  String get religionlist8;

  /// No description provided for @personalbrandlist.
  ///
  /// In en, this message translates to:
  /// **'Personal Branding'**
  String get personalbrandlist;

  /// No description provided for @personalbrandlist1.
  ///
  /// In en, this message translates to:
  /// **'Business Communication'**
  String get personalbrandlist1;

  /// No description provided for @personalbrandlist2.
  ///
  /// In en, this message translates to:
  /// **'Meetings'**
  String get personalbrandlist2;

  /// No description provided for @personalbrandlist3.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get personalbrandlist3;

  /// No description provided for @personalbrandlist4.
  ///
  /// In en, this message translates to:
  /// **'Career Development'**
  String get personalbrandlist4;

  /// No description provided for @personalbrandlist5.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get personalbrandlist5;

  /// No description provided for @personalbrandlist6.
  ///
  /// In en, this message translates to:
  /// **'Dentistry'**
  String get personalbrandlist6;

  /// No description provided for @personalbrandlist7.
  ///
  /// In en, this message translates to:
  /// **'Writing a Book'**
  String get personalbrandlist7;

  /// No description provided for @personalbrandlist8.
  ///
  /// In en, this message translates to:
  /// **'Voice Training'**
  String get personalbrandlist8;

  /// No description provided for @creativitylist.
  ///
  /// In en, this message translates to:
  /// **'Creative Writing'**
  String get creativitylist;

  /// No description provided for @creativitylist1.
  ///
  /// In en, this message translates to:
  /// **'Screenwriting and Scriptwriting'**
  String get creativitylist1;

  /// No description provided for @creativitylist2.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get creativitylist2;

  /// No description provided for @creativitylist3.
  ///
  /// In en, this message translates to:
  /// **'Art Therapy'**
  String get creativitylist3;

  /// No description provided for @creativitylist4.
  ///
  /// In en, this message translates to:
  /// **'Writing a Book'**
  String get creativitylist4;

  /// No description provided for @creativitylist5.
  ///
  /// In en, this message translates to:
  /// **'Storytelling'**
  String get creativitylist5;

  /// No description provided for @creativitylist6.
  ///
  /// In en, this message translates to:
  /// **'Novel Writing'**
  String get creativitylist6;

  /// No description provided for @creativitylist7.
  ///
  /// In en, this message translates to:
  /// **'Fiiction Writing'**
  String get creativitylist7;

  /// No description provided for @influencelist.
  ///
  /// In en, this message translates to:
  /// **'Voice Training'**
  String get influencelist;

  /// No description provided for @influencelist1.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get influencelist1;

  /// No description provided for @influencelist2.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get influencelist2;

  /// No description provided for @influencelist3.
  ///
  /// In en, this message translates to:
  /// **'Persuasion'**
  String get influencelist3;

  /// No description provided for @influencelist4.
  ///
  /// In en, this message translates to:
  /// **'Negotiation'**
  String get influencelist4;

  /// No description provided for @influencelist5.
  ///
  /// In en, this message translates to:
  /// **'Body Lannguage'**
  String get influencelist5;

  /// No description provided for @influencelist6.
  ///
  /// In en, this message translates to:
  /// **'Presentation Skills'**
  String get influencelist6;

  /// No description provided for @influencelist7.
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get influencelist7;

  /// No description provided for @influencelist8.
  ///
  /// In en, this message translates to:
  /// **'INfluence Skills'**
  String get influencelist8;

  /// No description provided for @selfesteemlist.
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get selfesteemlist;

  /// No description provided for @selfesteemlist1.
  ///
  /// In en, this message translates to:
  /// **'Self-Esteem'**
  String get selfesteemlist1;

  /// No description provided for @selfesteemlist2.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get selfesteemlist2;

  /// No description provided for @selfesteemlist3.
  ///
  /// In en, this message translates to:
  /// **'Social Skills'**
  String get selfesteemlist3;

  /// No description provided for @selfesteemlist4.
  ///
  /// In en, this message translates to:
  /// **'Fashion'**
  String get selfesteemlist4;

  /// No description provided for @selfesteemlist5.
  ///
  /// In en, this message translates to:
  /// **'Dance'**
  String get selfesteemlist5;

  /// No description provided for @selfesteemlist6.
  ///
  /// In en, this message translates to:
  /// **'Personal Development'**
  String get selfesteemlist6;

  /// No description provided for @selfesteemlist7.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get selfesteemlist7;

  /// No description provided for @selfesteemlist8.
  ///
  /// In en, this message translates to:
  /// **'Self-Awareness'**
  String get selfesteemlist8;

  /// No description provided for @stressmanagelist.
  ///
  /// In en, this message translates to:
  /// **'Emotional Intelligence'**
  String get stressmanagelist;

  /// No description provided for @stressmanagelist1.
  ///
  /// In en, this message translates to:
  /// **'Anxiety Management'**
  String get stressmanagelist1;

  /// No description provided for @stressmanagelist2.
  ///
  /// In en, this message translates to:
  /// **'Anger Management'**
  String get stressmanagelist2;

  /// No description provided for @stressmanagelist3.
  ///
  /// In en, this message translates to:
  /// **'Resilience'**
  String get stressmanagelist3;

  /// No description provided for @stressmanagelist4.
  ///
  /// In en, this message translates to:
  /// **'Master Your Enotions'**
  String get stressmanagelist4;

  /// No description provided for @stressmanagelist5.
  ///
  /// In en, this message translates to:
  /// **'EFT (Emotional Freedom Techniques)'**
  String get stressmanagelist5;

  /// No description provided for @stressmanagelist6.
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get stressmanagelist6;

  /// No description provided for @memorylist.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get memorylist;

  /// No description provided for @memorylist1.
  ///
  /// In en, this message translates to:
  /// **'Speed Reading'**
  String get memorylist1;

  /// No description provided for @memorylist2.
  ///
  /// In en, this message translates to:
  /// **'Learning Strategies'**
  String get memorylist2;

  /// No description provided for @memorylist3.
  ///
  /// In en, this message translates to:
  /// **'Study Skills'**
  String get memorylist3;

  /// No description provided for @memorylist4.
  ///
  /// In en, this message translates to:
  /// **'Focus Mastery'**
  String get memorylist4;

  /// No description provided for @memorylist5.
  ///
  /// In en, this message translates to:
  /// **'Mind Mapping'**
  String get memorylist5;

  /// No description provided for @memorylist6.
  ///
  /// In en, this message translates to:
  /// **'Learning Disability'**
  String get memorylist6;

  /// No description provided for @memorylist7.
  ///
  /// In en, this message translates to:
  /// **'ADHD'**
  String get memorylist7;

  /// No description provided for @memorylist8.
  ///
  /// In en, this message translates to:
  /// **'Personal Productivity'**
  String get memorylist8;

  /// No description provided for @motivationlist.
  ///
  /// In en, this message translates to:
  /// **'Neuroplasticity'**
  String get motivationlist;

  /// No description provided for @motivationlist1.
  ///
  /// In en, this message translates to:
  /// **'Procrastination'**
  String get motivationlist1;

  /// No description provided for @motivationlist2.
  ///
  /// In en, this message translates to:
  /// **'Goal Setting'**
  String get motivationlist2;

  /// No description provided for @motivationlist3.
  ///
  /// In en, this message translates to:
  /// **'Neuro-Linguistic Programming'**
  String get motivationlist3;

  /// No description provided for @motivationlist4.
  ///
  /// In en, this message translates to:
  /// **'Lotto'**
  String get motivationlist4;

  /// No description provided for @motivationlist5.
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get motivationlist5;

  /// No description provided for @motivationlist6.
  ///
  /// In en, this message translates to:
  /// **'Personal Success'**
  String get motivationlist6;

  /// No description provided for @motivationlist7.
  ///
  /// In en, this message translates to:
  /// **'Confidence'**
  String get motivationlist7;

  /// No description provided for @otherpersonlist.
  ///
  /// In en, this message translates to:
  /// **'Freight Broker'**
  String get otherpersonlist;

  /// No description provided for @otherpersonlist1.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get otherpersonlist1;

  /// No description provided for @otherpersonlist2.
  ///
  /// In en, this message translates to:
  /// **'American Accent'**
  String get otherpersonlist2;

  /// No description provided for @otherpersonlist3.
  ///
  /// In en, this message translates to:
  /// **'Car Repair'**
  String get otherpersonlist3;

  /// No description provided for @otherpersonlist4.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get otherpersonlist4;

  /// No description provided for @otherpersonlist5.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get otherpersonlist5;

  /// No description provided for @otherpersonlist6.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get otherpersonlist6;

  /// No description provided for @otherpersonlist7.
  ///
  /// In en, this message translates to:
  /// **'Private Pilot Ground Test'**
  String get otherpersonlist7;

  /// No description provided for @otherpersonlist8.
  ///
  /// In en, this message translates to:
  /// **'Handwriting Analysis'**
  String get otherpersonlist8;

  /// No description provided for @webdesignlist.
  ///
  /// In en, this message translates to:
  /// **'Mobile App Design'**
  String get webdesignlist;

  /// No description provided for @webdesignlist1.
  ///
  /// In en, this message translates to:
  /// **'WordPress'**
  String get webdesignlist1;

  /// No description provided for @webdesignlist2.
  ///
  /// In en, this message translates to:
  /// **'CSS'**
  String get webdesignlist2;

  /// No description provided for @webdesignlist3.
  ///
  /// In en, this message translates to:
  /// **'User Interface'**
  String get webdesignlist3;

  /// No description provided for @webdesignlist4.
  ///
  /// In en, this message translates to:
  /// **'HTML'**
  String get webdesignlist4;

  /// No description provided for @webdesignlist5.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get webdesignlist5;

  /// No description provided for @webdesignlist6.
  ///
  /// In en, this message translates to:
  /// **'Photoshop'**
  String get webdesignlist6;

  /// No description provided for @webdesignlist7.
  ///
  /// In en, this message translates to:
  /// **'HTML5'**
  String get webdesignlist7;

  /// No description provided for @graphiclist.
  ///
  /// In en, this message translates to:
  /// **'Graphic Design'**
  String get graphiclist;

  /// No description provided for @graphiclist1.
  ///
  /// In en, this message translates to:
  /// **'Photoshop'**
  String get graphiclist1;

  /// No description provided for @graphiclist2.
  ///
  /// In en, this message translates to:
  /// **'Adobe Illustrator'**
  String get graphiclist2;

  /// No description provided for @graphiclist3.
  ///
  /// In en, this message translates to:
  /// **'Drawing'**
  String get graphiclist3;

  /// No description provided for @graphiclist4.
  ///
  /// In en, this message translates to:
  /// **'Canva'**
  String get graphiclist4;

  /// No description provided for @graphiclist5.
  ///
  /// In en, this message translates to:
  /// **'Digital Printing'**
  String get graphiclist5;

  /// No description provided for @graphiclist6.
  ///
  /// In en, this message translates to:
  /// **'InDesign'**
  String get graphiclist6;

  /// No description provided for @graphiclist7.
  ///
  /// In en, this message translates to:
  /// **'Design Theory'**
  String get graphiclist7;

  /// No description provided for @graphiclist8.
  ///
  /// In en, this message translates to:
  /// **'Procreate Digital Illustration App'**
  String get graphiclist8;

  /// No description provided for @designtoollist.
  ///
  /// In en, this message translates to:
  /// **'Photoshop'**
  String get designtoollist;

  /// No description provided for @designtoollist1.
  ///
  /// In en, this message translates to:
  /// **'AutoCAD'**
  String get designtoollist1;

  /// No description provided for @designtoollist2.
  ///
  /// In en, this message translates to:
  /// **'Procreate Digital Illustration App'**
  String get designtoollist2;

  /// No description provided for @designtoollist3.
  ///
  /// In en, this message translates to:
  /// **'After Effects'**
  String get designtoollist3;

  /// No description provided for @designtoollist4.
  ///
  /// In en, this message translates to:
  /// **'Adobe Premiere'**
  String get designtoollist4;

  /// No description provided for @designtoollist5.
  ///
  /// In en, this message translates to:
  /// **'Adobe Illustrator'**
  String get designtoollist5;

  /// No description provided for @designtoollist6.
  ///
  /// In en, this message translates to:
  /// **'SOLIDWORKS'**
  String get designtoollist6;

  /// No description provided for @designtoollist7.
  ///
  /// In en, this message translates to:
  /// **'Digital Art'**
  String get designtoollist7;

  /// No description provided for @designtoollist8.
  ///
  /// In en, this message translates to:
  /// **'Affinity Designer'**
  String get designtoollist8;

  /// No description provided for @userexplist.
  ///
  /// In en, this message translates to:
  /// **'User Interface'**
  String get userexplist;

  /// No description provided for @userexplist1.
  ///
  /// In en, this message translates to:
  /// **'Adobe XD'**
  String get userexplist1;

  /// No description provided for @userexplist2.
  ///
  /// In en, this message translates to:
  /// **'Figma'**
  String get userexplist2;

  /// No description provided for @userexplist3.
  ///
  /// In en, this message translates to:
  /// **'Dsign Thinking'**
  String get userexplist3;

  /// No description provided for @userexplist4.
  ///
  /// In en, this message translates to:
  /// **'Product Design'**
  String get userexplist4;

  /// No description provided for @userexplist5.
  ///
  /// In en, this message translates to:
  /// **'Web Design'**
  String get userexplist5;

  /// No description provided for @userexplist6.
  ///
  /// In en, this message translates to:
  /// **'Web Accessibility'**
  String get userexplist6;

  /// No description provided for @userexplist7.
  ///
  /// In en, this message translates to:
  /// **'User Research'**
  String get userexplist7;

  /// No description provided for @gamedesignlist.
  ///
  /// In en, this message translates to:
  /// **'Unreal Engine'**
  String get gamedesignlist;

  /// No description provided for @gamedesignlist1.
  ///
  /// In en, this message translates to:
  /// **'Pixel Art'**
  String get gamedesignlist1;

  /// No description provided for @gamedesignlist2.
  ///
  /// In en, this message translates to:
  /// **'Unity'**
  String get gamedesignlist2;

  /// No description provided for @gamedesignlist3.
  ///
  /// In en, this message translates to:
  /// **'Game Development Fundamentals'**
  String get gamedesignlist3;

  /// No description provided for @gamedesignlist4.
  ///
  /// In en, this message translates to:
  /// **'VFX Visual Effects'**
  String get gamedesignlist4;

  /// No description provided for @gamedesignlist5.
  ///
  /// In en, this message translates to:
  /// **'Digital Painting'**
  String get gamedesignlist5;

  /// No description provided for @gamedesignlist6.
  ///
  /// In en, this message translates to:
  /// **'Blender'**
  String get gamedesignlist6;

  /// No description provided for @gamedesignlist7.
  ///
  /// In en, this message translates to:
  /// **'Level Design'**
  String get gamedesignlist7;

  /// No description provided for @danimationlist.
  ///
  /// In en, this message translates to:
  /// **'Blender'**
  String get danimationlist;

  /// No description provided for @danimationlist1.
  ///
  /// In en, this message translates to:
  /// **'3D Modeling'**
  String get danimationlist1;

  /// No description provided for @danimationlist2.
  ///
  /// In en, this message translates to:
  /// **'After Effects'**
  String get danimationlist2;

  /// No description provided for @danimationlist3.
  ///
  /// In en, this message translates to:
  /// **'Motion Graphics'**
  String get danimationlist3;

  /// No description provided for @danimationlist4.
  ///
  /// In en, this message translates to:
  /// **'3D Animation'**
  String get danimationlist4;

  /// No description provided for @danimationlist5.
  ///
  /// In en, this message translates to:
  /// **'zBrush'**
  String get danimationlist5;

  /// No description provided for @danimationlist6.
  ///
  /// In en, this message translates to:
  /// **'Fusion 360'**
  String get danimationlist6;

  /// No description provided for @danimationlist7.
  ///
  /// In en, this message translates to:
  /// **'Character Design'**
  String get danimationlist7;

  /// No description provided for @danimationlist8.
  ///
  /// In en, this message translates to:
  /// **'Animation'**
  String get danimationlist8;

  /// No description provided for @fashiondesignlist.
  ///
  /// In en, this message translates to:
  /// **'Fashion'**
  String get fashiondesignlist;

  /// No description provided for @fashiondesignlist1.
  ///
  /// In en, this message translates to:
  /// **'Sewing'**
  String get fashiondesignlist1;

  /// No description provided for @fashiondesignlist2.
  ///
  /// In en, this message translates to:
  /// **'Adobe Illustrator'**
  String get fashiondesignlist2;

  /// No description provided for @fashiondesignlist3.
  ///
  /// In en, this message translates to:
  /// **'Jewelry Design'**
  String get fashiondesignlist3;

  /// No description provided for @fashiondesignlist4.
  ///
  /// In en, this message translates to:
  /// **'Jewelry Making'**
  String get fashiondesignlist4;

  /// No description provided for @fashiondesignlist5.
  ///
  /// In en, this message translates to:
  /// **'Textiles'**
  String get fashiondesignlist5;

  /// No description provided for @fashiondesignlist6.
  ///
  /// In en, this message translates to:
  /// **'Marvelous Designer'**
  String get fashiondesignlist6;

  /// No description provided for @fashiondesignlist7.
  ///
  /// In en, this message translates to:
  /// **'T-Shirt Printing'**
  String get fashiondesignlist7;

  /// No description provided for @architecturallist.
  ///
  /// In en, this message translates to:
  /// **'AutoCAD'**
  String get architecturallist;

  /// No description provided for @architecturallist1.
  ///
  /// In en, this message translates to:
  /// **'Revit'**
  String get architecturallist1;

  /// No description provided for @architecturallist2.
  ///
  /// In en, this message translates to:
  /// **'Blender'**
  String get architecturallist2;

  /// No description provided for @architecturallist3.
  ///
  /// In en, this message translates to:
  /// **'Sketchup'**
  String get architecturallist3;

  /// No description provided for @architecturallist4.
  ///
  /// In en, this message translates to:
  /// **'LEED'**
  String get architecturallist4;

  /// No description provided for @architecturallist5.
  ///
  /// In en, this message translates to:
  /// **'ARCHICAD'**
  String get architecturallist5;

  /// No description provided for @architecturallist6.
  ///
  /// In en, this message translates to:
  /// **'CAD Software'**
  String get architecturallist6;

  /// No description provided for @architecturallist7.
  ///
  /// In en, this message translates to:
  /// **'Technical Drawing'**
  String get architecturallist7;

  /// No description provided for @interiorlist.
  ///
  /// In en, this message translates to:
  /// **'Sketchup'**
  String get interiorlist;

  /// No description provided for @interiorlist1.
  ///
  /// In en, this message translates to:
  /// **'Color Theory'**
  String get interiorlist1;

  /// No description provided for @interiorlist2.
  ///
  /// In en, this message translates to:
  /// **'HVAC'**
  String get interiorlist2;

  /// No description provided for @interiorlist3.
  ///
  /// In en, this message translates to:
  /// **'Lighting Design'**
  String get interiorlist3;

  /// No description provided for @interiorlist4.
  ///
  /// In en, this message translates to:
  /// **'Electrical Engineering'**
  String get interiorlist4;

  /// No description provided for @interiorlist5.
  ///
  /// In en, this message translates to:
  /// **'Feng Shui'**
  String get interiorlist5;

  /// No description provided for @interiorlist6.
  ///
  /// In en, this message translates to:
  /// **'Blender'**
  String get interiorlist6;

  /// No description provided for @interiorlist7.
  ///
  /// In en, this message translates to:
  /// **'Minimalist Lifestyle'**
  String get interiorlist7;

  /// No description provided for @otherdeslist.
  ///
  /// In en, this message translates to:
  /// **'Character Design'**
  String get otherdeslist;

  /// No description provided for @otherdeslist1.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get otherdeslist1;

  /// No description provided for @otherdeslist2.
  ///
  /// In en, this message translates to:
  /// **'PCB Design'**
  String get otherdeslist2;

  /// No description provided for @otherdeslist3.
  ///
  /// In en, this message translates to:
  /// **'Drawing'**
  String get otherdeslist3;

  /// No description provided for @otherdeslist4.
  ///
  /// In en, this message translates to:
  /// **'Digital Painting'**
  String get otherdeslist4;

  /// No description provided for @otherdeslist5.
  ///
  /// In en, this message translates to:
  /// **'System Design Interview'**
  String get otherdeslist5;

  /// No description provided for @otherdeslist6.
  ///
  /// In en, this message translates to:
  /// **'Comic Book Creation'**
  String get otherdeslist6;

  /// No description provided for @otherdeslist7.
  ///
  /// In en, this message translates to:
  /// **'Perspective Drawing'**
  String get otherdeslist7;

  /// No description provided for @otherdeslist8.
  ///
  /// In en, this message translates to:
  /// **'Geometric Dimensioning and Tolerancing (GD&T)'**
  String get otherdeslist8;

  /// No description provided for @digitallist.
  ///
  /// In en, this message translates to:
  /// **'Social Media Marketing'**
  String get digitallist;

  /// No description provided for @digitallist1.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get digitallist1;

  /// No description provided for @digitallist2.
  ///
  /// In en, this message translates to:
  /// **'Internet Marketing'**
  String get digitallist2;

  /// No description provided for @digitallist3.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get digitallist3;

  /// No description provided for @digitallist4.
  ///
  /// In en, this message translates to:
  /// **'Email Marketing'**
  String get digitallist4;

  /// No description provided for @digitallist5.
  ///
  /// In en, this message translates to:
  /// **'Google Analytics'**
  String get digitallist5;

  /// No description provided for @digitallist6.
  ///
  /// In en, this message translates to:
  /// **'Startup'**
  String get digitallist6;

  /// No description provided for @digitallist7.
  ///
  /// In en, this message translates to:
  /// **'YouTube Marketing'**
  String get digitallist7;

  /// No description provided for @searchenginelist.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get searchenginelist;

  /// No description provided for @searchenginelist1.
  ///
  /// In en, this message translates to:
  /// **'WordPress'**
  String get searchenginelist1;

  /// No description provided for @searchenginelist2.
  ///
  /// In en, this message translates to:
  /// **'Keyword Research'**
  String get searchenginelist2;

  /// No description provided for @searchenginelist3.
  ///
  /// In en, this message translates to:
  /// **'Local SEO'**
  String get searchenginelist3;

  /// No description provided for @searchenginelist4.
  ///
  /// In en, this message translates to:
  /// **'Google My Business - Business Profile'**
  String get searchenginelist4;

  /// No description provided for @searchenginelist5.
  ///
  /// In en, this message translates to:
  /// **'SEO Audit'**
  String get searchenginelist5;

  /// No description provided for @searchenginelist6.
  ///
  /// In en, this message translates to:
  /// **'Link Building'**
  String get searchenginelist6;

  /// No description provided for @searchenginelist7.
  ///
  /// In en, this message translates to:
  /// **'Image SEO'**
  String get searchenginelist7;

  /// No description provided for @searchenginelist8.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get searchenginelist8;

  /// No description provided for @socialmediamarketlist.
  ///
  /// In en, this message translates to:
  /// **'Instagram Marketing'**
  String get socialmediamarketlist;

  /// No description provided for @socialmediamarketlist1.
  ///
  /// In en, this message translates to:
  /// **'Facebook Ads'**
  String get socialmediamarketlist1;

  /// No description provided for @socialmediamarketlist2.
  ///
  /// In en, this message translates to:
  /// **'Facebook Marketing'**
  String get socialmediamarketlist2;

  /// No description provided for @socialmediamarketlist3.
  ///
  /// In en, this message translates to:
  /// **'TikTok Marketing'**
  String get socialmediamarketlist3;

  /// No description provided for @socialmediamarketlist4.
  ///
  /// In en, this message translates to:
  /// **'Social Media Management'**
  String get socialmediamarketlist4;

  /// No description provided for @socialmediamarketlist5.
  ///
  /// In en, this message translates to:
  /// **'PPC Advertising'**
  String get socialmediamarketlist5;

  /// No description provided for @socialmediamarketlist6.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get socialmediamarketlist6;

  /// No description provided for @socialmediamarketlist7.
  ///
  /// In en, this message translates to:
  /// **'Twitter Marketing'**
  String get socialmediamarketlist7;

  /// No description provided for @brandinglist.
  ///
  /// In en, this message translates to:
  /// **'Business Branding'**
  String get brandinglist;

  /// No description provided for @brandinglist1.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get brandinglist1;

  /// No description provided for @brandinglist2.
  ///
  /// In en, this message translates to:
  /// **'YouTube Marketing'**
  String get brandinglist2;

  /// No description provided for @brandinglist3.
  ///
  /// In en, this message translates to:
  /// **'Personal Branding'**
  String get brandinglist3;

  /// No description provided for @brandinglist4.
  ///
  /// In en, this message translates to:
  /// **'Brand Management'**
  String get brandinglist4;

  /// No description provided for @brandinglist5.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get brandinglist5;

  /// No description provided for @brandinglist6.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get brandinglist6;

  /// No description provided for @brandinglist7.
  ///
  /// In en, this message translates to:
  /// **'Video Creation'**
  String get brandinglist7;

  /// No description provided for @brandinglist8.
  ///
  /// In en, this message translates to:
  /// **'DaVinci Resolve'**
  String get brandinglist8;

  /// No description provided for @marketingfundalist.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get marketingfundalist;

  /// No description provided for @marketingfundalist1.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get marketingfundalist1;

  /// No description provided for @marketingfundalist2.
  ///
  /// In en, this message translates to:
  /// **'Marketing Management'**
  String get marketingfundalist2;

  /// No description provided for @marketingfundalist3.
  ///
  /// In en, this message translates to:
  /// **'Coaching and Consulting Business'**
  String get marketingfundalist3;

  /// No description provided for @marketingfundalist4.
  ///
  /// In en, this message translates to:
  /// **'Marketing Plan'**
  String get marketingfundalist4;

  /// No description provided for @marketingfundalist5.
  ///
  /// In en, this message translates to:
  /// **'Marketing Psychology'**
  String get marketingfundalist5;

  /// No description provided for @marketingfundalist6.
  ///
  /// In en, this message translates to:
  /// **'Event Planning'**
  String get marketingfundalist6;

  /// No description provided for @marketingfundalist7.
  ///
  /// In en, this message translates to:
  /// **'Salesforce Certified Marketing Cloud Administrator'**
  String get marketingfundalist7;

  /// No description provided for @marketingfundalist8.
  ///
  /// In en, this message translates to:
  /// **'Marketing Analytics'**
  String get marketingfundalist8;

  /// No description provided for @marketinganalysislist.
  ///
  /// In en, this message translates to:
  /// **'Google Analytics'**
  String get marketinganalysislist;

  /// No description provided for @marketinganalysislist1.
  ///
  /// In en, this message translates to:
  /// **'Google Analytics Individual Qualification (IQ)'**
  String get marketinganalysislist1;

  /// No description provided for @marketinganalysislist2.
  ///
  /// In en, this message translates to:
  /// **'Marketing Analytics'**
  String get marketinganalysislist2;

  /// No description provided for @marketinganalysislist3.
  ///
  /// In en, this message translates to:
  /// **'Google Tag Manager'**
  String get marketinganalysislist3;

  /// No description provided for @marketinganalysislist4.
  ///
  /// In en, this message translates to:
  /// **'HubSpot'**
  String get marketinganalysislist4;

  /// No description provided for @marketinganalysislist5.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get marketinganalysislist5;

  /// No description provided for @marketinganalysislist6.
  ///
  /// In en, this message translates to:
  /// **'Marketo'**
  String get marketinganalysislist6;

  /// No description provided for @marketinganalysislist7.
  ///
  /// In en, this message translates to:
  /// **'Google Analytics Reports'**
  String get marketinganalysislist7;

  /// No description provided for @marketinganalysislist8.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get marketinganalysislist8;

  /// No description provided for @publiclist.
  ///
  /// In en, this message translates to:
  /// **'Communication Skills'**
  String get publiclist;

  /// No description provided for @publiclist1.
  ///
  /// In en, this message translates to:
  /// **'Business Communication'**
  String get publiclist1;

  /// No description provided for @publiclist2.
  ///
  /// In en, this message translates to:
  /// **'Media Training'**
  String get publiclist2;

  /// No description provided for @publiclist3.
  ///
  /// In en, this message translates to:
  /// **'Event Planning'**
  String get publiclist3;

  /// No description provided for @publiclist4.
  ///
  /// In en, this message translates to:
  /// **'Public Speaking'**
  String get publiclist4;

  /// No description provided for @publiclist5.
  ///
  /// In en, this message translates to:
  /// **'Podcasting'**
  String get publiclist5;

  /// No description provided for @publiclist6.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get publiclist6;

  /// No description provided for @publiclist7.
  ///
  /// In en, this message translates to:
  /// **'Startup'**
  String get publiclist7;

  /// No description provided for @paidadverlist.
  ///
  /// In en, this message translates to:
  /// **'Google Ads (Adwords)'**
  String get paidadverlist;

  /// No description provided for @paidadverlist1.
  ///
  /// In en, this message translates to:
  /// **'Google Ads (AdWords) Certification'**
  String get paidadverlist1;

  /// No description provided for @paidadverlist2.
  ///
  /// In en, this message translates to:
  /// **'Facebook Ads'**
  String get paidadverlist2;

  /// No description provided for @paidadverlist3.
  ///
  /// In en, this message translates to:
  /// **'PPC Advertising'**
  String get paidadverlist3;

  /// No description provided for @paidadverlist4.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get paidadverlist4;

  /// No description provided for @paidadverlist5.
  ///
  /// In en, this message translates to:
  /// **'Programmatic Advertising'**
  String get paidadverlist5;

  /// No description provided for @paidadverlist6.
  ///
  /// In en, this message translates to:
  /// **'Retargeting'**
  String get paidadverlist6;

  /// No description provided for @paidadverlist7.
  ///
  /// In en, this message translates to:
  /// **'YouTube Marketing'**
  String get paidadverlist7;

  /// No description provided for @paidadverlist8.
  ///
  /// In en, this message translates to:
  /// **'Facebook Marketing'**
  String get paidadverlist8;

  /// No description provided for @videomobilelist.
  ///
  /// In en, this message translates to:
  /// **'YouTube Marketing'**
  String get videomobilelist;

  /// No description provided for @videomobilelist1.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get videomobilelist1;

  /// No description provided for @videomobilelist2.
  ///
  /// In en, this message translates to:
  /// **'Video Creation'**
  String get videomobilelist2;

  /// No description provided for @videomobilelist3.
  ///
  /// In en, this message translates to:
  /// **'PowerPoint'**
  String get videomobilelist3;

  /// No description provided for @videomobilelist4.
  ///
  /// In en, this message translates to:
  /// **'Video Editing'**
  String get videomobilelist4;

  /// No description provided for @videomobilelist5.
  ///
  /// In en, this message translates to:
  /// **'App Marketing'**
  String get videomobilelist5;

  /// No description provided for @videomobilelist6.
  ///
  /// In en, this message translates to:
  /// **'Video Marketing'**
  String get videomobilelist6;

  /// No description provided for @videomobilelist7.
  ///
  /// In en, this message translates to:
  /// **'App Store Optimization'**
  String get videomobilelist7;

  /// No description provided for @videomobilelist8.
  ///
  /// In en, this message translates to:
  /// **'Storytelling'**
  String get videomobilelist8;

  /// No description provided for @contentmarketlist.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get contentmarketlist;

  /// No description provided for @contentmarketlist1.
  ///
  /// In en, this message translates to:
  /// **'Content Writing'**
  String get contentmarketlist1;

  /// No description provided for @contentmarketlist2.
  ///
  /// In en, this message translates to:
  /// **'Blogging'**
  String get contentmarketlist2;

  /// No description provided for @contentmarketlist3.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get contentmarketlist3;

  /// No description provided for @contentmarketlist4.
  ///
  /// In en, this message translates to:
  /// **'Content Creation'**
  String get contentmarketlist4;

  /// No description provided for @contentmarketlist5.
  ///
  /// In en, this message translates to:
  /// **'Freelancing'**
  String get contentmarketlist5;

  /// No description provided for @contentmarketlist6.
  ///
  /// In en, this message translates to:
  /// **'Business Writing'**
  String get contentmarketlist6;

  /// No description provided for @contentmarketlist7.
  ///
  /// In en, this message translates to:
  /// **'Technical Writing'**
  String get contentmarketlist7;

  /// No description provided for @growthhacklist.
  ///
  /// In en, this message translates to:
  /// **'Digital Marketing'**
  String get growthhacklist;

  /// No description provided for @growthhacklist1.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get growthhacklist1;

  /// No description provided for @growthhacklist2.
  ///
  /// In en, this message translates to:
  /// **'Facebook Ads'**
  String get growthhacklist2;

  /// No description provided for @growthhacklist3.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get growthhacklist3;

  /// No description provided for @growthhacklist4.
  ///
  /// In en, this message translates to:
  /// **'Passive Income'**
  String get growthhacklist4;

  /// No description provided for @growthhacklist5.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get growthhacklist5;

  /// No description provided for @growthhacklist6.
  ///
  /// In en, this message translates to:
  /// **'App Marketing'**
  String get growthhacklist6;

  /// No description provided for @growthhacklist7.
  ///
  /// In en, this message translates to:
  /// **'Account-Based Marketing (ABM)'**
  String get growthhacklist7;

  /// No description provided for @affiliatelist.
  ///
  /// In en, this message translates to:
  /// **'ClickBank'**
  String get affiliatelist;

  /// No description provided for @affiliatelist1.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get affiliatelist1;

  /// No description provided for @affiliatelist2.
  ///
  /// In en, this message translates to:
  /// **'Amazon Affiliate Marketing'**
  String get affiliatelist2;

  /// No description provided for @affiliatelist3.
  ///
  /// In en, this message translates to:
  /// **'CPA Marketing'**
  String get affiliatelist3;

  /// No description provided for @affiliatelist4.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get affiliatelist4;

  /// No description provided for @affiliatelist5.
  ///
  /// In en, this message translates to:
  /// **'Network Marketing'**
  String get affiliatelist5;

  /// No description provided for @affiliatelist6.
  ///
  /// In en, this message translates to:
  /// **'Passive Income'**
  String get affiliatelist6;

  /// No description provided for @affiliatelist7.
  ///
  /// In en, this message translates to:
  /// **'AdSense'**
  String get affiliatelist7;

  /// No description provided for @productplanlist.
  ///
  /// In en, this message translates to:
  /// **'Marketing Plan'**
  String get productplanlist;

  /// No description provided for @productplanlist1.
  ///
  /// In en, this message translates to:
  /// **'SaaS'**
  String get productplanlist1;

  /// No description provided for @productplanlist2.
  ///
  /// In en, this message translates to:
  /// **'Amazon Kindle Direct Publishing (KDP)'**
  String get productplanlist2;

  /// No description provided for @productplanlist3.
  ///
  /// In en, this message translates to:
  /// **'Self-Publishing'**
  String get productplanlist3;

  /// No description provided for @productplanlist4.
  ///
  /// In en, this message translates to:
  /// **'Product Management'**
  String get productplanlist4;

  /// No description provided for @productplanlist5.
  ///
  /// In en, this message translates to:
  /// **'Marketing Management'**
  String get productplanlist5;

  /// No description provided for @productplanlist6.
  ///
  /// In en, this message translates to:
  /// **'Facebook Ads'**
  String get productplanlist6;

  /// No description provided for @productplanlist7.
  ///
  /// In en, this message translates to:
  /// **'Voice-Over'**
  String get productplanlist7;

  /// No description provided for @productplanlist8.
  ///
  /// In en, this message translates to:
  /// **'Lead Generation'**
  String get productplanlist8;

  /// No description provided for @othermarketlist.
  ///
  /// In en, this message translates to:
  /// **'Copywriting'**
  String get othermarketlist;

  /// No description provided for @othermarketlist1.
  ///
  /// In en, this message translates to:
  /// **'Conversion Rate Optimization'**
  String get othermarketlist1;

  /// No description provided for @othermarketlist2.
  ///
  /// In en, this message translates to:
  /// **'Event Planning'**
  String get othermarketlist2;

  /// No description provided for @othermarketlist3.
  ///
  /// In en, this message translates to:
  /// **'Digital Marketing'**
  String get othermarketlist3;

  /// No description provided for @othermarketlist4.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get othermarketlist4;

  /// No description provided for @othermarketlist5.
  ///
  /// In en, this message translates to:
  /// **'Customer Experience Management'**
  String get othermarketlist5;

  /// No description provided for @othermarketlist6.
  ///
  /// In en, this message translates to:
  /// **'Marketing Psychology'**
  String get othermarketlist6;

  /// No description provided for @othermarketlist7.
  ///
  /// In en, this message translates to:
  /// **'Social Media Marketing'**
  String get othermarketlist7;

  /// No description provided for @othermarketlist8.
  ///
  /// In en, this message translates to:
  /// **'FundRaising'**
  String get othermarketlist8;

  /// No description provided for @artscraftlist.
  ///
  /// In en, this message translates to:
  /// **'Drawing'**
  String get artscraftlist;

  /// No description provided for @artscraftlist1.
  ///
  /// In en, this message translates to:
  /// **'WaterColor Painting'**
  String get artscraftlist1;

  /// No description provided for @artscraftlist2.
  ///
  /// In en, this message translates to:
  /// **'Painting'**
  String get artscraftlist2;

  /// No description provided for @artscraftlist3.
  ///
  /// In en, this message translates to:
  /// **'Figure Drawing'**
  String get artscraftlist3;

  /// No description provided for @artscraftlist4.
  ///
  /// In en, this message translates to:
  /// **'Sketching'**
  String get artscraftlist4;

  /// No description provided for @artscraftlist5.
  ///
  /// In en, this message translates to:
  /// **'Pencil Drawing'**
  String get artscraftlist5;

  /// No description provided for @artscraftlist6.
  ///
  /// In en, this message translates to:
  /// **'Acrylic Painting'**
  String get artscraftlist6;

  /// No description provided for @artscraftlist7.
  ///
  /// In en, this message translates to:
  /// **'Procreate Digital Illustration App'**
  String get artscraftlist7;

  /// No description provided for @artscraftlist8.
  ///
  /// In en, this message translates to:
  /// **'Portraiture'**
  String get artscraftlist8;

  /// No description provided for @beautylist.
  ///
  /// In en, this message translates to:
  /// **'Makeup Artistry'**
  String get beautylist;

  /// No description provided for @beautylist1.
  ///
  /// In en, this message translates to:
  /// **'Beauty'**
  String get beautylist1;

  /// No description provided for @beautylist2.
  ///
  /// In en, this message translates to:
  /// **'Skincare'**
  String get beautylist2;

  /// No description provided for @beautylist3.
  ///
  /// In en, this message translates to:
  /// **'Nail Art'**
  String get beautylist3;

  /// No description provided for @beautylist4.
  ///
  /// In en, this message translates to:
  /// **'Hair Styling'**
  String get beautylist4;

  /// No description provided for @beautylist5.
  ///
  /// In en, this message translates to:
  /// **'Cosmetics'**
  String get beautylist5;

  /// No description provided for @beautylist6.
  ///
  /// In en, this message translates to:
  /// **'Perfume'**
  String get beautylist6;

  /// No description provided for @beautylist7.
  ///
  /// In en, this message translates to:
  /// **'Tattoo Art'**
  String get beautylist7;

  /// No description provided for @beautylist8.
  ///
  /// In en, this message translates to:
  /// **'Hair Removal'**
  String get beautylist8;

  /// No description provided for @foodlist.
  ///
  /// In en, this message translates to:
  /// **'Cooking'**
  String get foodlist;

  /// No description provided for @foodlist1.
  ///
  /// In en, this message translates to:
  /// **'Coffee'**
  String get foodlist1;

  /// No description provided for @foodlist2.
  ///
  /// In en, this message translates to:
  /// **'Bartending'**
  String get foodlist2;

  /// No description provided for @foodlist3.
  ///
  /// In en, this message translates to:
  /// **'Baking'**
  String get foodlist3;

  /// No description provided for @foodlist4.
  ///
  /// In en, this message translates to:
  /// **'Wine Application and Oenology'**
  String get foodlist4;

  /// No description provided for @foodlist5.
  ///
  /// In en, this message translates to:
  /// **'Cake Baking'**
  String get foodlist5;

  /// No description provided for @foodlist6.
  ///
  /// In en, this message translates to:
  /// **'Bread Baking'**
  String get foodlist6;

  /// No description provided for @foodlist7.
  ///
  /// In en, this message translates to:
  /// **'Sourdough Bread Baking'**
  String get foodlist7;

  /// No description provided for @foodlist8.
  ///
  /// In en, this message translates to:
  /// **'Indian Cooking'**
  String get foodlist8;

  /// No description provided for @gaminglist.
  ///
  /// In en, this message translates to:
  /// **'Chess'**
  String get gaminglist;

  /// No description provided for @gaminglist1.
  ///
  /// In en, this message translates to:
  /// **'Poker'**
  String get gaminglist1;

  /// No description provided for @gaminglist2.
  ///
  /// In en, this message translates to:
  /// **'eSports'**
  String get gaminglist2;

  /// No description provided for @gaminglist3.
  ///
  /// In en, this message translates to:
  /// **'Twitch'**
  String get gaminglist3;

  /// No description provided for @gaminglist4.
  ///
  /// In en, this message translates to:
  /// **'League of Legends'**
  String get gaminglist4;

  /// No description provided for @gaminglist5.
  ///
  /// In en, this message translates to:
  /// **'Open Broadcaster'**
  String get gaminglist5;

  /// No description provided for @gaminglist6.
  ///
  /// In en, this message translates to:
  /// **'Free-2-Play Games'**
  String get gaminglist6;

  /// No description provided for @gaminglist7.
  ///
  /// In en, this message translates to:
  /// **'Live Streaming'**
  String get gaminglist7;

  /// No description provided for @homeimplist.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get homeimplist;

  /// No description provided for @homeimplist1.
  ///
  /// In en, this message translates to:
  /// **'Home Repair'**
  String get homeimplist1;

  /// No description provided for @homeimplist2.
  ///
  /// In en, this message translates to:
  /// **'Permaculture'**
  String get homeimplist2;

  /// No description provided for @homeimplist3.
  ///
  /// In en, this message translates to:
  /// **'Farming'**
  String get homeimplist3;

  /// No description provided for @homeimplist4.
  ///
  /// In en, this message translates to:
  /// **'Gardening'**
  String get homeimplist4;

  /// No description provided for @homeimplist5.
  ///
  /// In en, this message translates to:
  /// **'Electrical Wiring'**
  String get homeimplist5;

  /// No description provided for @homeimplist6.
  ///
  /// In en, this message translates to:
  /// **'Hydropponics'**
  String get homeimplist6;

  /// No description provided for @homeimplist7.
  ///
  /// In en, this message translates to:
  /// **'Feng Shui'**
  String get homeimplist7;

  /// No description provided for @homeimplist8.
  ///
  /// In en, this message translates to:
  /// **'Beekeeping'**
  String get homeimplist8;

  /// No description provided for @petcarelist.
  ///
  /// In en, this message translates to:
  /// **'Dog Training'**
  String get petcarelist;

  /// No description provided for @petcarelist1.
  ///
  /// In en, this message translates to:
  /// **'Dog Care'**
  String get petcarelist1;

  /// No description provided for @petcarelist2.
  ///
  /// In en, this message translates to:
  /// **'Dog Behavior'**
  String get petcarelist2;

  /// No description provided for @petcarelist3.
  ///
  /// In en, this message translates to:
  /// **'Horsemanship'**
  String get petcarelist3;

  /// No description provided for @petcarelist4.
  ///
  /// In en, this message translates to:
  /// **'Pet Care'**
  String get petcarelist4;

  /// No description provided for @petcarelist5.
  ///
  /// In en, this message translates to:
  /// **'Pet Training'**
  String get petcarelist5;

  /// No description provided for @petcarelist6.
  ///
  /// In en, this message translates to:
  /// **'Cat Behavior'**
  String get petcarelist6;

  /// No description provided for @petcarelist7.
  ///
  /// In en, this message translates to:
  /// **'Animal Nutrition'**
  String get petcarelist7;

  /// No description provided for @petcarelist8.
  ///
  /// In en, this message translates to:
  /// **'Acupressure'**
  String get petcarelist8;

  /// No description provided for @travellist.
  ///
  /// In en, this message translates to:
  /// **'Travel Tips'**
  String get travellist;

  /// No description provided for @travellist1.
  ///
  /// In en, this message translates to:
  /// **'Travel Writing'**
  String get travellist1;

  /// No description provided for @travellist2.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get travellist2;

  /// No description provided for @travellist3.
  ///
  /// In en, this message translates to:
  /// **'Travel Hacking'**
  String get travellist3;

  /// No description provided for @travellist4.
  ///
  /// In en, this message translates to:
  /// **'Digital Nomad'**
  String get travellist4;

  /// No description provided for @travellist5.
  ///
  /// In en, this message translates to:
  /// **'Airbnb Hosting'**
  String get travellist5;

  /// No description provided for @travellist6.
  ///
  /// In en, this message translates to:
  /// **'Journaling'**
  String get travellist6;

  /// No description provided for @travellist7.
  ///
  /// In en, this message translates to:
  /// **'Sailing'**
  String get travellist7;

  /// No description provided for @travellist8.
  ///
  /// In en, this message translates to:
  /// **'Travel Business'**
  String get travellist8;

  /// No description provided for @lifestylelist.
  ///
  /// In en, this message translates to:
  /// **'Neuro-Linguistic Programming'**
  String get lifestylelist;

  /// No description provided for @lifestylelist1.
  ///
  /// In en, this message translates to:
  /// **'EFT (Emotional Freedom Techniques)'**
  String get lifestylelist1;

  /// No description provided for @lifestylelist2.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get lifestylelist2;

  /// No description provided for @lifestylelist3.
  ///
  /// In en, this message translates to:
  /// **'Emotional Intelligence'**
  String get lifestylelist3;

  /// No description provided for @lifestylelist4.
  ///
  /// In en, this message translates to:
  /// **'Herbalism'**
  String get lifestylelist4;

  /// No description provided for @lifestylelist5.
  ///
  /// In en, this message translates to:
  /// **'CBT Cognitive Behavioral Therapy'**
  String get lifestylelist5;

  /// No description provided for @lifestylelist6.
  ///
  /// In en, this message translates to:
  /// **'Ho\'oponopono'**
  String get lifestylelist6;

  /// No description provided for @lifestylelist7.
  ///
  /// In en, this message translates to:
  /// **'Life Coach Training'**
  String get lifestylelist7;

  /// No description provided for @lifestylelist8.
  ///
  /// In en, this message translates to:
  /// **'Mindfulness'**
  String get lifestylelist8;

  /// No description provided for @digitalphotolist.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get digitalphotolist;

  /// No description provided for @digitalphotolist1.
  ///
  /// In en, this message translates to:
  /// **'iPhone Photography'**
  String get digitalphotolist1;

  /// No description provided for @digitalphotolist2.
  ///
  /// In en, this message translates to:
  /// **'Digital Camera Functionality'**
  String get digitalphotolist2;

  /// No description provided for @digitalphotolist3.
  ///
  /// In en, this message translates to:
  /// **'Mobile Photography'**
  String get digitalphotolist3;

  /// No description provided for @digitalphotolist4.
  ///
  /// In en, this message translates to:
  /// **'Adobe Lightroom'**
  String get digitalphotolist4;

  /// No description provided for @digitalphotolist5.
  ///
  /// In en, this message translates to:
  /// **'3D Animation'**
  String get digitalphotolist5;

  /// No description provided for @digitalphotolist6.
  ///
  /// In en, this message translates to:
  /// **'GIMP'**
  String get digitalphotolist6;

  /// No description provided for @digitalphotolist7.
  ///
  /// In en, this message translates to:
  /// **'Affinity Photo'**
  String get digitalphotolist7;

  /// No description provided for @photographylist.
  ///
  /// In en, this message translates to:
  /// **'Photography Composition'**
  String get photographylist;

  /// No description provided for @photographylist1.
  ///
  /// In en, this message translates to:
  /// **'Affinity Photo'**
  String get photographylist1;

  /// No description provided for @photographylist2.
  ///
  /// In en, this message translates to:
  /// **'Digital Photography'**
  String get photographylist2;

  /// No description provided for @photographylist3.
  ///
  /// In en, this message translates to:
  /// **'Mobile Photography'**
  String get photographylist3;

  /// No description provided for @photographylist4.
  ///
  /// In en, this message translates to:
  /// **'iPhone Photography'**
  String get photographylist4;

  /// No description provided for @photographylist5.
  ///
  /// In en, this message translates to:
  /// **'Digital Camera Functionality'**
  String get photographylist5;

  /// No description provided for @photographylist6.
  ///
  /// In en, this message translates to:
  /// **'Food Photography'**
  String get photographylist6;

  /// No description provided for @photographylist7.
  ///
  /// In en, this message translates to:
  /// **'Product Photography'**
  String get photographylist7;

  /// No description provided for @portraitlist.
  ///
  /// In en, this message translates to:
  /// **'Posing'**
  String get portraitlist;

  /// No description provided for @portraitlist1.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get portraitlist1;

  /// No description provided for @portraitlist2.
  ///
  /// In en, this message translates to:
  /// **'Photoshop Retouching'**
  String get portraitlist2;

  /// No description provided for @portraitlist3.
  ///
  /// In en, this message translates to:
  /// **'Photography Lighting'**
  String get portraitlist3;

  /// No description provided for @portraitlist4.
  ///
  /// In en, this message translates to:
  /// **'Family Portrait Photography'**
  String get portraitlist4;

  /// No description provided for @portraitlist5.
  ///
  /// In en, this message translates to:
  /// **'Photography Business'**
  String get portraitlist5;

  /// No description provided for @portraitlist6.
  ///
  /// In en, this message translates to:
  /// **'Photoshop'**
  String get portraitlist6;

  /// No description provided for @portraitlist7.
  ///
  /// In en, this message translates to:
  /// **'Flash Photograph'**
  String get portraitlist7;

  /// No description provided for @phototoollist.
  ///
  /// In en, this message translates to:
  /// **'Adobe Lightroom'**
  String get phototoollist;

  /// No description provided for @phototoollist1.
  ///
  /// In en, this message translates to:
  /// **'Photoshop'**
  String get phototoollist1;

  /// No description provided for @phototoollist2.
  ///
  /// In en, this message translates to:
  /// **'Image Editing'**
  String get phototoollist2;

  /// No description provided for @phototoollist3.
  ///
  /// In en, this message translates to:
  /// **'Affinity Photo'**
  String get phototoollist3;

  /// No description provided for @phototoollist4.
  ///
  /// In en, this message translates to:
  /// **'Photoshop Retouching'**
  String get phototoollist4;

  /// No description provided for @phototoollist5.
  ///
  /// In en, this message translates to:
  /// **'Digital Camera Functionality'**
  String get phototoollist5;

  /// No description provided for @phototoollist6.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get phototoollist6;

  /// No description provided for @phototoollist7.
  ///
  /// In en, this message translates to:
  /// **'Drone and Aerial Photography'**
  String get phototoollist7;

  /// No description provided for @phototoollist8.
  ///
  /// In en, this message translates to:
  /// **'Capture One'**
  String get phototoollist8;

  /// No description provided for @commerciallist.
  ///
  /// In en, this message translates to:
  /// **'Real Estate Photography'**
  String get commerciallist;

  /// No description provided for @commerciallist1.
  ///
  /// In en, this message translates to:
  /// **'Architecture Photography'**
  String get commerciallist1;

  /// No description provided for @commerciallist2.
  ///
  /// In en, this message translates to:
  /// **'Photography Business'**
  String get commerciallist2;

  /// No description provided for @commerciallist3.
  ///
  /// In en, this message translates to:
  /// **'Wedding Photography'**
  String get commerciallist3;

  /// No description provided for @commerciallist4.
  ///
  /// In en, this message translates to:
  /// **'Food Photography'**
  String get commerciallist4;

  /// No description provided for @commerciallist5.
  ///
  /// In en, this message translates to:
  /// **'Product Photography'**
  String get commerciallist5;

  /// No description provided for @commerciallist6.
  ///
  /// In en, this message translates to:
  /// **'Photoshop Retouching'**
  String get commerciallist6;

  /// No description provided for @commerciallist7.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get commerciallist7;

  /// No description provided for @commerciallist8.
  ///
  /// In en, this message translates to:
  /// **'Marketing Strategy'**
  String get commerciallist8;

  /// No description provided for @videodesignlist.
  ///
  /// In en, this message translates to:
  /// **'Video Editing'**
  String get videodesignlist;

  /// No description provided for @videodesignlist1.
  ///
  /// In en, this message translates to:
  /// **'Adobe Premiere'**
  String get videodesignlist1;

  /// No description provided for @videodesignlist2.
  ///
  /// In en, this message translates to:
  /// **'DaVinci Resolve'**
  String get videodesignlist2;

  /// No description provided for @videodesignlist3.
  ///
  /// In en, this message translates to:
  /// **'Video Production'**
  String get videodesignlist3;

  /// No description provided for @videodesignlist4.
  ///
  /// In en, this message translates to:
  /// **'Filmmaking'**
  String get videodesignlist4;

  /// No description provided for @videodesignlist5.
  ///
  /// In en, this message translates to:
  /// **'After Effects'**
  String get videodesignlist5;

  /// No description provided for @videodesignlist6.
  ///
  /// In en, this message translates to:
  /// **'Cinematography'**
  String get videodesignlist6;

  /// No description provided for @videodesignlist7.
  ///
  /// In en, this message translates to:
  /// **'Color Grading'**
  String get videodesignlist7;

  /// No description provided for @videodesignlist8.
  ///
  /// In en, this message translates to:
  /// **'Videography'**
  String get videodesignlist8;

  /// No description provided for @otherphotolist.
  ///
  /// In en, this message translates to:
  /// **'YouTube Audience Growth'**
  String get otherphotolist;

  /// No description provided for @otherphotolist1.
  ///
  /// In en, this message translates to:
  /// **'Drone and Aerial Photography'**
  String get otherphotolist1;

  /// No description provided for @otherphotolist2.
  ///
  /// In en, this message translates to:
  /// **'Photography'**
  String get otherphotolist2;

  /// No description provided for @otherphotolist3.
  ///
  /// In en, this message translates to:
  /// **'Landscape Photography'**
  String get otherphotolist3;

  /// No description provided for @otherphotolist4.
  ///
  /// In en, this message translates to:
  /// **'Final Cut Pro'**
  String get otherphotolist4;

  /// No description provided for @otherphotolist5.
  ///
  /// In en, this message translates to:
  /// **'Filmmaking'**
  String get otherphotolist5;

  /// No description provided for @otherphotolist6.
  ///
  /// In en, this message translates to:
  /// **'Videography'**
  String get otherphotolist6;

  /// No description provided for @otherphotolist7.
  ///
  /// In en, this message translates to:
  /// **'Documentary Filmmaking'**
  String get otherphotolist7;

  /// No description provided for @otherphotolist8.
  ///
  /// In en, this message translates to:
  /// **'Vlogging'**
  String get otherphotolist8;

  /// No description provided for @fitnesslist.
  ///
  /// In en, this message translates to:
  /// **'Pilates'**
  String get fitnesslist;

  /// No description provided for @fitnesslist1.
  ///
  /// In en, this message translates to:
  /// **'Muscle Building'**
  String get fitnesslist1;

  /// No description provided for @fitnesslist2.
  ///
  /// In en, this message translates to:
  /// **'Home Workout'**
  String get fitnesslist2;

  /// No description provided for @fitnesslist3.
  ///
  /// In en, this message translates to:
  /// **'Teacher Training'**
  String get fitnesslist3;

  /// No description provided for @fitnesslist4.
  ///
  /// In en, this message translates to:
  /// **'Strength Training'**
  String get fitnesslist4;

  /// No description provided for @fitnesslist5.
  ///
  /// In en, this message translates to:
  /// **'Weight Loss'**
  String get fitnesslist5;

  /// No description provided for @fitnesslist6.
  ///
  /// In en, this message translates to:
  /// **'Stretching Exercise'**
  String get fitnesslist6;

  /// No description provided for @fitnesslist7.
  ///
  /// In en, this message translates to:
  /// **'Barre Workout'**
  String get fitnesslist7;

  /// No description provided for @generalhealthlist.
  ///
  /// In en, this message translates to:
  /// **'Herbalism'**
  String get generalhealthlist;

  /// No description provided for @generalhealthlist1.
  ///
  /// In en, this message translates to:
  /// **'Holistic Medicine'**
  String get generalhealthlist1;

  /// No description provided for @generalhealthlist2.
  ///
  /// In en, this message translates to:
  /// **'Massage'**
  String get generalhealthlist2;

  /// No description provided for @generalhealthlist3.
  ///
  /// In en, this message translates to:
  /// **'Aromatherapy'**
  String get generalhealthlist3;

  /// No description provided for @generalhealthlist4.
  ///
  /// In en, this message translates to:
  /// **'Natural Medicine'**
  String get generalhealthlist4;

  /// No description provided for @generalhealthlist5.
  ///
  /// In en, this message translates to:
  /// **'Acupressure'**
  String get generalhealthlist5;

  /// No description provided for @generalhealthlist6.
  ///
  /// In en, this message translates to:
  /// **'Reflexology'**
  String get generalhealthlist6;

  /// No description provided for @generalhealthlist7.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get generalhealthlist7;

  /// No description provided for @generalhealthlist8.
  ///
  /// In en, this message translates to:
  /// **'Ayurveda'**
  String get generalhealthlist8;

  /// No description provided for @sportslist.
  ///
  /// In en, this message translates to:
  /// **'Swimming'**
  String get sportslist;

  /// No description provided for @sportslist1.
  ///
  /// In en, this message translates to:
  /// **'Sport Psychology'**
  String get sportslist1;

  /// No description provided for @sportslist2.
  ///
  /// In en, this message translates to:
  /// **'Soccer'**
  String get sportslist2;

  /// No description provided for @sportslist3.
  ///
  /// In en, this message translates to:
  /// **'Tennis'**
  String get sportslist3;

  /// No description provided for @sportslist4.
  ///
  /// In en, this message translates to:
  /// **'Sports Coaching'**
  String get sportslist4;

  /// No description provided for @sportslist5.
  ///
  /// In en, this message translates to:
  /// **'Golf'**
  String get sportslist5;

  /// No description provided for @sportslist6.
  ///
  /// In en, this message translates to:
  /// **'Sports Massage'**
  String get sportslist6;

  /// No description provided for @sportslist7.
  ///
  /// In en, this message translates to:
  /// **'Sports Management'**
  String get sportslist7;

  /// No description provided for @sportslist8.
  ///
  /// In en, this message translates to:
  /// **'Qi Gong'**
  String get sportslist8;

  /// No description provided for @nutrilist.
  ///
  /// In en, this message translates to:
  /// **'Nutrition'**
  String get nutrilist;

  /// No description provided for @nutrilist1.
  ///
  /// In en, this message translates to:
  /// **'Dieting'**
  String get nutrilist1;

  /// No description provided for @nutrilist2.
  ///
  /// In en, this message translates to:
  /// **'Health Coaching'**
  String get nutrilist2;

  /// No description provided for @nutrilist3.
  ///
  /// In en, this message translates to:
  /// **'Weight Loss'**
  String get nutrilist3;

  /// No description provided for @nutrilist4.
  ///
  /// In en, this message translates to:
  /// **'Sports Nutrition'**
  String get nutrilist4;

  /// No description provided for @nutrilist5.
  ///
  /// In en, this message translates to:
  /// **'Vegan Cooking'**
  String get nutrilist5;

  /// No description provided for @nutrilist6.
  ///
  /// In en, this message translates to:
  /// **'Ketogenic Diet'**
  String get nutrilist6;

  /// No description provided for @nutrilist7.
  ///
  /// In en, this message translates to:
  /// **'Gut Health'**
  String get nutrilist7;

  /// No description provided for @nutrilist8.
  ///
  /// In en, this message translates to:
  /// **'Herbalism'**
  String get nutrilist8;

  /// No description provided for @yogalist.
  ///
  /// In en, this message translates to:
  /// **'Breathing Techniques'**
  String get yogalist;

  /// No description provided for @yogalist1.
  ///
  /// In en, this message translates to:
  /// **'Yoga for Kids'**
  String get yogalist1;

  /// No description provided for @yogalist2.
  ///
  /// In en, this message translates to:
  /// **'Pranayama'**
  String get yogalist2;

  /// No description provided for @yogalist3.
  ///
  /// In en, this message translates to:
  /// **'Chair Yoga'**
  String get yogalist3;

  /// No description provided for @yogalist4.
  ///
  /// In en, this message translates to:
  /// **'Prenatal Yoga'**
  String get yogalist4;

  /// No description provided for @yogalist5.
  ///
  /// In en, this message translates to:
  /// **'Face Yoga'**
  String get yogalist5;

  /// No description provided for @yogalist6.
  ///
  /// In en, this message translates to:
  /// **'Kundalini'**
  String get yogalist6;

  /// No description provided for @yogalist7.
  ///
  /// In en, this message translates to:
  /// **'Teacher Training'**
  String get yogalist7;

  /// No description provided for @mentallist.
  ///
  /// In en, this message translates to:
  /// **'CBT Cognitive Behavioral Therapy'**
  String get mentallist;

  /// No description provided for @mentallist1.
  ///
  /// In en, this message translates to:
  /// **'Art Therapy'**
  String get mentallist1;

  /// No description provided for @mentallist2.
  ///
  /// In en, this message translates to:
  /// **'Psychotherapy'**
  String get mentallist2;

  /// No description provided for @mentallist3.
  ///
  /// In en, this message translates to:
  /// **'Acceptance and Commitment Therapy (ACT)'**
  String get mentallist3;

  /// No description provided for @mentallist4.
  ///
  /// In en, this message translates to:
  /// **'Dialectical Behavior Therapy (DBT)'**
  String get mentallist4;

  /// No description provided for @mentallist5.
  ///
  /// In en, this message translates to:
  /// **'Counselling'**
  String get mentallist5;

  /// No description provided for @mentallist6.
  ///
  /// In en, this message translates to:
  /// **'Anxiety Management'**
  String get mentallist6;

  /// No description provided for @mentallist7.
  ///
  /// In en, this message translates to:
  /// **'Psychology'**
  String get mentallist7;

  /// No description provided for @martiallist.
  ///
  /// In en, this message translates to:
  /// **'Krav Maga'**
  String get martiallist;

  /// No description provided for @martiallist1.
  ///
  /// In en, this message translates to:
  /// **'Self-Defense'**
  String get martiallist1;

  /// No description provided for @martiallist2.
  ///
  /// In en, this message translates to:
  /// **'Martial Arts'**
  String get martiallist2;

  /// No description provided for @martiallist3.
  ///
  /// In en, this message translates to:
  /// **'Boxing'**
  String get martiallist3;

  /// No description provided for @martiallist4.
  ///
  /// In en, this message translates to:
  /// **'Close Combat'**
  String get martiallist4;

  /// No description provided for @martiallist5.
  ///
  /// In en, this message translates to:
  /// **'Tai Chi'**
  String get martiallist5;

  /// No description provided for @martiallist6.
  ///
  /// In en, this message translates to:
  /// **'Brazilian Jiu-Jitsu'**
  String get martiallist6;

  /// No description provided for @martiallist7.
  ///
  /// In en, this message translates to:
  /// **'Wing Chun'**
  String get martiallist7;

  /// No description provided for @martiallist8.
  ///
  /// In en, this message translates to:
  /// **'Muay Thai'**
  String get martiallist8;

  /// No description provided for @safetylist.
  ///
  /// In en, this message translates to:
  /// **'First Aid'**
  String get safetylist;

  /// No description provided for @safetylist1.
  ///
  /// In en, this message translates to:
  /// **'Herbalism'**
  String get safetylist1;

  /// No description provided for @safetylist2.
  ///
  /// In en, this message translates to:
  /// **'Workplace Health and Safety'**
  String get safetylist2;

  /// No description provided for @safetylist3.
  ///
  /// In en, this message translates to:
  /// **'Fire Safety'**
  String get safetylist3;

  /// No description provided for @safetylist4.
  ///
  /// In en, this message translates to:
  /// **'OSHA'**
  String get safetylist4;

  /// No description provided for @safetylist5.
  ///
  /// In en, this message translates to:
  /// **'Survival Skills'**
  String get safetylist5;

  /// No description provided for @safetylist6.
  ///
  /// In en, this message translates to:
  /// **'Grief Healing'**
  String get safetylist6;

  /// No description provided for @safetylist7.
  ///
  /// In en, this message translates to:
  /// **'Nursing'**
  String get safetylist7;

  /// No description provided for @safetylist8.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get safetylist8;

  /// No description provided for @dancelist.
  ///
  /// In en, this message translates to:
  /// **'Belly Dance'**
  String get dancelist;

  /// No description provided for @dancelist1.
  ///
  /// In en, this message translates to:
  /// **'Salsa Dance'**
  String get dancelist1;

  /// No description provided for @dancelist2.
  ///
  /// In en, this message translates to:
  /// **'Bachata'**
  String get dancelist2;

  /// No description provided for @dancelist3.
  ///
  /// In en, this message translates to:
  /// **'Hip Hop Dancing'**
  String get dancelist3;

  /// No description provided for @dancelist4.
  ///
  /// In en, this message translates to:
  /// **'Tango Dance'**
  String get dancelist4;

  /// No description provided for @dancelist5.
  ///
  /// In en, this message translates to:
  /// **'Poi Spinning'**
  String get dancelist5;

  /// No description provided for @dancelist6.
  ///
  /// In en, this message translates to:
  /// **'Kundalini'**
  String get dancelist6;

  /// No description provided for @dancelist7.
  ///
  /// In en, this message translates to:
  /// **'Ballet'**
  String get dancelist7;

  /// No description provided for @meditationlist.
  ///
  /// In en, this message translates to:
  /// **'Sound Therapy'**
  String get meditationlist;

  /// No description provided for @meditationlist1.
  ///
  /// In en, this message translates to:
  /// **'Mindfulness'**
  String get meditationlist1;

  /// No description provided for @meditationlist2.
  ///
  /// In en, this message translates to:
  /// **'Qi Gong'**
  String get meditationlist2;

  /// No description provided for @meditationlist3.
  ///
  /// In en, this message translates to:
  /// **'Reiki'**
  String get meditationlist3;

  /// No description provided for @meditationlist4.
  ///
  /// In en, this message translates to:
  /// **'Breathing Techniques'**
  String get meditationlist4;

  /// No description provided for @meditationlist5.
  ///
  /// In en, this message translates to:
  /// **'Energy Healing'**
  String get meditationlist5;

  /// No description provided for @meditationlist6.
  ///
  /// In en, this message translates to:
  /// **'Yoga'**
  String get meditationlist6;

  /// No description provided for @meditationlist7.
  ///
  /// In en, this message translates to:
  /// **'Tai Chi'**
  String get meditationlist7;

  /// No description provided for @otherhealthlist.
  ///
  /// In en, this message translates to:
  /// **'Massage'**
  String get otherhealthlist;

  /// No description provided for @otherhealthlist1.
  ///
  /// In en, this message translates to:
  /// **'Sports Massage'**
  String get otherhealthlist1;

  /// No description provided for @otherhealthlist2.
  ///
  /// In en, this message translates to:
  /// **'Qi Gong'**
  String get otherhealthlist2;

  /// No description provided for @otherhealthlist3.
  ///
  /// In en, this message translates to:
  /// **'Facial Massage'**
  String get otherhealthlist3;

  /// No description provided for @otherhealthlist4.
  ///
  /// In en, this message translates to:
  /// **'EFT (Emotional Freedom Techniques)'**
  String get otherhealthlist4;

  /// No description provided for @otherhealthlist5.
  ///
  /// In en, this message translates to:
  /// **'Holistic Medicine'**
  String get otherhealthlist5;

  /// No description provided for @otherhealthlist6.
  ///
  /// In en, this message translates to:
  /// **'Spiritual Healing'**
  String get otherhealthlist6;

  /// No description provided for @otherhealthlist7.
  ///
  /// In en, this message translates to:
  /// **'Medical Terminology'**
  String get otherhealthlist7;

  /// No description provided for @otherhealthlist8.
  ///
  /// In en, this message translates to:
  /// **'Energy Healing'**
  String get otherhealthlist8;

  /// No description provided for @instrumentlist.
  ///
  /// In en, this message translates to:
  /// **'Guitar'**
  String get instrumentlist;

  /// No description provided for @instrumentlist1.
  ///
  /// In en, this message translates to:
  /// **'Piano'**
  String get instrumentlist1;

  /// No description provided for @instrumentlist2.
  ///
  /// In en, this message translates to:
  /// **'Keyboard Instrument'**
  String get instrumentlist2;

  /// No description provided for @instrumentlist3.
  ///
  /// In en, this message translates to:
  /// **'Bass Guitar'**
  String get instrumentlist3;

  /// No description provided for @instrumentlist4.
  ///
  /// In en, this message translates to:
  /// **'Drums'**
  String get instrumentlist4;

  /// No description provided for @instrumentlist5.
  ///
  /// In en, this message translates to:
  /// **'Ukulele'**
  String get instrumentlist5;

  /// No description provided for @instrumentlist6.
  ///
  /// In en, this message translates to:
  /// **'Harmonica'**
  String get instrumentlist6;

  /// No description provided for @instrumentlist7.
  ///
  /// In en, this message translates to:
  /// **'FingerStyle Guitar'**
  String get instrumentlist7;

  /// No description provided for @instrumentlist8.
  ///
  /// In en, this message translates to:
  /// **'Classical Guitar'**
  String get instrumentlist8;

  /// No description provided for @musicprolist.
  ///
  /// In en, this message translates to:
  /// **'Logic Pro'**
  String get musicprolist;

  /// No description provided for @musicprolist1.
  ///
  /// In en, this message translates to:
  /// **'Music Mixing'**
  String get musicprolist1;

  /// No description provided for @musicprolist2.
  ///
  /// In en, this message translates to:
  /// **'Ableton Live'**
  String get musicprolist2;

  /// No description provided for @musicprolist3.
  ///
  /// In en, this message translates to:
  /// **'FL Studio'**
  String get musicprolist3;

  /// No description provided for @musicprolist4.
  ///
  /// In en, this message translates to:
  /// **'Music Composition'**
  String get musicprolist4;

  /// No description provided for @musicprolist5.
  ///
  /// In en, this message translates to:
  /// **'Game Music'**
  String get musicprolist5;

  /// No description provided for @musicprolist6.
  ///
  /// In en, this message translates to:
  /// **'Audio Engineering'**
  String get musicprolist6;

  /// No description provided for @musicprolist7.
  ///
  /// In en, this message translates to:
  /// **'Audio Production'**
  String get musicprolist7;

  /// No description provided for @musicfundalist.
  ///
  /// In en, this message translates to:
  /// **'Music Theory'**
  String get musicfundalist;

  /// No description provided for @musicfundalist1.
  ///
  /// In en, this message translates to:
  /// **'Music Composition'**
  String get musicfundalist1;

  /// No description provided for @musicfundalist2.
  ///
  /// In en, this message translates to:
  /// **'Songwriting'**
  String get musicfundalist2;

  /// No description provided for @musicfundalist3.
  ///
  /// In en, this message translates to:
  /// **'Electronic Music'**
  String get musicfundalist3;

  /// No description provided for @musicfundalist4.
  ///
  /// In en, this message translates to:
  /// **'Reading Music'**
  String get musicfundalist4;

  /// No description provided for @musicfundalist5.
  ///
  /// In en, this message translates to:
  /// **'Ear Training'**
  String get musicfundalist5;

  /// No description provided for @musicfundalist6.
  ///
  /// In en, this message translates to:
  /// **'Piano'**
  String get musicfundalist6;

  /// No description provided for @musicfundalist7.
  ///
  /// In en, this message translates to:
  /// **'Classical Music'**
  String get musicfundalist7;

  /// No description provided for @musicfundalist8.
  ///
  /// In en, this message translates to:
  /// **'ABRSM'**
  String get musicfundalist8;

  /// No description provided for @vocalslist.
  ///
  /// In en, this message translates to:
  /// **'Singing'**
  String get vocalslist;

  /// No description provided for @vocalslist1.
  ///
  /// In en, this message translates to:
  /// **'Voice Training'**
  String get vocalslist1;

  /// No description provided for @vocalslist2.
  ///
  /// In en, this message translates to:
  /// **'Voice Acting'**
  String get vocalslist2;

  /// No description provided for @vocalslist3.
  ///
  /// In en, this message translates to:
  /// **'Rapping'**
  String get vocalslist3;

  /// No description provided for @vocalslist4.
  ///
  /// In en, this message translates to:
  /// **'Raga Music'**
  String get vocalslist4;

  /// No description provided for @vocalslist5.
  ///
  /// In en, this message translates to:
  /// **'Voice-Over'**
  String get vocalslist5;

  /// No description provided for @vocalslist6.
  ///
  /// In en, this message translates to:
  /// **'Quran'**
  String get vocalslist6;

  /// No description provided for @vocalslist7.
  ///
  /// In en, this message translates to:
  /// **'Carnatic Music'**
  String get vocalslist7;

  /// No description provided for @vocalslist8.
  ///
  /// In en, this message translates to:
  /// **'Yoga'**
  String get vocalslist8;

  /// No description provided for @musictechlist.
  ///
  /// In en, this message translates to:
  /// **'FingerStyle Guitar'**
  String get musictechlist;

  /// No description provided for @musictechlist1.
  ///
  /// In en, this message translates to:
  /// **'Blues Guitar'**
  String get musictechlist1;

  /// No description provided for @musictechlist2.
  ///
  /// In en, this message translates to:
  /// **'DJ'**
  String get musictechlist2;

  /// No description provided for @musictechlist3.
  ///
  /// In en, this message translates to:
  /// **'Music Composition'**
  String get musictechlist3;

  /// No description provided for @musictechlist4.
  ///
  /// In en, this message translates to:
  /// **'Piano'**
  String get musictechlist4;

  /// No description provided for @musictechlist5.
  ///
  /// In en, this message translates to:
  /// **'Guitar'**
  String get musictechlist5;

  /// No description provided for @musictechlist6.
  ///
  /// In en, this message translates to:
  /// **'Reading Music'**
  String get musictechlist6;

  /// No description provided for @musictechlist7.
  ///
  /// In en, this message translates to:
  /// **'Music Theory'**
  String get musictechlist7;

  /// No description provided for @musictechlist8.
  ///
  /// In en, this message translates to:
  /// **'Music Improvisation'**
  String get musictechlist8;

  /// No description provided for @musicsoftwarelist.
  ///
  /// In en, this message translates to:
  /// **'FL Studio'**
  String get musicsoftwarelist;

  /// No description provided for @musicsoftwarelist1.
  ///
  /// In en, this message translates to:
  /// **'Ableton Live'**
  String get musicsoftwarelist1;

  /// No description provided for @musicsoftwarelist2.
  ///
  /// In en, this message translates to:
  /// **'Logic Pro'**
  String get musicsoftwarelist2;

  /// No description provided for @musicsoftwarelist3.
  ///
  /// In en, this message translates to:
  /// **'Music Production'**
  String get musicsoftwarelist3;

  /// No description provided for @musicsoftwarelist4.
  ///
  /// In en, this message translates to:
  /// **'GarageBand'**
  String get musicsoftwarelist4;

  /// No description provided for @musicsoftwarelist5.
  ///
  /// In en, this message translates to:
  /// **'DJ'**
  String get musicsoftwarelist5;

  /// No description provided for @musicsoftwarelist6.
  ///
  /// In en, this message translates to:
  /// **'Music Mixing'**
  String get musicsoftwarelist6;

  /// No description provided for @musicsoftwarelist7.
  ///
  /// In en, this message translates to:
  /// **'Pro Tools'**
  String get musicsoftwarelist7;

  /// No description provided for @musicsoftwarelist8.
  ///
  /// In en, this message translates to:
  /// **'Cubase'**
  String get musicsoftwarelist8;

  /// No description provided for @othermusiclist.
  ///
  /// In en, this message translates to:
  /// **'DJ'**
  String get othermusiclist;

  /// No description provided for @othermusiclist1.
  ///
  /// In en, this message translates to:
  /// **'Music Business'**
  String get othermusiclist1;

  /// No description provided for @othermusiclist2.
  ///
  /// In en, this message translates to:
  /// **'Songwriting'**
  String get othermusiclist2;

  /// No description provided for @othermusiclist3.
  ///
  /// In en, this message translates to:
  /// **'Music Marketing'**
  String get othermusiclist3;

  /// No description provided for @othermusiclist4.
  ///
  /// In en, this message translates to:
  /// **'Sound Therapy'**
  String get othermusiclist4;

  /// No description provided for @othermusiclist5.
  ///
  /// In en, this message translates to:
  /// **'Rapping'**
  String get othermusiclist5;

  /// No description provided for @othermusiclist6.
  ///
  /// In en, this message translates to:
  /// **'Lyric Writing'**
  String get othermusiclist6;

  /// No description provided for @othermusiclist7.
  ///
  /// In en, this message translates to:
  /// **'Talent Agent'**
  String get othermusiclist7;

  /// No description provided for @othermusiclist8.
  ///
  /// In en, this message translates to:
  /// **'Luthiery'**
  String get othermusiclist8;

  /// No description provided for @engineeringlist.
  ///
  /// In en, this message translates to:
  /// **'Electrical Engineering'**
  String get engineeringlist;

  /// No description provided for @engineeringlist1.
  ///
  /// In en, this message translates to:
  /// **'Civil Engineering'**
  String get engineeringlist1;

  /// No description provided for @engineeringlist2.
  ///
  /// In en, this message translates to:
  /// **'Solar Energy'**
  String get engineeringlist2;

  /// No description provided for @engineeringlist3.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get engineeringlist3;

  /// No description provided for @engineeringlist4.
  ///
  /// In en, this message translates to:
  /// **'Mechanical Engineering'**
  String get engineeringlist4;

  /// No description provided for @engineeringlist5.
  ///
  /// In en, this message translates to:
  /// **'Automative Engineering'**
  String get engineeringlist5;

  /// No description provided for @engineeringlist6.
  ///
  /// In en, this message translates to:
  /// **'Electric Vehicles'**
  String get engineeringlist6;

  /// No description provided for @engineeringlist7.
  ///
  /// In en, this message translates to:
  /// **'Control Systems'**
  String get engineeringlist7;

  /// No description provided for @engineeringlist8.
  ///
  /// In en, this message translates to:
  /// **'Structural Engineering'**
  String get engineeringlist8;

  /// No description provided for @humanitieslist.
  ///
  /// In en, this message translates to:
  /// **'Christianity'**
  String get humanitieslist;

  /// No description provided for @humanitieslist1.
  ///
  /// In en, this message translates to:
  /// **'Philosophy'**
  String get humanitieslist1;

  /// No description provided for @humanitieslist2.
  ///
  /// In en, this message translates to:
  /// **'The Bible'**
  String get humanitieslist2;

  /// No description provided for @humanitieslist3.
  ///
  /// In en, this message translates to:
  /// **'Critical Thinking'**
  String get humanitieslist3;

  /// No description provided for @humanitieslist4.
  ///
  /// In en, this message translates to:
  /// **'Art History'**
  String get humanitieslist4;

  /// No description provided for @humanitieslist5.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get humanitieslist5;

  /// No description provided for @humanitieslist6.
  ///
  /// In en, this message translates to:
  /// **'English Literature'**
  String get humanitieslist6;

  /// No description provided for @humanitieslist7.
  ///
  /// In en, this message translates to:
  /// **'Creative Writing'**
  String get humanitieslist7;

  /// No description provided for @humanitieslist8.
  ///
  /// In en, this message translates to:
  /// **'Academic Writing'**
  String get humanitieslist8;

  /// No description provided for @mathhlist.
  ///
  /// In en, this message translates to:
  /// **'Calculus'**
  String get mathhlist;

  /// No description provided for @mathhlist1.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get mathhlist1;

  /// No description provided for @mathhlist2.
  ///
  /// In en, this message translates to:
  /// **'Algebra'**
  String get mathhlist2;

  /// No description provided for @mathhlist3.
  ///
  /// In en, this message translates to:
  /// **'Linear Algebra'**
  String get mathhlist3;

  /// No description provided for @mathhlist4.
  ///
  /// In en, this message translates to:
  /// **'Probability'**
  String get mathhlist4;

  /// No description provided for @mathhlist5.
  ///
  /// In en, this message translates to:
  /// **'Trigonometry'**
  String get mathhlist5;

  /// No description provided for @mathhlist6.
  ///
  /// In en, this message translates to:
  /// **'Differential Equations'**
  String get mathhlist6;

  /// No description provided for @mathhlist7.
  ///
  /// In en, this message translates to:
  /// **'Discrete Mathematics'**
  String get mathhlist7;

  /// No description provided for @sciencelist.
  ///
  /// In en, this message translates to:
  /// **'Solar Energy'**
  String get sciencelist;

  /// No description provided for @sciencelist1.
  ///
  /// In en, this message translates to:
  /// **'Physics'**
  String get sciencelist1;

  /// No description provided for @sciencelist2.
  ///
  /// In en, this message translates to:
  /// **'Biology'**
  String get sciencelist2;

  /// No description provided for @sciencelist3.
  ///
  /// In en, this message translates to:
  /// **'Chemistry'**
  String get sciencelist3;

  /// No description provided for @sciencelist4.
  ///
  /// In en, this message translates to:
  /// **'General Chemistry'**
  String get sciencelist4;

  /// No description provided for @sciencelist5.
  ///
  /// In en, this message translates to:
  /// **'Orthodontics'**
  String get sciencelist5;

  /// No description provided for @sciencelist6.
  ///
  /// In en, this message translates to:
  /// **'Anatomy'**
  String get sciencelist6;

  /// No description provided for @sciencelist7.
  ///
  /// In en, this message translates to:
  /// **'Research Paper Writing'**
  String get sciencelist7;

  /// No description provided for @sciencelist8.
  ///
  /// In en, this message translates to:
  /// **'Medical Coding'**
  String get sciencelist8;

  /// No description provided for @onlineducationlist.
  ///
  /// In en, this message translates to:
  /// **'Online Course Creation'**
  String get onlineducationlist;

  /// No description provided for @onlineducationlist1.
  ///
  /// In en, this message translates to:
  /// **'Teaching Online'**
  String get onlineducationlist1;

  /// No description provided for @onlineducationlist2.
  ///
  /// In en, this message translates to:
  /// **'Online Business'**
  String get onlineducationlist2;

  /// No description provided for @onlineducationlist3.
  ///
  /// In en, this message translates to:
  /// **'Canva'**
  String get onlineducationlist3;

  /// No description provided for @onlineducationlist4.
  ///
  /// In en, this message translates to:
  /// **'Coding For Kids'**
  String get onlineducationlist4;

  /// No description provided for @onlineducationlist5.
  ///
  /// In en, this message translates to:
  /// **'Online Course Marketing'**
  String get onlineducationlist5;

  /// No description provided for @onlineducationlist6.
  ///
  /// In en, this message translates to:
  /// **'Articulate Storyline'**
  String get onlineducationlist6;

  /// No description provided for @onlineducationlist7.
  ///
  /// In en, this message translates to:
  /// **'Passive Income'**
  String get onlineducationlist7;

  /// No description provided for @onlineducationlist8.
  ///
  /// In en, this message translates to:
  /// **'Instructional Design'**
  String get onlineducationlist8;

  /// No description provided for @sociallist.
  ///
  /// In en, this message translates to:
  /// **'Psychology'**
  String get sociallist;

  /// No description provided for @sociallist1.
  ///
  /// In en, this message translates to:
  /// **'Criminology'**
  String get sociallist1;

  /// No description provided for @sociallist2.
  ///
  /// In en, this message translates to:
  /// **'Counseling'**
  String get sociallist2;

  /// No description provided for @sociallist3.
  ///
  /// In en, this message translates to:
  /// **'Economics'**
  String get sociallist3;

  /// No description provided for @sociallist4.
  ///
  /// In en, this message translates to:
  /// **'Intelligence Analysis (security)'**
  String get sociallist4;

  /// No description provided for @sociallist5.
  ///
  /// In en, this message translates to:
  /// **'Psychotherapy'**
  String get sociallist5;

  /// No description provided for @sociallist6.
  ///
  /// In en, this message translates to:
  /// **'Research Methods'**
  String get sociallist6;

  /// No description provided for @sociallist7.
  ///
  /// In en, this message translates to:
  /// **'Child Psychology'**
  String get sociallist7;

  /// No description provided for @sociallist8.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get sociallist8;

  /// No description provided for @langlearninglist.
  ///
  /// In en, this message translates to:
  /// **'English Language'**
  String get langlearninglist;

  /// No description provided for @langlearninglist1.
  ///
  /// In en, this message translates to:
  /// **'German Language'**
  String get langlearninglist1;

  /// No description provided for @langlearninglist2.
  ///
  /// In en, this message translates to:
  /// **'English Grammar'**
  String get langlearninglist2;

  /// No description provided for @langlearninglist3.
  ///
  /// In en, this message translates to:
  /// **'Spanish Language'**
  String get langlearninglist3;

  /// No description provided for @langlearninglist4.
  ///
  /// In en, this message translates to:
  /// **'French Language'**
  String get langlearninglist4;

  /// No description provided for @langlearninglist5.
  ///
  /// In en, this message translates to:
  /// **'Japanese Language'**
  String get langlearninglist5;

  /// No description provided for @langlearninglist6.
  ///
  /// In en, this message translates to:
  /// **'English Vocabulary'**
  String get langlearninglist6;

  /// No description provided for @langlearninglist7.
  ///
  /// In en, this message translates to:
  /// **'English Conversation'**
  String get langlearninglist7;

  /// No description provided for @langlearninglist8.
  ///
  /// In en, this message translates to:
  /// **'Italian Language'**
  String get langlearninglist8;

  /// No description provided for @teachertraininglist.
  ///
  /// In en, this message translates to:
  /// **'Train the Trainer'**
  String get teachertraininglist;

  /// No description provided for @teachertraininglist1.
  ///
  /// In en, this message translates to:
  /// **'Instructional Design'**
  String get teachertraininglist1;

  /// No description provided for @teachertraininglist2.
  ///
  /// In en, this message translates to:
  /// **'Early Childhood Education'**
  String get teachertraininglist2;

  /// No description provided for @teachertraininglist3.
  ///
  /// In en, this message translates to:
  /// **'Financial Planning'**
  String get teachertraininglist3;

  /// No description provided for @teachertraininglist4.
  ///
  /// In en, this message translates to:
  /// **'Learning Strategies'**
  String get teachertraininglist4;

  /// No description provided for @teachertraininglist5.
  ///
  /// In en, this message translates to:
  /// **'ESL'**
  String get teachertraininglist5;

  /// No description provided for @teachertraininglist6.
  ///
  /// In en, this message translates to:
  /// **'Voice-Over'**
  String get teachertraininglist6;

  /// No description provided for @teachertraininglist7.
  ///
  /// In en, this message translates to:
  /// **'Classroom Management'**
  String get teachertraininglist7;

  /// No description provided for @testpreplist.
  ///
  /// In en, this message translates to:
  /// **'IELTS'**
  String get testpreplist;

  /// No description provided for @testpreplist1.
  ///
  /// In en, this message translates to:
  /// **'TOEFL'**
  String get testpreplist1;

  /// No description provided for @testpreplist2.
  ///
  /// In en, this message translates to:
  /// **'PMP'**
  String get testpreplist2;

  /// No description provided for @testpreplist3.
  ///
  /// In en, this message translates to:
  /// **'Test Taking Skills'**
  String get testpreplist3;

  /// No description provided for @testpreplist4.
  ///
  /// In en, this message translates to:
  /// **'CAMP Certified Associate in project Management'**
  String get testpreplist4;

  /// No description provided for @testpreplist5.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get testpreplist5;

  /// No description provided for @testpreplist6.
  ///
  /// In en, this message translates to:
  /// **'English Language'**
  String get testpreplist6;

  /// No description provided for @testpreplist7.
  ///
  /// In en, this message translates to:
  /// **'PMI PMBOK'**
  String get testpreplist7;

  /// No description provided for @testpreplist8.
  ///
  /// In en, this message translates to:
  /// **'SAT'**
  String get testpreplist8;

  /// No description provided for @otherteachinglist.
  ///
  /// In en, this message translates to:
  /// **'Proofreading'**
  String get otherteachinglist;

  /// No description provided for @otherteachinglist1.
  ///
  /// In en, this message translates to:
  /// **'Research Methods'**
  String get otherteachinglist1;

  /// No description provided for @otherteachinglist2.
  ///
  /// In en, this message translates to:
  /// **'Medical Coding'**
  String get otherteachinglist2;

  /// No description provided for @otherteachinglist3.
  ///
  /// In en, this message translates to:
  /// **'Early Childhood Education'**
  String get otherteachinglist3;

  /// No description provided for @otherteachinglist4.
  ///
  /// In en, this message translates to:
  /// **'Academic Writing'**
  String get otherteachinglist4;

  /// No description provided for @otherteachinglist5.
  ///
  /// In en, this message translates to:
  /// **'Research Paper Writing'**
  String get otherteachinglist5;

  /// No description provided for @otherteachinglist6.
  ///
  /// In en, this message translates to:
  /// **'ARCHICAD'**
  String get otherteachinglist6;

  /// No description provided for @otherteachinglist7.
  ///
  /// In en, this message translates to:
  /// **'Design of Experiments (DOE)'**
  String get otherteachinglist7;

  /// No description provided for @otherteachinglist8.
  ///
  /// In en, this message translates to:
  /// **'NVivo'**
  String get otherteachinglist8;

  /// No description provided for @check.
  ///
  /// In en, this message translates to:
  /// **'You can resubmit your Idea/Business Plan after improving upon suggested points.'**
  String get check;

  /// No description provided for @saved_post.
  ///
  /// In en, this message translates to:
  /// **'Saved Post'**
  String get saved_post;

  /// No description provided for @personal_info.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personal_info;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logout;

  /// No description provided for @framework.
  ///
  /// In en, this message translates to:
  /// **'Framework'**
  String get framework;

  /// No description provided for @mssg.
  ///
  /// In en, this message translates to:
  /// **'This option will available as soon as your business idea will be approved'**
  String get mssg;

  /// No description provided for @based_on_your_expertise.
  ///
  /// In en, this message translates to:
  /// **'Based on your expertise, subject knowledge, interest you are requested to assess these business Ideas/Concepts and provide your valuable inputs'**
  String get based_on_your_expertise;

  /// No description provided for @energy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get energy;

  /// No description provided for @add_by_clicking.
  ///
  /// In en, this message translates to:
  /// **'Add more by clicking +'**
  String get add_by_clicking;

  /// No description provided for @how.
  ///
  /// In en, this message translates to:
  /// **'How ?'**
  String get how;

  /// No description provided for @describe_in_detail.
  ///
  /// In en, this message translates to:
  /// **'Describe in detail'**
  String get describe_in_detail;

  /// No description provided for @my.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get my;

  /// No description provided for @carrier.
  ///
  /// In en, this message translates to:
  /// **'carrier'**
  String get carrier;

  /// No description provided for @case1.
  ///
  /// In en, this message translates to:
  /// **'Case'**
  String get case1;

  /// No description provided for @study.
  ///
  /// In en, this message translates to:
  /// **'Study'**
  String get study;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @learn.
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get learn;

  /// No description provided for @earn.
  ///
  /// In en, this message translates to:
  /// **'& Earn'**
  String get earn;

  /// No description provided for @idea.
  ///
  /// In en, this message translates to:
  /// **'Idea'**
  String get idea;

  /// No description provided for @desk.
  ///
  /// In en, this message translates to:
  /// **'Desk'**
  String get desk;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post  '**
  String get post;

  /// No description provided for @profile1.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile1;

  /// No description provided for @contact_us.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contact_us;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @iam.
  ///
  /// In en, this message translates to:
  /// **'I am'**
  String get iam;

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'a Student'**
  String get student;

  /// No description provided for @educator.
  ///
  /// In en, this message translates to:
  /// **'an Educator'**
  String get educator;

  /// No description provided for @reg_mentor.
  ///
  /// In en, this message translates to:
  /// **'a Mentor'**
  String get reg_mentor;

  /// No description provided for @investor.
  ///
  /// In en, this message translates to:
  /// **'an Investor'**
  String get investor;

  /// No description provided for @visitor.
  ///
  /// In en, this message translates to:
  /// **'a Visitor'**
  String get visitor;

  /// No description provided for @university.
  ///
  /// In en, this message translates to:
  /// **'University/College/Institution'**
  String get university;

  /// No description provided for @regcourse.
  ///
  /// In en, this message translates to:
  /// **'Course/Subject'**
  String get regcourse;

  /// No description provided for @expertise.
  ///
  /// In en, this message translates to:
  /// **'Expertise'**
  String get expertise;

  /// No description provided for @expertise1.
  ///
  /// In en, this message translates to:
  /// **'Ideation'**
  String get expertise1;

  /// No description provided for @expertise2.
  ///
  /// In en, this message translates to:
  /// **'Proof of Concept'**
  String get expertise2;

  /// No description provided for @expertise3.
  ///
  /// In en, this message translates to:
  /// **'MVP'**
  String get expertise3;

  /// No description provided for @expertise4.
  ///
  /// In en, this message translates to:
  /// **'Design'**
  String get expertise4;

  /// No description provided for @expertise5.
  ///
  /// In en, this message translates to:
  /// **'Business Framework'**
  String get expertise5;

  /// No description provided for @expertise6.
  ///
  /// In en, this message translates to:
  /// **'Business Plan'**
  String get expertise6;

  /// No description provided for @expertise7.
  ///
  /// In en, this message translates to:
  /// **'Marketing'**
  String get expertise7;

  /// No description provided for @expertise8.
  ///
  /// In en, this message translates to:
  /// **'Launch'**
  String get expertise8;

  /// No description provided for @expertise9.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get expertise9;

  /// No description provided for @expertise10.
  ///
  /// In en, this message translates to:
  /// **'Web and Technology'**
  String get expertise10;

  /// No description provided for @expertise11.
  ///
  /// In en, this message translates to:
  /// **'Digital marketing'**
  String get expertise11;

  /// No description provided for @expertise12.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get expertise12;

  /// No description provided for @expertise13.
  ///
  /// In en, this message translates to:
  /// **'Accounting'**
  String get expertise13;

  /// No description provided for @expertise14.
  ///
  /// In en, this message translates to:
  /// **'Team Building'**
  String get expertise14;

  /// No description provided for @expertise15.
  ///
  /// In en, this message translates to:
  /// **'Recruitment'**
  String get expertise15;

  /// No description provided for @expertise16.
  ///
  /// In en, this message translates to:
  /// **'Monitoring'**
  String get expertise16;

  /// No description provided for @expertise17.
  ///
  /// In en, this message translates to:
  /// **'Investment'**
  String get expertise17;

  /// No description provided for @expertise18.
  ///
  /// In en, this message translates to:
  /// **'Pitch Deck'**
  String get expertise18;

  /// No description provided for @expertise19.
  ///
  /// In en, this message translates to:
  /// **'Valuation'**
  String get expertise19;

  /// No description provided for @expertise20.
  ///
  /// In en, this message translates to:
  /// **'Presentation'**
  String get expertise20;

  /// No description provided for @expertise21.
  ///
  /// In en, this message translates to:
  /// **'Communication'**
  String get expertise21;

  /// No description provided for @expertise22.
  ///
  /// In en, this message translates to:
  /// **'Investor Communication'**
  String get expertise22;

  /// No description provided for @expertise23.
  ///
  /// In en, this message translates to:
  /// **'Strategy'**
  String get expertise23;

  /// No description provided for @expertise24.
  ///
  /// In en, this message translates to:
  /// **'Documentation'**
  String get expertise24;

  /// No description provided for @expertise25.
  ///
  /// In en, this message translates to:
  /// **'Taxation'**
  String get expertise25;

  /// No description provided for @expertise26.
  ///
  /// In en, this message translates to:
  /// **'Compliance'**
  String get expertise26;

  /// No description provided for @expertise27.
  ///
  /// In en, this message translates to:
  /// **'Scaling'**
  String get expertise27;

  /// No description provided for @expertise28.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get expertise28;

  /// No description provided for @selectfive.
  ///
  /// In en, this message translates to:
  /// **'Select Any Five'**
  String get selectfive;

  /// No description provided for @focusindustry.
  ///
  /// In en, this message translates to:
  /// **'Focus Industry'**
  String get focusindustry;

  /// No description provided for @focusIndustry1.
  ///
  /// In en, this message translates to:
  /// **'Ecommerce'**
  String get focusIndustry1;

  /// No description provided for @focusIndustry2.
  ///
  /// In en, this message translates to:
  /// **'Delivery service'**
  String get focusIndustry2;

  /// No description provided for @focusIndustry3.
  ///
  /// In en, this message translates to:
  /// **'Healthcare Tech'**
  String get focusIndustry3;

  /// No description provided for @focusIndustry4.
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence (AI)'**
  String get focusIndustry4;

  /// No description provided for @focusIndustry5.
  ///
  /// In en, this message translates to:
  /// **'Virtual Reality (VR)'**
  String get focusIndustry5;

  /// No description provided for @focusIndustry6.
  ///
  /// In en, this message translates to:
  /// **'Educational Technology (Edtech)'**
  String get focusIndustry6;

  /// No description provided for @focusIndustry7.
  ///
  /// In en, this message translates to:
  /// **'financial Technology (fintech)'**
  String get focusIndustry7;

  /// No description provided for @focusIndustry8.
  ///
  /// In en, this message translates to:
  /// **'Big Data'**
  String get focusIndustry8;

  /// No description provided for @focusIndustry9.
  ///
  /// In en, this message translates to:
  /// **'Shared Mobility'**
  String get focusIndustry9;

  /// No description provided for @focusIndustry10.
  ///
  /// In en, this message translates to:
  /// **'Agri Tech'**
  String get focusIndustry10;

  /// No description provided for @focusIndustry11.
  ///
  /// In en, this message translates to:
  /// **'B2B Software'**
  String get focusIndustry11;

  /// No description provided for @focusIndustry12.
  ///
  /// In en, this message translates to:
  /// **'SAAS'**
  String get focusIndustry12;

  /// No description provided for @focusIndustry13.
  ///
  /// In en, this message translates to:
  /// **'Real Estate'**
  String get focusIndustry13;

  /// No description provided for @focusIndustry14.
  ///
  /// In en, this message translates to:
  /// **'Leisure and Entertainment'**
  String get focusIndustry14;

  /// No description provided for @focusIndustry15.
  ///
  /// In en, this message translates to:
  /// **'Supply chain management'**
  String get focusIndustry15;

  /// No description provided for @focusIndustry16.
  ///
  /// In en, this message translates to:
  /// **'Travel and Tourism'**
  String get focusIndustry16;

  /// No description provided for @focusIndustry17.
  ///
  /// In en, this message translates to:
  /// **'Consumer Goods'**
  String get focusIndustry17;

  /// No description provided for @focusIndustry18.
  ///
  /// In en, this message translates to:
  /// **'food'**
  String get focusIndustry18;

  /// No description provided for @focusIndustry19.
  ///
  /// In en, this message translates to:
  /// **'Aggregator'**
  String get focusIndustry19;

  /// No description provided for @focusIndustry20.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get focusIndustry20;

  /// No description provided for @sizeofinvestment.
  ///
  /// In en, this message translates to:
  /// **'Size of Investment'**
  String get sizeofinvestment;

  /// No description provided for @size1.
  ///
  /// In en, this message translates to:
  /// **'Angel investor 1,00,000/- to 3,00,000/-'**
  String get size1;

  /// No description provided for @size2.
  ///
  /// In en, this message translates to:
  /// **'Seed Investor 3,00,000/- to 25,00,000/-'**
  String get size2;

  /// No description provided for @size3.
  ///
  /// In en, this message translates to:
  /// **'Venture capitalist 25,00,000/- to 2,00,00,000/-'**
  String get size3;

  /// No description provided for @size4.
  ///
  /// In en, this message translates to:
  /// **'Corporate Investor 2,00,00,000/-'**
  String get size4;

  /// No description provided for @size5.
  ///
  /// In en, this message translates to:
  /// **'Lender'**
  String get size5;

  /// No description provided for @experienceinyear.
  ///
  /// In en, this message translates to:
  /// **'Experience in year'**
  String get experienceinyear;

  /// No description provided for @dateofBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateofBirth;

  /// No description provided for @slide1.
  ///
  /// In en, this message translates to:
  /// **'I would like to be a \'Mentor/Co-creator\' part of a great idea/venture of relevant to my skills and my passion.'**
  String get slide1;

  /// No description provided for @slide2.
  ///
  /// In en, this message translates to:
  /// **'I would like to Evaluate case studies/hypothesis etc. related to my subject/research.'**
  String get slide2;

  /// No description provided for @slide3.
  ///
  /// In en, this message translates to:
  /// **'I would like to appraise contributors on various parameters.'**
  String get slide3;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
