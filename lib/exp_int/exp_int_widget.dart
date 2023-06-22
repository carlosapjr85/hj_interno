import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'exp_int_model.dart';
export 'exp_int_model.dart';

class ExpIntWidget extends StatefulWidget {
  const ExpIntWidget({Key? key}) : super(key: key);

  @override
  _ExpIntWidgetState createState() => _ExpIntWidgetState();
}

class _ExpIntWidgetState extends State<ExpIntWidget> {
  late ExpIntModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpIntModel());

    _model.textfieldCDOFINTController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF434343),
        appBar: AppBar(
          backgroundColor: Color(0xFFB61F24),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Login_INT');
            },
          ),
          title: Text(
            'EXPEDIÇÃO',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Rubik',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/HJ_MARCA_MONOGRAMA_FUNDO_CINZA-ai.png',
                                width: 150.0,
                                height: 113.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: 260.0,
                                height: 65.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.textfieldCDOFINTController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textfieldCDOFINTController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              _model.varCliente = ' ';
                                              _model.varNF = ' ';
                                              _model.varPedido = ' ';
                                              _model.varArtigo = ' ';
                                              _model.varPecas = ' ';
                                              _model.varPeso = ' ';
                                              _model.varRamTub = ' ';
                                              _model.varCDOF = ' ';
                                            },
                                          ),
                                          onFieldSubmitted: (_) async {
                                            var _shouldSetState = false;
                                            _model.apiResultExpINT =
                                                await BuscaOSExpINTCall.call(
                                              apiGetCDOF: int.tryParse(_model
                                                  .textfieldCDOFINTController
                                                  .text),
                                            );
                                            _shouldSetState = true;
                                            if ((_model.apiResultExpINT
                                                    ?.succeeded ??
                                                true)) {
                                              if (BuscaOSExpINTCall.apiCDOF(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString() !=
                                                  'null') {
                                                setState(() {
                                                  _model.varCliente =
                                                      BuscaOSExpINTCall
                                                          .apiCLIENTE(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varNF =
                                                      BuscaOSExpINTCall.apiNF(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varPedido =
                                                      BuscaOSExpINTCall
                                                          .apiPEDIDO(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varArtigo =
                                                      BuscaOSExpINTCall
                                                          .apiARTIGO(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varPecas =
                                                      BuscaOSExpINTCall
                                                          .apiPECAS(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varPeso =
                                                      BuscaOSExpINTCall.apiPESO(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  _model.varRamTub =
                                                      BuscaOSExpINTCall
                                                          .apiRAMTUB(
                                                    (_model.apiResultExpINT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                });
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Atenção'),
                                                      content: Text(
                                                          'OS inválida ou faturada.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                setState(() {
                                                  _model.varCliente = ' ';
                                                  _model.varNF = ' ';
                                                  _model.varPedido = ' ';
                                                  _model.varArtigo = ' ';
                                                  _model.varPecas = ' ';
                                                  _model.varPeso = ' ';
                                                  _model.varRamTub = ' ';
                                                  _model.varCDOF = ' ';
                                                });
                                                setState(() {
                                                  _model
                                                      .textfieldCDOFINTController
                                                      ?.clear();
                                                });
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              setState(() {
                                                _model.varCliente = ' ';
                                                _model.varNF = ' ';
                                                _model.varPedido = ' ';
                                                _model.varArtigo = ' ';
                                                _model.varPecas = ' ';
                                                _model.varPeso = ' ';
                                                _model.varRamTub = ' ';
                                                _model.varCDOF = ' ';
                                              });
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText: 'Digite a O.S.',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFFB61F24),
                                                      fontSize: 25.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD01A22),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFCECECE),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    9.0, 9.0, 9.0, 9.0),
                                            suffixIcon: _model
                                                    .textfieldCDOFINTController!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .textfieldCDOFINTController
                                                          ?.clear();
                                                      _model.varCliente = ' ';
                                                      _model.varNF = ' ';
                                                      _model.varPedido = ' ';
                                                      _model.varArtigo = ' ';
                                                      _model.varPecas = ' ';
                                                      _model.varPeso = ' ';
                                                      _model.varRamTub = ' ';
                                                      _model.varCDOF = ' ';
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFFB61F24),
                                                      size: 25.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Color(0xFFB61F24),
                                                fontSize: 40.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          textAlign: TextAlign.center,
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: true),
                                          validator: _model
                                              .textfieldCDOFINTControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.textfieldCDOFINTMask
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 360.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                          color: Color(0x0000000E),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 3.0),
                                child: Text(
                                  'Cliente',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Rubik',
                                        color: Color(0xFFFDFDFD),
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width: 340.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF292929),
                                      borderRadius: BorderRadius.circular(5.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: _model.textfieldCDOFINTController
                                                        .text ==
                                                    null ||
                                                _model.textfieldCDOFINTController
                                                        .text ==
                                                    ''
                                            ? Colors.black
                                            : Color(0xFF810104),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        _model.varCliente,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Rubik',
                                              color: Color(0xFFFDFDFD),
                                              fontSize: 20.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 360.0,
                        height: 73.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 3.0),
                                      child: Text(
                                        'Nota Fiscal',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Rubik',
                                              color: Color(0xFFFDFDFD),
                                              fontSize: 15.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 1.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Container(
                                          width: 150.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF292929),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                              color: _model.textfieldCDOFINTController
                                                              .text ==
                                                          null ||
                                                      _model.textfieldCDOFINTController
                                                              .text ==
                                                          ''
                                                  ? Colors.black
                                                  : Color(0xFF810104),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              _model.varNF,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            Color(0xFFFDFDFD),
                                                        fontSize: 20.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 3.0),
                                        child: Text(
                                          'Pedido / Referência',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Rubik',
                                                color: Color(0xFFFDFDFD),
                                                fontSize: 15.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 1.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Container(
                                            width: 170.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF292929),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                color: _model.textfieldCDOFINTController
                                                                .text ==
                                                            null ||
                                                        _model.textfieldCDOFINTController
                                                                .text ==
                                                            ''
                                                    ? Colors.black
                                                    : Color(0xFF810104),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                _model.varPedido,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          color:
                                                              Color(0xFFFDFDFD),
                                                          fontSize: 20.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 360.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: Color(0x0000000E),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 3.0),
                                child: Text(
                                  'Artigo',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Rubik',
                                        color: Color(0xFFFDFDFD),
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Container(
                                    width: 340.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF292929),
                                      borderRadius: BorderRadius.circular(5.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: _model.textfieldCDOFINTController
                                                        .text ==
                                                    null ||
                                                _model.textfieldCDOFINTController
                                                        .text ==
                                                    ''
                                            ? Colors.black
                                            : Color(0xFF810104),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          _model.varArtigo,
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Rubik',
                                                color: Color(0xFFFDFDFD),
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 360.0,
                      height: 73.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 3.0),
                                      child: Text(
                                        'Peso',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Rubik',
                                              color: Color(0xFFFDFDFD),
                                              fontSize: 15.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 1.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Container(
                                          width: 90.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF292929),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                              color: _model.textfieldCDOFINTController
                                                              .text ==
                                                          null ||
                                                      _model.textfieldCDOFINTController
                                                              .text ==
                                                          ''
                                                  ? Colors.black
                                                  : Color(0xFF810104),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              _model.varPeso
                                                  .maybeHandleOverflow(
                                                      maxChars: 5),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            Color(0xFFFDFDFD),
                                                        fontSize: 20.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 3.0),
                                        child: Text(
                                          'Peças',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Rubik',
                                                color: Color(0xFFFDFDFD),
                                                fontSize: 15.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 1.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Container(
                                            width: 55.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF292929),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                color: _model.textfieldCDOFINTController
                                                                .text ==
                                                            null ||
                                                        _model.textfieldCDOFINTController
                                                                .text ==
                                                            ''
                                                    ? Colors.black
                                                    : Color(0xFF810104),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                _model.varPecas,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          color:
                                                              Color(0xFFFDFDFD),
                                                          fontSize: 20.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 3.0),
                                          child: Text(
                                            'Ram. ou Tub.',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Rubik',
                                                  color: Color(0xFFFDFDFD),
                                                  fontSize: 15.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              width: 110.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF292929),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                border: Border.all(
                                                  color: _model.textfieldCDOFINTController
                                                                  .text ==
                                                              null ||
                                                          _model.textfieldCDOFINTController
                                                                  .text ==
                                                              ''
                                                      ? Colors.black
                                                      : Color(0xFF810104),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  _model.varRamTub,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            Color(0xFFFDFDFD),
                                                        fontSize: 20.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Atentção!'),
                                    content:
                                        Text('Deseja confirmar a conferência?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancelar'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirmar'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            _model.apiConfirmINT =
                                await SqlConfirmConfExpINTCall.call(
                              apiPostCDOF: int.tryParse(
                                  _model.textfieldCDOFINTController.text),
                            );
                            _shouldSetState = true;
                            if ((_model.apiConfirmINT?.succeeded ?? true)) {
                              setState(() {
                                _model.varCliente = ' ';
                                _model.varNF = ' ';
                                _model.varPedido = ' ';
                                _model.varArtigo = ' ';
                                _model.varPecas = ' ';
                                _model.varPeso = ' ';
                                _model.varRamTub = ' ';
                                _model.varCDOF = ' ';
                              });
                              setState(() {
                                _model.textfieldCDOFINTController?.clear();
                              });
                            }
                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            setState(() {
                              _model.varCliente = ' ';
                              _model.varNF = ' ';
                              _model.varPedido = ' ';
                              _model.varArtigo = ' ';
                              _model.varPecas = ' ';
                              _model.varPeso = ' ';
                              _model.varRamTub = ' ';
                              _model.varCDOF = ' ';
                            });
                            setState(() {
                              _model.textfieldCDOFINTController?.clear();
                            });
                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          if (_shouldSetState) setState(() {});
                        },
                        text: 'Conferido',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFB61F24),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFFFDFDFD),
                                    fontSize: 20.0,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: Color(0xFFCECECE),
                          hoverTextColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
