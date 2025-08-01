import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (validateAuthorization)] action in Dashboard widget.
  ApiCallResponse? apiResultipt;
  // Stores action output result for [Backend Call - API (calcularBolusDeCorrecao)] action in Image widget.
  ApiCallResponse? apiResult7hl;
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
