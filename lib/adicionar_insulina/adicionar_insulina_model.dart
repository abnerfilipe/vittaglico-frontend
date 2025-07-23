import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'adicionar_insulina_widget.dart' show AdicionarInsulinaWidget;
import 'package:flutter/material.dart';

class AdicionarInsulinaModel extends FlutterFlowModel<AdicionarInsulinaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeInsulina widget.
  FocusNode? nomeInsulinaFocusNode;
  TextEditingController? nomeInsulinaTextController;
  String? Function(BuildContext, String?)? nomeInsulinaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DuracaoHoras widget.
  FocusNode? duracaoHorasFocusNode;
  TextEditingController? duracaoHorasTextController;
  String? Function(BuildContext, String?)? duracaoHorasTextControllerValidator;
  // State field(s) for PicoDeAcao widget.
  FocusNode? picoDeAcaoFocusNode;
  TextEditingController? picoDeAcaoTextController;
  String? Function(BuildContext, String?)? picoDeAcaoTextControllerValidator;
  // Stores action output result for [Backend Call - API (criarInsulina)] action in Button widget.
  ApiCallResponse? apiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeInsulinaFocusNode?.dispose();
    nomeInsulinaTextController?.dispose();

    duracaoHorasFocusNode?.dispose();
    duracaoHorasTextController?.dispose();

    picoDeAcaoFocusNode?.dispose();
    picoDeAcaoTextController?.dispose();
  }
}
