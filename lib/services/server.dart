import 'package:flutter_app_grpc/generated/textdemo.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import '../generated/textdemo.pb.dart';

class DemoServer extends TextServiceBase {
  @override
  Future<ResponseText> getText(ServiceCall call, request) async {
    ResponseText text = ResponseText();
    text.textValue = 'Text Fetched From Server';
    return text;
  }
}
