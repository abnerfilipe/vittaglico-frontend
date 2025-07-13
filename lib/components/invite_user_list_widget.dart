import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';
import 'invite_user_list_model.dart';
export 'invite_user_list_model.dart';

class InviteUserListWidget extends StatefulWidget {
  const InviteUserListWidget({
    super.key,
    required this.eventSHare,
  });

  final UserEventsRecord? eventSHare;

  @override
  State<InviteUserListWidget> createState() => _InviteUserListWidgetState();
}

class _InviteUserListWidgetState extends State<InviteUserListWidget> {
  late InviteUserListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InviteUserListModel());

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
    return Container(
      width: 375.0,
      height: 505.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 50.0,
                        child: Divider(
                          thickness: 5.0,
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                      Container(
                        width: 327.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 2000),
                            () async {
                              await queryUserRecordOnce()
                                  .then(
                                    (records) => _model.simpleSearchResults =
                                        TextSearch(
                                      records
                                          .map(
                                            (record) =>
                                                TextSearchItem.fromTerms(record,
                                                    [record.displayName]),
                                          )
                                          .toList(),
                                    )
                                            .search(_model.textController.text)
                                            .map((r) => r.object)
                                            .toList(),
                                  )
                                  .onError((_, __) =>
                                      _model.simpleSearchResults = [])
                                  .whenComplete(() => safeSetState(() {}));
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF7D7D7D),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            hintText: 'Search by Name',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDADADA),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ].divide(SizedBox(height: 15.0)),
                  ),
                ),
                if (_model.textController.text == '')
                  FutureBuilder<List<UserRecord>>(
                    future: FFAppState().shareList(
                      requestFn: () => queryUserRecordOnce().then((result) {
                        _model.firestoreRequestCompleted = true;
                        return result;
                      }),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UserRecord> allUserUserRecordList = snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: allUserUserRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 25.0),
                        itemBuilder: (context, allUserIndex) {
                          final allUserUserRecord =
                              allUserUserRecordList[allUserIndex];
                          return Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        child: Image.network(
                                          allUserUserRecord.photoUrl,
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        allUserUserRecord.displayName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF0A014F),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 13.0)),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    if (widget.eventSHare?.people.contains(
                                            allUserUserRecord.reference) !=
                                        true)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.eventSHare!.reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'people':
                                                    FieldValue.arrayUnion([
                                                  allUserUserRecord.reference
                                                ]),
                                              },
                                            ),
                                          });

                                          await NotificationRecord.createDoc(
                                                  currentUserReference!)
                                              .set(createNotificationRecordData(
                                            userName:
                                                allUserUserRecord.displayName,
                                            userEmail: allUserUserRecord.email,
                                            userID: allUserUserRecord.reference,
                                            photoUrl:
                                                allUserUserRecord.photoUrl,
                                            eventName:
                                                widget.eventSHare?.eventName,
                                            eventRef:
                                                widget.eventSHare?.reference,
                                            eventLocation: widget
                                                .eventSHare?.eventLocation,
                                            eventDate:
                                                widget.eventSHare?.eventDate,
                                            eventTime:
                                                widget.eventSHare?.eventTime,
                                            organiserEmail:
                                                widget.eventSHare?.eventEmail,
                                            eventDes:
                                                widget.eventSHare?.aboutEvent,
                                          ));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Invitation Sent',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );

                                          context.pushNamed(
                                              DashboardWidget.routeName);

                                          safeSetState(() {
                                            FFAppState().clearShareListCache();
                                            _model.firestoreRequestCompleted =
                                                false;
                                          });
                                          await _model
                                              .waitForFirestoreRequestCompleted();
                                        },
                                        child: Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(),
                                          child: FlutterFlowIconButton(
                                            icon: Icon(
                                              Icons.send_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 28.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              await widget
                                                  .eventSHare!.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'people':
                                                        FieldValue.arrayUnion([
                                                      allUserUserRecord
                                                          .reference
                                                    ]),
                                                  },
                                                ),
                                              });

                                              await NotificationRecord
                                                      .createDoc(
                                                          currentUserReference!)
                                                  .set(
                                                      createNotificationRecordData(
                                                userName: allUserUserRecord
                                                    .displayName,
                                                userEmail:
                                                    allUserUserRecord.email,
                                                userID:
                                                    allUserUserRecord.reference,
                                                photoUrl:
                                                    allUserUserRecord.photoUrl,
                                                eventName: widget
                                                    .eventSHare?.eventName,
                                                eventRef: widget
                                                    .eventSHare?.reference,
                                                eventLocation: widget
                                                    .eventSHare?.eventLocation,
                                                eventDate: widget
                                                    .eventSHare?.eventDate,
                                                eventTime: widget
                                                    .eventSHare?.eventTime,
                                                organiserEmail: widget
                                                    .eventSHare?.eventEmail,
                                                eventDes: widget
                                                    .eventSHare?.aboutEvent,
                                              ));
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Invitation Sent',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );

                                              context.pushNamed(
                                                  DashboardWidget.routeName);

                                              safeSetState(() {
                                                FFAppState()
                                                    .clearShareListCache();
                                                _model.firestoreRequestCompleted =
                                                    false;
                                              });
                                              await _model
                                                  .waitForFirestoreRequestCompleted();
                                            },
                                          ),
                                        ),
                                      ),
                                    if (widget.eventSHare?.people.contains(
                                            allUserUserRecord.reference) ==
                                        true)
                                      Container(
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.check_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 28.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                if (_model.textController.text != '')
                  Builder(
                    builder: (context) {
                      final searResult = _model.simpleSearchResults.toList();

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: searResult.length,
                        separatorBuilder: (_, __) => SizedBox(height: 25.0),
                        itemBuilder: (context, searResultIndex) {
                          final searResultItem = searResult[searResultIndex];
                          return Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        child: Image.network(
                                          searResultItem.photoUrl,
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        searResultItem.displayName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF0A014F),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 13.0)),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    if (widget.eventSHare?.people.contains(
                                            searResultItem.reference) !=
                                        true)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.eventSHare!.reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'people': FieldValue.arrayUnion(
                                                    [searResultItem.reference]),
                                              },
                                            ),
                                          });

                                          await NotificationRecord.createDoc(
                                                  currentUserReference!)
                                              .set(createNotificationRecordData(
                                            userName:
                                                searResultItem.displayName,
                                            userEmail: searResultItem.email,
                                            userID: searResultItem.reference,
                                            photoUrl: searResultItem.photoUrl,
                                            eventName:
                                                widget.eventSHare?.eventName,
                                            eventRef:
                                                widget.eventSHare?.reference,
                                            eventLocation: widget
                                                .eventSHare?.eventLocation,
                                            eventDate:
                                                widget.eventSHare?.eventDate,
                                            eventTime:
                                                widget.eventSHare?.eventTime,
                                            organiserEmail:
                                                widget.eventSHare?.eventEmail,
                                            eventDes:
                                                widget.eventSHare?.aboutEvent,
                                          ));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Invitation Sent',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );

                                          context.pushNamed(
                                              DashboardWidget.routeName);
                                        },
                                        child: Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            buttonSize: 46.0,
                                            icon: Icon(
                                              Icons.send_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 28.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              await widget
                                                  .eventSHare!.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'people':
                                                        FieldValue.arrayUnion([
                                                      searResultItem.reference
                                                    ]),
                                                  },
                                                ),
                                              });

                                              await NotificationRecord
                                                      .createDoc(
                                                          currentUserReference!)
                                                  .set(
                                                      createNotificationRecordData(
                                                userName:
                                                    searResultItem.displayName,
                                                userEmail: searResultItem.email,
                                                userID:
                                                    searResultItem.reference,
                                                photoUrl:
                                                    searResultItem.photoUrl,
                                                eventName: widget
                                                    .eventSHare?.eventName,
                                                eventRef: widget
                                                    .eventSHare?.reference,
                                                eventLocation: widget
                                                    .eventSHare?.eventLocation,
                                                eventDate: widget
                                                    .eventSHare?.eventDate,
                                                eventTime: widget
                                                    .eventSHare?.eventTime,
                                                organiserEmail: widget
                                                    .eventSHare?.eventEmail,
                                                eventDes: widget
                                                    .eventSHare?.aboutEvent,
                                              ));
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Invitation Sent',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );

                                              context.pushNamed(
                                                  DashboardWidget.routeName);
                                            },
                                          ),
                                        ),
                                      ),
                                    if (widget.eventSHare?.people.contains(
                                            searResultItem.reference) ==
                                        true)
                                      Container(
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.check_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 28.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}
