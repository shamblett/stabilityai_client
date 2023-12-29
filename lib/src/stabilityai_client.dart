/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

part of '../stabilityai_client.dart';

///
/// Stability AI client class.
/// Provides a thin wrapper around the Open API implementation
class StabilityaiClient {
  /// Get an API client with API Key authentication
  static ApiClient getApiKeyAuthClient(String apiKey) => ApiClient(
      authentication: ApiKeyAuth('header', 'Authorization')..apiKey = apiKey);

  /// Get an API client with Basic HTTP authentication
  static ApiClient getApiHttpBasicClient(
          {String userName = '', String password = ''}) =>
      ApiClient(
          authentication:
              HttpBasicAuth(username: userName, password: password));

  /// Client version
  static const version = '1.0.0';

  /// Get a multi part file for image to image usage.
  static MultipartFile getImageForImage2Image(Uint8List pngBytes) =>
      MultipartFile.fromBytes('init_image', pngBytes);

  /// Get a multi part file for image to image upscale usage.
  static MultipartFile getImageForImage2ImageUpscale(Uint8List pngBytes) =>
      MultipartFile.fromBytes('image', pngBytes);
}
