part of 'radio_button_controller.dart';

class RadioButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadioButtonController>(() => RadioButtonController());
  }
}
