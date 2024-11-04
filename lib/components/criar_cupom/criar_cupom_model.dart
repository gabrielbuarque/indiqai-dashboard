import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'criar_cupom_widget.dart' show CriarCupomWidget;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

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
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
