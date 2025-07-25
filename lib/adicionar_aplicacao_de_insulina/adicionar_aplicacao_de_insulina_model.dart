import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'adicionar_aplicacao_de_insulina_widget.dart'
    show AdicionarAplicacaoDeInsulinaWidget;
import 'package:flutter/material.dart';

class AdicionarAplicacaoDeInsulinaModel
    extends FlutterFlowModel<AdicionarAplicacaoDeInsulinaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (listarInsulinaUsuario)] action in AdicionarAplicacaoDeInsulina widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Backend Call - API (obterLocaisRodizioDisponiveis)] action in AdicionarAplicacaoDeInsulina widget.
  ApiCallResponse? apiResultSugestao;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for rodizio widget.
  String? rodizioValue;
  FormFieldController<String>? rodizioValueController;
  // State field(s) for Quantidade widget.
  FocusNode? quantidadeFocusNode;
  TextEditingController? quantidadeTextController;
  String? Function(BuildContext, String?)? quantidadeTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (criarAplicacaoInsulina)] action in Button widget.
  ApiCallResponse? apiResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantidadeFocusNode?.dispose();
    quantidadeTextController?.dispose();
  }
}
