part of 'checkbox_controller.dart';

class CheckboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckboxController>(() => CheckboxController());
  }
}
