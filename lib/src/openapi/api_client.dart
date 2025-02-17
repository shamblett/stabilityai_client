//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of 'api.dart';

final class ApiClient {
  ApiClient({
    this.basePath = 'https://api.stability.ai',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var client = Client();
  final _defaultHeaderMap = <String, String>{};

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments
    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AccountResponseBody':
          return AccountResponseBody.fromJson(value);
        case 'BalanceResponseBody':
          return BalanceResponseBody.fromJson(value);
        case 'ClipGuidancePreset':
          return ClipGuidancePresetTypeTransformer().decode(value);
        case 'Engine':
          return Engine.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'FinishReason':
          return FinishReasonTypeTransformer().decode(value);
        case 'GenerationRequestOptionalParams':
          return GenerationRequestOptionalParams.fromJson(value);
        case 'Image':
          value = value[r'artifacts'][0];
          return Image.fromJson(value);
        case 'List<Image>':
          value = value[r'artifacts'];
          final images = <Image>[];
          for (final image in value) {
            images.add(Image.fromJson(image)!);
          }
          return images;
        case 'ImageToImageRequestBody':
          return ImageToImageRequestBody.fromJson(value);
        case 'ImageToImageUsingImageStrengthRequestBody':
          return ImageToImageUsingImageStrengthRequestBody.fromJson(value);
        case 'ImageToImageUsingImageStrengthRequestBodyAllOf':
          return ImageToImageUsingImageStrengthRequestBodyAllOf.fromJson(value);
        case 'ImageToImageUsingStepScheduleRequestBody':
          return ImageToImageUsingStepScheduleRequestBody.fromJson(value);
        case 'ImageToImageUsingStepScheduleRequestBodyAllOf':
          return ImageToImageUsingStepScheduleRequestBodyAllOf.fromJson(value);
        case 'InitImageMode':
          return InitImageModeTypeTransformer().decode(value);
        case 'LatentUpscalerUpscaleRequestBody':
          return LatentUpscalerUpscaleRequestBody.fromJson(value);
        case 'MaskingRequestBody':
          return MaskingRequestBody.fromJson(value);
        case 'MaskingUsingInitImageAlphaRequestBody':
          return MaskingUsingInitImageAlphaRequestBody.fromJson(value);
        case 'MaskingUsingInitImageAlphaRequestBodyAllOf':
          return MaskingUsingInitImageAlphaRequestBodyAllOf.fromJson(value);
        case 'MaskingUsingMaskImageRequestBody':
          return MaskingUsingMaskImageRequestBody.fromJson(value);
        case 'MaskingUsingMaskImageRequestBodyAllOf':
          return MaskingUsingMaskImageRequestBodyAllOf.fromJson(value);
        case 'OrganizationMembership':
          return OrganizationMembership.fromJson(value);
        case 'RealESRGANUpscaleRequestBody':
          return RealESRGANUpscaleRequestBody.fromJson(value);
        case 'Sampler':
          return SamplerTypeTransformer().decode(value);
        case 'StylePreset':
          return StylePresetTypeTransformer().decode(value);
        case 'TextPrompt':
          return TextPrompt.fromJson(value);
        case 'TextToImageRequestBody':
          return TextToImageRequestBody.fromJson(value);
        case 'TextToImageRequestBodyAllOf':
          return TextToImageRequestBodyAllOf.fromJson(value);
        case 'UpscaleImageRequest':
          return UpscaleImageRequest.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
