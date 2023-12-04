import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_eating_order_page_widget.dart' show ChooseEatingOrderPageWidget;
import 'package:flutter/material.dart';

class ChooseEatingOrderPageModel
    extends FlutterFlowModel<ChooseEatingOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tableDropDown widget.
  String? tableDropDownValue;
  FormFieldController<String>? tableDropDownValueController;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue;
  FormFieldController<String>? mealDropDownValueController;
  // State field(s) for portionDropDown widget.
  String? portionDropDownValue;
  FormFieldController<String>? portionDropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
