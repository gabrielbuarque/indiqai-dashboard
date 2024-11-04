import '/flutter_flow/flutter_flow_util.dart';
import 'senha_admin_criar_widget.dart' show SenhaAdminCriarWidget;
import 'package:flutter/material.dart';

class SenhaAdminCriarModel extends FlutterFlowModel<SenhaAdminCriarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  late bool shortBioVisibility;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    shortBioVisibility = false;
  }

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
