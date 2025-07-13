import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'joined_event_page_widget.dart' show JoinedEventPageWidget;
import 'package:flutter/material.dart';

class JoinedEventPageModel extends FlutterFlowModel<JoinedEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
