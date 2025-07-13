import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_invite_widget.dart' show EditInviteWidget;
import 'package:flutter/material.dart';

class EditInviteModel extends FlutterFlowModel<EditInviteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for event_name widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  String? _eventNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for event_about widget.
  FocusNode? eventAboutFocusNode;
  TextEditingController? eventAboutTextController;
  String? Function(BuildContext, String?)? eventAboutTextControllerValidator;
  String? _eventAboutTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for event_location widget.
  FocusNode? eventLocationFocusNode;
  TextEditingController? eventLocationTextController;
  String? Function(BuildContext, String?)? eventLocationTextControllerValidator;
  String? _eventLocationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for event_email widget.
  FocusNode? eventEmailFocusNode;
  TextEditingController? eventEmailTextController;
  String? Function(BuildContext, String?)? eventEmailTextControllerValidator;
  String? _eventEmailTextControllerValidator(
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
    eventNameTextControllerValidator = _eventNameTextControllerValidator;
    eventAboutTextControllerValidator = _eventAboutTextControllerValidator;
    eventLocationTextControllerValidator =
        _eventLocationTextControllerValidator;
    eventEmailTextControllerValidator = _eventEmailTextControllerValidator;
  }

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    eventAboutFocusNode?.dispose();
    eventAboutTextController?.dispose();

    eventLocationFocusNode?.dispose();
    eventLocationTextController?.dispose();

    eventEmailFocusNode?.dispose();
    eventEmailTextController?.dispose();
  }
}
