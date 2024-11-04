import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cupom_edit_model.dart';
export 'cupom_edit_model.dart';

class CupomEditWidget extends StatefulWidget {
  /// para restaurante poder editar e ver quantos cupons do item ainda tem
  /// disponiveis para serem sorteados
  const CupomEditWidget({super.key});

  @override
  State<CupomEditWidget> createState() => _CupomEditWidgetState();
}

class _CupomEditWidgetState extends State<CupomEditWidget> {
  late CupomEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CupomEditModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          constraints: BoxConstraints(
            maxWidth: 250.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      'https://images.unsplash.com/reserve/oMRKkMc4RSq7N91OZl0O_IMG_8309.jpg?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOXx8Zm9vZHxlbnwwfHx8fDE3MjU4MTQ3Nzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                      width: double.infinity,
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Nome Prêmio',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Nunito',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Text(
                          'Assista aos maiores sucessos do Natiruts',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      '216 ativos',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
