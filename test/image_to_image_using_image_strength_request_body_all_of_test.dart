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

// tests for ImageToImageUsingImageStrengthRequestBodyAllOf
void main() {
  // final instance = ImageToImageUsingImageStrengthRequestBodyAllOf();

  group('test ImageToImageUsingImageStrengthRequestBodyAllOf', () {
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

    // How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \"Image Strength\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
    // double imageStrength (default value: 0.35)
    test('to test the property `imageStrength`', () async {
      // TODO
    });
  });
}
