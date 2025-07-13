import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_pic_widget.dart' show ProfilePicWidget;
import 'package:flutter/material.dart';

class ProfilePicModel extends FlutterFlowModel<ProfilePicWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profilePic = false;
  FFUploadedFile uploadedLocalFile_profilePic =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_profilePic = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
