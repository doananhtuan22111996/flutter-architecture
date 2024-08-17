import 'package:app/src/components/main/button/app_button_base_builder.dart';
import 'package:app/src/components/main/page/app_main_page_base_builder.dart';
import 'package:app/src/components/main/textField/app_text_field_base_builder.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../components/main/iconButton/app_icon_button_base_builder.dart';
import '../../components/main/appBar/topAppBar/app_top_bar_base_builder.dart';
import '../../config/app_theme_ext.dart';
import '../../exts/R.dart';

part 'text_field_binding.dart';

part 'text_field_page.dart';

class TextFieldController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey();
  final obscureText = true.obs;
}
