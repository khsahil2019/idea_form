import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/toast.dart';

class IdeaServices {
  final CollectionReference _ideaCollectionReference =
      FirebaseFirestore.instance.collection("businessIdeas");

  Future<Map?> createBusinessIdea(Map<String, dynamic> idea) async {
    try {
      return await _ideaCollectionReference
          .doc()
          .set(idea)
          .then((value) => idea);
    } catch (e) {
      log(" Catch Error idea: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  // update idea
  Future<Map?> updateBusinessIdea(String id, Map<String, dynamic> idea) async {
    try {
      return await _ideaCollectionReference
          .doc(id)
          .update(idea)
          .then((value) => idea);
    } catch (e) {
      log(" Catch Error idea: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  // delete idea
  Future<bool?> deleteBusinessIdea(String id) async {
    try {
      return await _ideaCollectionReference
          .doc(id)
          .delete()
          .then((value) => true);
    } catch (e) {
      log(" Catch Error idea: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  // Get idea by user id
  Future<List<Map>?> getBusinessIdeasByUserId(String id) async {
    try {
      return await _ideaCollectionReference
          .where("userId", isEqualTo: id)
          // .orderBy("createdAt", descending: true)
          .get()
          .then((value) => value.docs
              .map((e) => e.data() as Map)
              .toList()
              .reversed
              .toList());
    } catch (e) {
      log(" Catch Error idea: $e");
      showToastMessage(e.toString());
      return null;
    }
  }
}
