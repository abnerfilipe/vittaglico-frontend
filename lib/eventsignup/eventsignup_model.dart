import '/flutter_flow/flutter_flow_util.dart';
import 'eventsignup_widget.dart' show EventsignupWidget;
import 'package:flutter/material.dart';

class EventsignupModel extends FlutterFlowModel<EventsignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phone_no widget.
  FocusNode? phoneNoFocusNode;
  TextEditingController? phoneNoTextController;
  String? Function(BuildContext, String?)? phoneNoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNoFocusNode?.dispose();
    phoneNoTextController?.dispose();
  }
}
