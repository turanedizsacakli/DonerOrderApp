import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_eating_order_page_widget.dart' show ChooseEatingOrderPageWidget;
import 'package:flutter/material.dart';

class ChooseEatingOrderPageModel
    extends FlutterFlowModel<ChooseEatingOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for portionRadioButton widget.
  FormFieldController<String>? portionRadioButtonValueController;
  // State field(s) for featuresCheckboxGroup widget.
  List<String>? featuresCheckboxGroupValues;
  FormFieldController<List<String>>? featuresCheckboxGroupValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get portionRadioButtonValue =>
      portionRadioButtonValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
