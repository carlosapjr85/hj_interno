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

class ExpIntModel extends FlutterFlowModel {
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
  // State field(s) for textfieldCDOF_INT widget.
  TextEditingController? textfieldCDOFINTController;
  final textfieldCDOFINTMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textfieldCDOFINTControllerValidator;
  // Stores action output result for [Backend Call - API (buscaOSExpINT)] action in textfieldCDOF_INT widget.
  ApiCallResponse? apiResultExpINT;
  // Stores action output result for [Backend Call - API (sqlConfirmConfExpINT)] action in Button widget.
  ApiCallResponse? apiConfirmINT;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textfieldCDOFINTController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
