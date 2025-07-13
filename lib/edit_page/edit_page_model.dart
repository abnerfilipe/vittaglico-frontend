import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_page_widget.dart' show EditPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditPageModel extends FlutterFlowModel<EditPageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profilePicAgain = false;
  FFUploadedFile uploadedLocalFile_profilePicAgain =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_profilePicAgain = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
