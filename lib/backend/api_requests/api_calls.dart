import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscaOSExpEXTCall {
  static Future<ApiCallResponse> call({
    int? apiGetCDOF,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaOSExpEXT',
      apiUrl: 'http://189.16.24.114:8080/expedicao/${apiGetCDOF}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic apiCDOF(dynamic response) => getJsonField(
        response,
        r'''$[:].CDOF''',
      );
  static dynamic apiCLIENTE(dynamic response) => getJsonField(
        response,
        r'''$[:].CLIENTE''',
      );
  static dynamic apiNF(dynamic response) => getJsonField(
        response,
        r'''$[:].NF''',
      );
  static dynamic apiPEDIDO(dynamic response) => getJsonField(
        response,
        r'''$[:].PEDIDO''',
      );
  static dynamic apiARTIGO(dynamic response) => getJsonField(
        response,
        r'''$[:].ARTIGO''',
      );
  static dynamic apiPECAS(dynamic response) => getJsonField(
        response,
        r'''$[:].PECAS''',
      );
  static dynamic apiPESO(dynamic response) => getJsonField(
        response,
        r'''$[:].PESO''',
      );
  static dynamic apiRAMTUB(dynamic response) => getJsonField(
        response,
        r'''$[:].RAM_TUB''',
      );
}

class BuscaOSExpINTCall {
  static Future<ApiCallResponse> call({
    int? apiGetCDOF,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaOSExpINT',
      apiUrl: 'http://10.1.4.20:3000/expedicao/${apiGetCDOF}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic apiCDOF(dynamic response) => getJsonField(
        response,
        r'''$[:].CDOF''',
      );
  static dynamic apiCLIENTE(dynamic response) => getJsonField(
        response,
        r'''$[:].CLIENTE''',
      );
  static dynamic apiNF(dynamic response) => getJsonField(
        response,
        r'''$[:].NF''',
      );
  static dynamic apiPEDIDO(dynamic response) => getJsonField(
        response,
        r'''$[:].PEDIDO''',
      );
  static dynamic apiARTIGO(dynamic response) => getJsonField(
        response,
        r'''$[:].ARTIGO''',
      );
  static dynamic apiPECAS(dynamic response) => getJsonField(
        response,
        r'''$[:].PECAS''',
      );
  static dynamic apiPESO(dynamic response) => getJsonField(
        response,
        r'''$[:].PESO''',
      );
  static dynamic apiRAMTUB(dynamic response) => getJsonField(
        response,
        r'''$[:].RAM_TUB''',
      );
}

class SqlConfirmConfExpEXTCall {
  static Future<ApiCallResponse> call({
    int? apiPostCDOF,
  }) {
    final body = '''
{
  "CDOF": "${apiPostCDOF}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sqlConfirmConfExpEXT',
      apiUrl: 'http://189.16.24.114:8080/expedicao',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SqlConfirmConfExpINTCall {
  static Future<ApiCallResponse> call({
    int? apiPostCDOF,
  }) {
    final body = '''
{
  "CDOF": "${apiPostCDOF}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sqlConfirmConfExpINT',
      apiUrl: 'http://10.1.4.20:3000/expedicao',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
