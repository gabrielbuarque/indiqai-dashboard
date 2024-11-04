import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criar_cupom_widget.dart' show CriarCupomWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CriarCupomModel extends FlutterFlowModel<CriarCupomWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cupomName widget.
  FocusNode? cupomNameFocusNode;
  TextEditingController? cupomNameTextController;
  String? Function(BuildContext, String?)? cupomNameTextControllerValidator;
  // State field(s) for descriptionCupom widget.
  FocusNode? descriptionCupomFocusNode;
  TextEditingController? descriptionCupomTextController;
  String? Function(BuildContext, String?)?
      descriptionCupomTextControllerValidator;
  String? _descriptionCupomTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'No minimo 4 caracteres de descrição.';
    }
    if (val.length > 30) {
      return 'No máximo 30 caracteres!';
    }

    return null;
  }

  // State field(s) for precoVenda widget.
  FocusNode? precoVendaFocusNode;
  TextEditingController? precoVendaTextController;
  String? Function(BuildContext, String?)? precoVendaTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for idnumber widget.
  int? idnumberValue;
  FormFieldController<int>? idnumberValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for pontosEquivalentes widget.
  FocusNode? pontosEquivalentesFocusNode;
  TextEditingController? pontosEquivalentesTextController;
  String? Function(BuildContext, String?)?
      pontosEquivalentesTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Insert Row] action in Image widget.
  ProductsRow? insert;
  Completer<List<EmpresasRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProductsRow>? dwadwa;

  @override
  void initState(BuildContext context) {
    descriptionCupomTextControllerValidator =
        _descriptionCupomTextControllerValidator;
  }

  @override
  void dispose() {
    cupomNameFocusNode?.dispose();
    cupomNameTextController?.dispose();

    descriptionCupomFocusNode?.dispose();
    descriptionCupomTextController?.dispose();

    precoVendaFocusNode?.dispose();
    precoVendaTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    pontosEquivalentesFocusNode?.dispose();
    pontosEquivalentesTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
