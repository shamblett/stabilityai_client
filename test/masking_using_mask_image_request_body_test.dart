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

// tests for MaskingUsingMaskImageRequestBody
void main() {
  // final instance = MaskingUsingMaskImageRequestBody();

  group('test MaskingUsingMaskImageRequestBody', () {
    // An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
    // List<TextPrompt> textPrompts (default value: const [])
    test('to test the property `textPrompts`', () async {
      // TODO
    });

    // Image used to initialize the diffusion process, in lieu of random noise.
    // MultipartFile initImage
    test('to test the property `initImage`', () async {
      // TODO
    });

    // For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
    // String maskSource
    test('to test the property `maskSource`', () async {
      // TODO
    });

    // Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
    // MultipartFile maskImage
    test('to test the property `maskImage`', () async {
      // TODO
    });

    // How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
    // num cfgScale (default value: 7)
    test('to test the property `cfgScale`', () async {
      // TODO
    });

    // ClipGuidancePreset clipGuidancePreset
    test('to test the property `clipGuidancePreset`', () async {
      // TODO
    });

    // Sampler sampler
    test('to test the property `sampler`', () async {
      // TODO
    });

    // Number of images to generate
    // int samples (default value: 1)
    test('to test the property `samples`', () async {
      // TODO
    });

    // Random noise seed (omit this option or use `0` for a random seed)
    // int seed (default value: 0)
    test('to test the property `seed`', () async {
      // TODO
    });

    // Number of diffusion steps to run
    // int steps (default value: 50)
    test('to test the property `steps`', () async {
      // TODO
    });

    // StylePreset stylePreset
    test('to test the property `stylePreset`', () async {
      // TODO
    });

    // Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
    // Object extras
    test('to test the property `extras`', () async {
      // TODO
    });


  });

}
