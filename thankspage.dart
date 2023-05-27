import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'thanks_page_model.dart';
export 'thanks_page_model.dart';

class ThanksPageWidget extends StatefulWidget {
  const ThanksPageWidget({Key? key}) : super(key: key);

  @override
  _ThanksPageWidgetState createState() => _ThanksPageWidgetState();
}

class _ThanksPageWidgetState extends State<ThanksPageWidget> {
  late ThanksPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThanksPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.list,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 20,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
            child: Text(
              'Hi Prepps!',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 20,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.person,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 20,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
        ),
        body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/gambar4.jpg',
                    width: double.infinity,
                    height: 800,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 250),
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xFF00C959),
                    size: 150,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    'Pesananmu berhasil dibuat!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 20,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                  child: Text(
                    'Siapkan uang untuk pembayaran ya...',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Text(
                    'Terima kasih Prepps!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 25,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
