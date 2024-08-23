import 'package:app/src/pages/badge/badge_controller.dart';
import 'package:app/src/pages/button/button_controller.dart';
import 'package:app/src/pages/datePicker/date_picker_controller.dart';
import 'package:app/src/pages/dialog/dialog_controller.dart';
import 'package:app/src/pages/home/home_controller.dart';
import 'package:app/src/pages/login/login_controller.dart';
import 'package:app/src/pages/main/main_controller.dart';
import 'package:app/src/pages/progress/progress_controller.dart';
import 'package:app/src/pages/radioButton/radio_button_controller.dart';
import 'package:app/src/pages/selectionControl/selection_control_controller.dart';
import 'package:app/src/pages/textField/text_field_controller.dart';
import 'package:app/src/pages/toast/toast_controller.dart';
import 'package:app/src/pages/tooltip/tooltip_controller.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

part 'app_binding.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.button,
      page: () => const ButtonPage(),
      binding: ButtonBinding(),
    ),
    GetPage(
      name: Routes.datePicker,
      page: () => DatePickerPage(),
      binding: DatePickerBinding(),
    ),
    GetPage(
      name: Routes.dialog,
      page: () => const DialogPage(),
      binding: DialogBinding(),
    ),
    GetPage(
      name: Routes.progress,
      page: () => const ProgressPage(),
      binding: ProgressBinding(),
    ),
    GetPage(
      name: Routes.selectionControl,
      page: () => const SelectionControlPage(),
      binding: SelectionControlBinding(),
    ),  GetPage(
      name: Routes.radioButton,
      page: () => const RadioButtonPage(),
      binding: RadioButtonBinding(),
    ),
    GetPage(
      name: Routes.textField,
      page: () => const TextFieldPage(),
      binding: TextFieldBinding(),
    ),
    GetPage(
      name: Routes.badge,
      page: () => const BadgePage(),
      binding: BadgeBinding(),
    ),
    GetPage(
      name: Routes.tooltip,
      page: () => const TooltipPage(),
      binding: TooltipBinding(),
    ),
    GetPage(
      name: Routes.toast,
      page: () => const ToastPage(),
      binding: ToastBinding(),
    ),
  ];
}
