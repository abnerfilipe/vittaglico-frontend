import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'calcular_correcao_glicemia_widget.dart'
    show CalcularCorrecaoGlicemiaWidget;
import 'package:flutter/material.dart';

class CalcularCorrecaoGlicemiaModel
    extends FlutterFlowModel<CalcularCorrecaoGlicemiaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  // Stores action output result for [Backend Call - API (calcularBolusDeCorrecao)] action in Button widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valorFocusNode?.dispose();
    valorTextController?.dispose();
  }
}
