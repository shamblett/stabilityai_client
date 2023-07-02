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

// tests for ImageToImageUsingStepScheduleRequestBodyAllOf
void main() {
  // final instance = ImageToImageUsingStepScheduleRequestBodyAllOf();

  group('test ImageToImageUsingStepScheduleRequestBodyAllOf', () {
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

    // InitImageMode initImageMode
    test('to test the property `initImageMode`', () async {
      // TODO
    });

    // Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
    // num stepScheduleStart (default value: 0.65)
    test('to test the property `stepScheduleStart`', () async {
      // TODO
    });

    // Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
    // num stepScheduleEnd
    test('to test the property `stepScheduleEnd`', () async {
      // TODO
    });


  });

}
