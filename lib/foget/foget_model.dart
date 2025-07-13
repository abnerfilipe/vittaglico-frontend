import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'foget_widget.dart' show FogetWidget;
import 'package:flutter/material.dart';

class FogetModel extends FlutterFlowModel<FogetWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for forget_email widget.
  FocusNode? forgetEmailFocusNode;
  TextEditingController? forgetEmailTextController;
  String? Function(BuildContext, String?)? forgetEmailTextControllerValidator;
  String? _forgetEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    forgetEmailTextControllerValidator = _forgetEmailTextControllerValidator;
  }

  @override
  void dispose() {
    forgetEmailFocusNode?.dispose();
    forgetEmailTextController?.dispose();
  }
}
