import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for log_email widget.
  FocusNode? logEmailFocusNode;
  TextEditingController? logEmailTextController;
  String? Function(BuildContext, String?)? logEmailTextControllerValidator;
  String? _logEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for log_pass widget.
  FocusNode? logPassFocusNode;
  TextEditingController? logPassTextController;
  late bool logPassVisibility;
  String? Function(BuildContext, String?)? logPassTextControllerValidator;
  String? _logPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password should be 8 characters';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    logEmailTextControllerValidator = _logEmailTextControllerValidator;
    logPassVisibility = false;
    logPassTextControllerValidator = _logPassTextControllerValidator;
  }

  @override
  void dispose() {
    logEmailFocusNode?.dispose();
    logEmailTextController?.dispose();

    logPassFocusNode?.dispose();
    logPassTextController?.dispose();
  }
}
