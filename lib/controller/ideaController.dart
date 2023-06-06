import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

IdeaController ideaController = IdeaController.instance;

class IdeaController extends GetxController {
  static IdeaController instance = Get.find();
  RxMap<String, dynamic> ideaData = <String, dynamic>{}.obs;
  @override
  void onInit() {
    super.onInit();
    ideaData.value = <String, dynamic>{};
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class AllBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(IdeaController(), permanent: true);
  }
}
