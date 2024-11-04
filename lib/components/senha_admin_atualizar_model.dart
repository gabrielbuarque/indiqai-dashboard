import '/flutter_flow/flutter_flow_util.dart';
import 'senha_admin_atualizar_widget.dart' show SenhaAdminAtualizarWidget;
import 'package:flutter/material.dart';

class SenhaAdminAtualizarModel
    extends FlutterFlowModel<SenhaAdminAtualizarWidget> {
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
