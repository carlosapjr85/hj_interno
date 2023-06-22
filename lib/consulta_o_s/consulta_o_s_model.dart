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

class ConsultaOSModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String varCliente = ' ';

  String varNF = ' ';

  String varPedido = ' ';

  String varArtigo = ' ';

  String varPecas = ' ';

  String varPeso = ' ';

  String varRamTub = ' ';

  String varCDOF = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for texfieldCDOF widget.
  TextEditingController? texfieldCDOFController;
  final texfieldCDOFMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? texfieldCDOFControllerValidator;
  // Stores action output result for [Backend Call - API (buscaOSExpEXT)] action in texfieldCDOF widget.
  ApiCallResponse? apiResultExpEXT;
  // Stores action output result for [Backend Call - API (sqlConfirmConfExpEXT)] action in Button widget.
  ApiCallResponse? apiConfirmOKEXT;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    texfieldCDOFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
