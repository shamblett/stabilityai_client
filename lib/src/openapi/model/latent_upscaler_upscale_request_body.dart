//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../api.dart';

final class LatentUpscalerUpscaleRequestBody {
  /// Returns a new [LatentUpscalerUpscaleRequestBody] instance.
  LatentUpscalerUpscaleRequestBody({
    required this.image,
    this.width,
    this.height,
    this.textPrompts = const [],
    this.seed = 0,
    this.steps = 50,
    this.cfgScale = 7,
  });

  MultipartFile image;

  /// Desired width of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// Minimum value: 512
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  /// Desired height of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// Minimum value: 512
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  /// An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
  List<TextPrompt> textPrompts;

  /// Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// Minimum value: 0
  /// Maximum value: 4294967295
  int seed;

  /// Number of diffusion steps to run
  ///
  /// Minimum value: 10
  /// Maximum value: 150
  int steps;

  /// How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// Minimum value: 0
  /// Maximum value: 35
  num cfgScale;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LatentUpscalerUpscaleRequestBody &&
          other.image == image &&
          other.width == width &&
          other.height == height &&
          other.textPrompts == textPrompts &&
          other.seed == seed &&
          other.steps == steps &&
          other.cfgScale == cfgScale;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (image.hashCode) +
      (width == null ? 0 : width!.hashCode) +
      (height == null ? 0 : height!.hashCode) +
      (textPrompts.hashCode) +
      (seed.hashCode) +
      (steps.hashCode) +
      (cfgScale.hashCode);

  @override
  String toString() =>
      'LatentUpscalerUpscaleRequestBody[image=$image, width=$width, height=$height, textPrompts=$textPrompts, seed=$seed, steps=$steps, cfgScale=$cfgScale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'image'] = image;
    if (width != null) {
      json[r'width'] = width;
    } else {
      json[r'width'] = null;
    }
    if (height != null) {
      json[r'height'] = height;
    } else {
      json[r'height'] = null;
    }
    json[r'text_prompts'] = textPrompts;
    json[r'seed'] = seed;
    json[r'steps'] = steps;
    json[r'cfg_scale'] = cfgScale;
    return json;
  }

  /// Returns a new [LatentUpscalerUpscaleRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LatentUpscalerUpscaleRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "LatentUpscalerUpscaleRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "LatentUpscalerUpscaleRequestBody[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return LatentUpscalerUpscaleRequestBody(
        image: MultipartFile('', StreamController<List<int>>().stream,
            0), // No support for decoding binary content from JSON
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        seed: mapValueOfType<int>(json, r'seed') ?? 0,
        steps: mapValueOfType<int>(json, r'steps') ?? 50,
        cfgScale: json[r'cfg_scale'] == null
            ? 7
            : num.parse(json[r'cfg_scale'].toString()),
      );
    }
    return null;
  }

  static List<LatentUpscalerUpscaleRequestBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LatentUpscalerUpscaleRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LatentUpscalerUpscaleRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LatentUpscalerUpscaleRequestBody> mapFromJson(
      dynamic json) {
    final map = <String, LatentUpscalerUpscaleRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LatentUpscalerUpscaleRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LatentUpscalerUpscaleRequestBody-objects as value to a dart map
  static Map<String, List<LatentUpscalerUpscaleRequestBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LatentUpscalerUpscaleRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LatentUpscalerUpscaleRequestBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'image',
  };
}
