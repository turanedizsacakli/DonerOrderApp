import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ex_choose_eating_order_page_widget.dart'
    show ExChooseEatingOrderPageWidget;
import 'package:flutter/material.dart';

class ExChooseEatingOrderPageModel
    extends FlutterFlowModel<ExChooseEatingOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for MealsRadioButtons widget.
  FormFieldController<String>? mealsRadioButtonsValueController;
  // State field(s) for ProtionRadioButton widget.
  FormFieldController<String>? protionRadioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get mealsRadioButtonsValue => mealsRadioButtonsValueController?.value;
  String? get protionRadioButtonValue =>
      protionRadioButtonValueController?.value;
}
