import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'adicionar_glicemia_widget.dart' show AdicionarGlicemiaWidget;
import 'package:flutter/material.dart';

class AdicionarGlicemiaModel extends FlutterFlowModel<AdicionarGlicemiaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for periodo widget.
  String? periodoValue;
  FormFieldController<String>? periodoValueController;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // Stores action output result for [Backend Call - API (adicionarGlicemiaUsuario)] action in Button widget.
  ApiCallResponse? apiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valorFocusNode?.dispose();
    valorTextController?.dispose();
  }
}
