import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/user_menu/user_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 2.0,
            height: double.infinity,
            decoration: const BoxDecoration(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .textFieldBachGround,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: FlutterFlowIconButton(
                                    borderRadius: 12.0,
                                    borderWidth: 1.0,
                                    buttonSize: 48.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.menu,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      FFAppState().drawer =
                                          !FFAppState().drawer;
                                      FFAppState().update(() {});
                                    },
                                  ),
                                ),
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: const BoxDecoration(),
                                  child: Icon(
                                    Icons.search,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  SizedBox(
                                    width: 300.0,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        const Duration(milliseconds: 500),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText: 'Buscar ...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray400,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            letterSpacing: 0.0,
                                          ),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (!FFAppState().drawer &&
                          responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: SvgPicture.asset(
                                'assets/images/LOGO_PDF_INDIQAI_GORN_FUNDO_TRANSP.svg',
                                width: 100.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                    ].divide(const SizedBox(width: 12.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) => FutureBuilder<List<EmpresasRow>>(
                          future: EmpresasTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'id',
                              currentUserUid,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitChasingDots(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<EmpresasRow> circleImageEmpresasRowList =
                                snapshot.data!;

                            final circleImageEmpresasRow =
                                circleImageEmpresasRowList.isNotEmpty
                                    ? circleImageEmpresasRowList.first
                                    : null;

                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showAlignedDialog(
                                  context: context,
                                  isGlobal: false,
                                  avoidOverflow: false,
                                  targetAnchor: const AlignmentDirectional(1.0, 1.0)
                                      .resolve(Directionality.of(context)),
                                  followerAnchor:
                                      const AlignmentDirectional(1.0, -1.0)
                                          .resolve(Directionality.of(context)),
                                  builder: (dialogContext) {
                                    return const Material(
                                      color: Colors.transparent,
                                      child: UserMenuWidget(),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 44.0,
                                height: 44.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    circleImageEmpresasRow?.profilePicture,
                                    'https://rzljgqcrlznbanqmbvvd.supabase.co/storage/v1/object/public/imagem/usuarios/SOCIALSHARE%20INDIQAI.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ].divide(const SizedBox(width: 24.0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
