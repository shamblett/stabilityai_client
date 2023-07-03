//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

final class TextToImageRequestBody {
  /// Returns a new [TextToImageRequestBody] instance.
  TextToImageRequestBody({
    this.height = 512,
    this.width = 512,
    this.textPrompts = const [],
    this.cfgScale = 7,
    this.clipGuidancePreset,
    this.sampler,
    this.samples = 1,
    this.seed = 0,
    this.steps = 50,
    this.stylePreset,
    this.extras,
  });

  /// Height of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span>
  ///
  /// Minimum value: 128
  int height;

  /// Width of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span>
  ///
  /// Minimum value: 128
  int width;

  /// An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  <pre> \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] </pre>
  List<TextPrompt> textPrompts;

  /// How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// Minimum value: 0
  /// Maximum value: 35
  num cfgScale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClipGuidancePreset? clipGuidancePreset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Sampler? sampler;

  /// Number of images to generate
  ///
  /// Minimum value: 1
  /// Maximum value: 10
  int samples;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StylePreset? stylePreset;

  /// Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? extras;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextToImageRequestBody &&
          other.height == height &&
          other.width == width &&
          other.textPrompts == textPrompts &&
          other.cfgScale == cfgScale &&
          other.clipGuidancePreset == clipGuidancePreset &&
          other.sampler == sampler &&
          other.samples == samples &&
          other.seed == seed &&
          other.steps == steps &&
          other.stylePreset == stylePreset &&
          other.extras == extras;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (height.hashCode) +
      (width.hashCode) +
      (textPrompts.hashCode) +
      (cfgScale.hashCode) +
      (clipGuidancePreset == null ? 0 : clipGuidancePreset!.hashCode) +
      (sampler == null ? 0 : sampler!.hashCode) +
      (samples.hashCode) +
      (seed.hashCode) +
      (steps.hashCode) +
      (stylePreset == null ? 0 : stylePreset!.hashCode) +
      (extras == null ? 0 : extras!.hashCode);

  @override
  String toString() =>
      'TextToImageRequestBody[height=$height, width=$width, textPrompts=$textPrompts, cfgScale=$cfgScale, clipGuidancePreset=$clipGuidancePreset, sampler=$sampler, samples=$samples, seed=$seed, steps=$steps, stylePreset=$stylePreset, extras=$extras]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'height'] = height;
    json[r'width'] = width;
    json[r'text_prompts'] = textPrompts;
    json[r'cfg_scale'] = cfgScale;
    if (clipGuidancePreset != null) {
      json[r'clip_guidance_preset'] = clipGuidancePreset;
    } else {
      json[r'clip_guidance_preset'] = null;
    }
    if (sampler != null) {
      json[r'sampler'] = sampler;
    } else {
      json[r'sampler'] = null;
    }
    json[r'samples'] = samples;
    json[r'seed'] = seed;
    json[r'steps'] = steps;
    if (stylePreset != null) {
      json[r'style_preset'] = stylePreset;
    } else {
      json[r'style_preset'] = null;
    }
    if (extras != null) {
      json[r'extras'] = extras;
    } else {
      json[r'extras'] = null;
    }
    return json;
  }

  /// Returns a new [TextToImageRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TextToImageRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "TextToImageRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TextToImageRequestBody[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return TextToImageRequestBody(
        height: mapValueOfType<int>(json, r'height') ?? 512,
        width: mapValueOfType<int>(json, r'width') ?? 512,
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        cfgScale: json[r'cfg_scale'] == null
            ? 7
            : num.parse(json[r'cfg_scale'].toString()),
        clipGuidancePreset:
            ClipGuidancePreset.fromJson(json[r'clip_guidance_preset']),
        sampler: Sampler.fromJson(json[r'sampler']),
        samples: mapValueOfType<int>(json, r'samples') ?? 1,
        seed: mapValueOfType<int>(json, r'seed') ?? 0,
        steps: mapValueOfType<int>(json, r'steps') ?? 50,
        stylePreset: StylePreset.fromJson(json[r'style_preset']),
        extras: mapValueOfType<Object>(json, r'extras'),
      );
    }
    return null;
  }

  static List<TextToImageRequestBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TextToImageRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TextToImageRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TextToImageRequestBody> mapFromJson(dynamic json) {
    final map = <String, TextToImageRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TextToImageRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TextToImageRequestBody-objects as value to a dart map
  static Map<String, List<TextToImageRequestBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TextToImageRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TextToImageRequestBody.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text_prompts',
  };
}
