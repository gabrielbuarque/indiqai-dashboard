import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/header/header_widget.dart';
import '/components/navigator/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'validar_cupom_widget.dart' show ValidarCupomWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidarCupomModel extends FlutterFlowModel<ValidarCupomWidget> {
  ///  Local state fields for this page.

  bool show = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  var scanCode = '';
  // State field(s) for codigoCupom widget.
  FocusNode? codigoCupomFocusNode;
  TextEditingController? codigoCupomTextController;
  String? Function(BuildContext, String?)? codigoCupomTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<RewardsRow>? queryCupom;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RewardsRow>();
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    subHeaderModel.dispose();
    codigoCupomFocusNode?.dispose();
    codigoCupomTextController?.dispose();

    paginatedDataTableController.dispose();
    navigatorModel.dispose();
  }
}
