import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_drinking_order_page_widget.dart'
    show ChooseDrinkingOrderPageWidget;
import 'package:flutter/material.dart';

class ChooseDrinkingOrderPageModel
    extends FlutterFlowModel<ChooseDrinkingOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tableDropDown widget.
  String? tableDropDownValue;
  FormFieldController<String>? tableDropDownValueController;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue;
  FormFieldController<String>? mealDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
