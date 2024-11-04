import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'notificacao_lancamento_model.dart';
export 'notificacao_lancamento_model.dart';

class NotificacaoLancamentoWidget extends StatefulWidget {
  const NotificacaoLancamentoWidget({
    super.key,
    this.title,
    this.message,
    required this.buttonText,
    Color? butttonColor,
    bool? buttonShow,
  })  : butttonColor = butttonColor ?? const Color(0xFF5DE9B0),
        buttonShow = buttonShow ?? false;

  final String? title;
  final String? message;
  final String? buttonText;
  final Color butttonColor;
  final bool buttonShow;

  @override
  State<NotificacaoLancamentoWidget> createState() =>
      _NotificacaoLancamentoWidgetState();
}

class _NotificacaoLancamentoWidgetState
    extends State<NotificacaoLancamentoWidget> {
  late NotificacaoLancamentoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificacaoLancamentoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.98,
          constraints: const BoxConstraints(
            maxWidth: 500.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  1.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estamos em pré-lançamento!',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 26.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w900,
                        lineHeight: 1.0,
                      ),
                ),
                AutoSizeText(
                  'Em breve você poderá utilizar todos \nos nossos beneficios e funcionalidades!',
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  minFontSize: 10.0,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        color: const Color(0xFF57636C),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Container(
                  height: 8.0,
                ),
                if (widget.buttonShow)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: widget.buttonText!,
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Nunito',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
              ]
                  .divide(const SizedBox(height: 12.0))
                  .addToStart(const SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
