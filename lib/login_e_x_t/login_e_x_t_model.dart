import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginEXTModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String varCampoUsuario = ' ';

  String varCampoSenha = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for campoUsuario widget.
  TextEditingController? campoUsuarioController;
  String? Function(BuildContext, String?)? campoUsuarioControllerValidator;
  // State field(s) for campoSenha widget.
  TextEditingController? campoSenhaController;
  late bool campoSenhaVisibility;
  String? Function(BuildContext, String?)? campoSenhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    campoSenhaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    campoUsuarioController?.dispose();
    campoSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
