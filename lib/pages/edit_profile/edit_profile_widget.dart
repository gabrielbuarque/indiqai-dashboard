import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/header/header_widget.dart';
import '/components/navigator/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_profile_model.dart';
export 'edit_profile_model.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.fullNameTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<EmpresasRow>>(
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
              List<EmpresasRow> homeStackEmpresasRowList = snapshot.data!;

              final homeStackEmpresasRow = homeStackEmpresasRowList.isNotEmpty
                  ? homeStackEmpresasRowList.first
                  : null;

              return Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.headerModel,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: HeaderWidget(),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBachGround,
                                    ),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Wrap(
                                              spacing: 20.0,
                                              runSpacing: 20.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .subHeaderModel,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    SubHeaderWidget(
                                                                  title:
                                                                      'Editar Perfil',
                                                                  showBackBtn:
                                                                      true,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Wrap(
                                                          spacing: 24.0,
                                                          runSpacing: 24.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .center,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .stretch,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  homeStackEmpresasRow?.name,
                                                                                  'Sem nome',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Nunito',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: CachedNetworkImage(
                                                                                  fadeInDuration: Duration(milliseconds: 500),
                                                                                  fadeOutDuration: Duration(milliseconds: 500),
                                                                                  imageUrl: homeStackEmpresasRow!.profilePicture!,
                                                                                  fit: BoxFit.cover,
                                                                                  errorWidget: (context, error, stackTrace) => Image.asset(
                                                                                    'assets/images/error_image.png',
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  _model.uploadedFileUrl2,
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 162.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Wrap(
                                                                                spacing: 20.0,
                                                                                runSpacing: 16.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Foto de perfil',
                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Aqui você pode atualizar sua foto',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    color: FlutterFlowTheme.of(context).neutral500,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 600.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            final selectedMedia = await selectMedia(
                                                                                              storageFolderPath: 'usuarios',
                                                                                              imageQuality: 30,
                                                                                              includeBlurHash: true,
                                                                                              mediaSource: MediaSource.photoGallery,
                                                                                              multiImage: false,
                                                                                            );
                                                                                            if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                              safeSetState(() => _model.isDataUploading1 = true);
                                                                                              var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                              var downloadUrls = <String>[];
                                                                                              try {
                                                                                                showUploadMessage(
                                                                                                  context,
                                                                                                  'Uploading file...',
                                                                                                  showLoading: true,
                                                                                                );
                                                                                                selectedUploadedFiles = selectedMedia
                                                                                                    .map((m) => FFUploadedFile(
                                                                                                          name: m.storagePath.split('/').last,
                                                                                                          bytes: m.bytes,
                                                                                                          height: m.dimensions?.height,
                                                                                                          width: m.dimensions?.width,
                                                                                                          blurHash: m.blurHash,
                                                                                                        ))
                                                                                                    .toList();

                                                                                                downloadUrls = await uploadSupabaseStorageFiles(
                                                                                                  bucketName: 'Perfil',
                                                                                                  selectedFiles: selectedMedia,
                                                                                                );
                                                                                              } finally {
                                                                                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                _model.isDataUploading1 = false;
                                                                                              }
                                                                                              if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                                safeSetState(() {
                                                                                                  _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                                  _model.uploadedFileUrl1 = downloadUrls.first;
                                                                                                });
                                                                                                showUploadMessage(context, 'Success!');
                                                                                              } else {
                                                                                                safeSetState(() {});
                                                                                                showUploadMessage(context, 'Failed to upload data');
                                                                                                return;
                                                                                              }
                                                                                            }

                                                                                            await EmpresasTable().update(
                                                                                              data: {
                                                                                                'profile_picture': _model.uploadedFileUrl1,
                                                                                              },
                                                                                              matchingRows: (rows) => rows.eq(
                                                                                                'id',
                                                                                                currentUserUid,
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                minWidth: 200.0,
                                                                                                maxWidth: 240.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(20.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Enviar nova foto',
                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                            fontFamily: 'Nunito',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Icon(
                                                                                                      Icons.upload_file,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ].divide(SizedBox(width: 4.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Max 2 mb',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    color: FlutterFlowTheme.of(context).neutral400,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 10.0)),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Wrap(
                                                                                spacing: 20.0,
                                                                                runSpacing: 16.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Foto de entrada',
                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Aqui você pode atualizar sua foto',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    color: FlutterFlowTheme.of(context).neutral500,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 600.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            final selectedMedia = await selectMedia(
                                                                                              storageFolderPath: 'usuarios',
                                                                                              imageQuality: 30,
                                                                                              includeBlurHash: true,
                                                                                              mediaSource: MediaSource.photoGallery,
                                                                                              multiImage: false,
                                                                                            );
                                                                                            if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                              safeSetState(() => _model.isDataUploading2 = true);
                                                                                              var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                              var downloadUrls = <String>[];
                                                                                              try {
                                                                                                showUploadMessage(
                                                                                                  context,
                                                                                                  'Uploading file...',
                                                                                                  showLoading: true,
                                                                                                );
                                                                                                selectedUploadedFiles = selectedMedia
                                                                                                    .map((m) => FFUploadedFile(
                                                                                                          name: m.storagePath.split('/').last,
                                                                                                          bytes: m.bytes,
                                                                                                          height: m.dimensions?.height,
                                                                                                          width: m.dimensions?.width,
                                                                                                          blurHash: m.blurHash,
                                                                                                        ))
                                                                                                    .toList();

                                                                                                downloadUrls = await uploadSupabaseStorageFiles(
                                                                                                  bucketName: 'Perfil',
                                                                                                  selectedFiles: selectedMedia,
                                                                                                );
                                                                                              } finally {
                                                                                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                _model.isDataUploading2 = false;
                                                                                              }
                                                                                              if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                                safeSetState(() {
                                                                                                  _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                                  _model.uploadedFileUrl2 = downloadUrls.first;
                                                                                                });
                                                                                                showUploadMessage(context, 'Success!');
                                                                                              } else {
                                                                                                safeSetState(() {});
                                                                                                showUploadMessage(context, 'Failed to upload data');
                                                                                                return;
                                                                                              }
                                                                                            }

                                                                                            await EmpresasTable().update(
                                                                                              data: {
                                                                                                'entrance_picture': _model.uploadedFileUrl2,
                                                                                              },
                                                                                              matchingRows: (rows) => rows.eq(
                                                                                                'id',
                                                                                                currentUserUid,
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                minWidth: 200.0,
                                                                                                maxWidth: 240.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(20.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Enviar nova foto',
                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                            fontFamily: 'Nunito',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Icon(
                                                                                                      Icons.upload_file,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ].divide(SizedBox(width: 4.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Max 2 mb',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    color: FlutterFlowTheme.of(context).neutral400,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 10.0)),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Wrap(
                                                                                spacing: 20.0,
                                                                                runSpacing: 16.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Abertura da rodada',
                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 600.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Switch.adaptive(
                                                                                          value: _model.switchValue ??= homeStackEmpresasRow!.isOpen!,
                                                                                          onChanged: (newValue) async {
                                                                                            safeSetState(() => _model.switchValue = newValue!);
                                                                                          },
                                                                                          activeColor: FlutterFlowTheme.of(context).primary,
                                                                                          activeTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                          inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                          inactiveThumbColor: FlutterFlowTheme.of(context).primary,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Wrap(
                                                                                spacing: 20.0,
                                                                                runSpacing: 16.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Horário da rodada',
                                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 600.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 400.0,
                                                                                          child: TextFormField(
                                                                                            controller: _model.fullNameTextFieldTextController ??= TextEditingController(
                                                                                              text: homeStackEmpresasRow?.openTime?.time?.toString(),
                                                                                            ),
                                                                                            focusNode: _model.fullNameTextFieldFocusNode,
                                                                                            onChanged: (_) => EasyDebounce.debounce(
                                                                                              '_model.fullNameTextFieldTextController',
                                                                                              Duration(milliseconds: 500),
                                                                                              () => safeSetState(() {}),
                                                                                            ),
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'horário da próxima rodada (14:20)',
                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    color: FlutterFlowTheme.of(context).neutral300,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).neutral100,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                  fontFamily: 'Nunito',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            maxLength: 25,
                                                                                            maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                                            keyboardType: TextInputType.datetime,
                                                                                            cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                            validator: _model.fullNameTextFieldTextControllerValidator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            final _datePickedTime = await showTimePicker(
                                                                                              context: context,
                                                                                              initialTime: TimeOfDay.fromDateTime(getCurrentTimestamp),
                                                                                              builder: (context, child) {
                                                                                                return wrapInMaterialTimePickerTheme(
                                                                                                  context,
                                                                                                  child!,
                                                                                                  headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                  headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                  headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                        fontFamily: 'Nunito',
                                                                                                        fontSize: 32.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                      ),
                                                                                                  pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                  selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                  selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                  actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                  iconSize: 24.0,
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                            if (_datePickedTime != null) {
                                                                                              safeSetState(() {
                                                                                                _model.datePicked = DateTime(
                                                                                                  getCurrentTimestamp.year,
                                                                                                  getCurrentTimestamp.month,
                                                                                                  getCurrentTimestamp.day,
                                                                                                  _datePickedTime.hour,
                                                                                                  _datePickedTime.minute,
                                                                                                );
                                                                                              });
                                                                                            }
                                                                                            safeSetState(() {
                                                                                              _model.fullNameTextFieldTextController?.text = _model.datePicked!.toString();
                                                                                              _model.fullNameTextFieldTextController?.selection = TextSelection.collapsed(offset: _model.fullNameTextFieldTextController!.text.length);
                                                                                            });
                                                                                          },
                                                                                          text: 'Selecionar horário',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Nunito',
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Wrap(
                                                                                spacing: 20.0,
                                                                                runSpacing: 16.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 600.0,
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      await EmpresasTable().update(
                                                                                        data: {
                                                                                          'is_open': _model.switchValue,
                                                                                          'open_time': supaSerialize<PostgresTime>(PostgresTime(_model.datePicked)),
                                                                                        },
                                                                                        matchingRows: (rows) => rows.eq(
                                                                                          'id',
                                                                                          currentUserUid,
                                                                                        ),
                                                                                      );
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Salvo com sucesso!',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                    text: 'Salvar dados',
                                                                                    icon: Icon(
                                                                                      Icons.save_rounded,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      width: 310.0,
                                                                                      height: 50.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Nunito',
                                                                                            color: FlutterFlowTheme.of(context).white0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      GoRouter.of(context).prepareAuthEvent();
                                                                                      await authManager.signOut();
                                                                                      GoRouter.of(context).clearRedirectLocation();

                                                                                      context.goNamedAuth('LoginPage', context.mounted);
                                                                                    },
                                                                                    text: 'Sair da conta',
                                                                                    icon: Icon(
                                                                                      Icons.exit_to_app,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      width: 310.0,
                                                                                      height: 50.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                      textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Nunito',
                                                                                            color: FlutterFlowTheme.of(context).white0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(SizedBox(height: 24.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            16.0)),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        24.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            height: 24.0))
                                                        .addToStart(SizedBox(
                                                            height: 12.0))
                                                        .addToEnd(SizedBox(
                                                            height: 24.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 20.0))
                                            .addToStart(SizedBox(height: 20.0))
                                            .addToEnd(SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.79, -0.97),
                        child: wrapWithModel(
                          model: _model.navigatorModel,
                          updateCallback: () => safeSetState(() {}),
                          child: NavigatorWidget(
                            expanded: true,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
