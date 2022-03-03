///
//  Generated code. Do not modify.
//  source: textdemo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'textdemo.pb.dart' as $0;
export 'textdemo.pb.dart';

class TextServiceClient extends $grpc.Client {
  static final _$getText = $grpc.ClientMethod<$0.Empty, $0.ResponseText>(
      '/TextService/GetText',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseText.fromBuffer(value));

  TextServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResponseText> getText($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getText, request, options: options);
  }
}

abstract class TextServiceBase extends $grpc.Service {
  $core.String get $name => 'TextService';

  TextServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ResponseText>(
        'GetText',
        getText_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ResponseText value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResponseText> getText_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getText(call, await request);
  }

  $async.Future<$0.ResponseText> getText(
      $grpc.ServiceCall call, $0.Empty request);
}
