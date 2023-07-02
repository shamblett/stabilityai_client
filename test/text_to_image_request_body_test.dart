//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:stabilityai_client/src/openapi/api.dart';
import 'package:test/test.dart';

// tests for TextToImageRequestBody
void main() {
  // final instance = TextToImageRequestBody();

  group('test TextToImageRequestBody', () {
    // Height of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span>
    // int height (default value: 512)
    test('to test the property `height`', () async {
      // TODO
    });

    // Width of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span>
    // int width (default value: 512)
    test('to test the property `width`', () async {
      // TODO
    });

    // An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  <pre> \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] </pre>
    // List<TextPrompt> textPrompts (default value: const [])
    test('to test the property `textPrompts`', () async {
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
