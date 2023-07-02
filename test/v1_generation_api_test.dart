//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

/// tests for V1GenerationApi
void main() {
  // final instance = V1GenerationApi();

  group('tests for V1GenerationApi', () {
    // image-to-image
    //
    // Modify an image based on a text prompt
    //
    //Future<List<Image>> imageToImage(String engineId, List<TextPrompt> textPrompts, MultipartFile initImage, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, InitImageMode initImageMode, double imageStrength, num stepScheduleStart, num stepScheduleEnd, num cfgScale, ClipGuidancePreset clipGuidancePreset, Sampler sampler, int samples, int seed, int steps, StylePreset stylePreset, Object extras }) async
    test('test imageToImage', () async {
      // TODO
    });

    // image-to-image/masking
    //
    // Selectively modify portions of an image using a mask
    //
    //Future<List<Image>> masking(String engineId, MultipartFile initImage, String maskSource, List<TextPrompt> textPrompts, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, MultipartFile maskImage, num cfgScale, ClipGuidancePreset clipGuidancePreset, Sampler sampler, int samples, int seed, int steps, StylePreset stylePreset, Object extras }) async
    test('test masking', () async {
      // TODO
    });

    // text-to-image
    //
    // Generate a new image from a text prompt
    //
    //Future<List<Image>> textToImage(String engineId, TextToImageRequestBody textToImageRequestBody, { String accept, String organization, String stabilityClientID, String stabilityClientVersion }) async
    test('test textToImage', () async {
      // TODO
    });

    // image-to-image/upscale
    //
    // Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.  For upscaler engines that are ESRGAN-based, refer to the `RealESRGANUpscaleRequestBody` body option below. For upscaler engines that are Stable Diffusion Latent Upscaler-based, refer to the `LatentUpscalerUpscaleRequestBody` body option below.  For more details on the upscaler engines, refer to the [documentation on the Platform site.](https://platform.stability.ai/docs/features/image-upscaling?tab=python)
    //
    //Future<List<Image>> upscaleImage(String engineId, MultipartFile image, { String accept, String organization, String stabilityClientID, String stabilityClientVersion, int width, int height, List<TextPrompt> textPrompts, int seed, int steps, num cfgScale }) async
    test('test upscaleImage', () async {
      // TODO
    });
  });
}
