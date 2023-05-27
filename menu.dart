import '/components/widget_menu_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pilihan_menu_model.dart';
export 'pilihan_menu_model.dart';

class PilihanMenuWidget extends StatefulWidget {
  const PilihanMenuWidget({Key? key}) : super(key: key);

  @override
  _PilihanMenuWidgetState createState() => _PilihanMenuWidgetState();
}

class _PilihanMenuWidgetState extends State<PilihanMenuWidget> {
  late PilihanMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PilihanMenuModel());

    _model.textController ??= TextEditingController();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
              textAlign: TextAlign.start,
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    'Enjoy with your favorite menu',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 44,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: _model.textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Cari menu favoritmu di sini',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).tertiary,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: DefaultTabController(
                      length: 3,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                              unselectedLabelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                              labelColor: FlutterFlowTheme.of(context).tertiary,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              borderWidth: 2,
                              borderRadius: 8,
                              elevation: 0,
                              buttonMargin:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                              tabs: [
                                Tab(
                                  text: 'Food',
                                ),
                                Tab(
                                  text: 'Drink',
                                ),
                                Tab(
                                  text: 'Snack',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.widgetMenuModel1,
                                      updateCallback: () => setState(() {}),
                                      child: WidgetMenuWidget(
                                        image:
                                            'https://healthybelly.s3.amazonaws.com/product/media_1653665482_0.jpeg',
                                        title: 'Nasi Goreng',
                                        subtitle: 'Seafood',
                                        price: 'Rp. 30.000',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel2,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://cdn.idntimes.com/content-images/community/2022/07/fromandroid-58eea46ff0a80dec9ca9f8da7bc8e49c_600x400.jpg',
                                          title: 'Mie Special',
                                          subtitle: 'Goreng/Rebus',
                                          price: 'Rp. 15.000',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel3,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://asset.kompas.com/crops/mKXI6KFaStgz3hPSuUx65XSxbcM=/142x72:863x553/750x500/data/photo/2022/09/27/633297e88244b.jpg',
                                          title: 'Ayam Special',
                                          subtitle: 'Bakar/Goreng',
                                          price: 'Rp. 25.000',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.widgetMenuModel4,
                                      updateCallback: () => setState(() {}),
                                      child: WidgetMenuWidget(
                                        image:
                                            'https://cdn.idntimes.com/content-images/post/20220926/delish-210419-iced-tea-02-landscape-jg-1619020612-cc671cedf266ace6d3b2d7ac6ee14e58_600x400.jpg',
                                        title: 'Es Teh',
                                        subtitle: 'Manis/Tawar',
                                        price: 'Rp. 8.000',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel5,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://static.toiimg.com/thumb/msid-80850219,width-1280,resizemode-4/80850219.jpg',
                                          title: 'Jus Spesial',
                                          subtitle: 'Buah-buahan',
                                          price: 'Rp. 12.000',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel6,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://preppykitchen.com/wp-content/uploads/2021/04/Milkshake-Recipe-Card.jpg',
                                          title: 'Milkshake',
                                          subtitle: 'Susu Sapi',
                                          price: 'Rp. 15.000',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.widgetMenuModel7,
                                      updateCallback: () => setState(() {}),
                                      child: WidgetMenuWidget(
                                        image:
                                            'https://kurio-img.kurioapps.com/22/02/11/8d92a2db-8a28-40e6-9a01-1ab859af5db0.jpe',
                                        title: 'Kentang Goreng',
                                        subtitle: 'Original/Pedas',
                                        price: 'Rp. 10.000',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel8,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://awsimages.detik.net.id/community/media/visual/2020/10/07/ini-5-tempat-roti-bakar-kekinian-yang-dijamin-bikin-nagih-3.jpeg?w=700&q=90',
                                          title: 'Roti Bakar',
                                          subtitle: 'Manis/Asin',
                                          price: 'Rp. 12.000',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: wrapWithModel(
                                        model: _model.widgetMenuModel9,
                                        updateCallback: () => setState(() {}),
                                        child: WidgetMenuWidget(
                                          image:
                                              'https://images.tokopedia.net/img/KRMmCm/2022/8/16/2fba2414-9ad0-4291-bf4a-ec8dabfb86d3.jpg',
                                          title: 'Dimsum',
                                          subtitle: 'Ayam/Seafood',
                                          price: 'Rp. 15.000',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
