//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

final class ImageToImageRequestBody {
  /// Returns a new [ImageToImageRequestBody] instance.
  ImageToImageRequestBody({
    this.textPrompts = const [],
    required this.initImage,
    this.initImageMode,
    this.imageStrength = 0.35,
    this.stepScheduleStart = 0.65,
    this.stepScheduleEnd,
    this.cfgScale = 7,
    this.clipGuidancePreset,
    this.sampler,
    this.samples = 1,
    this.seed = 0,
    this.steps = 50,
    this.stylePreset,
    this.extras,
  });

  /// An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
  List<TextPrompt> textPrompts;

  /// Image used to initialize the diffusion process, in lieu of random noise.
  MultipartFile initImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InitImageMode? initImageMode;

  /// How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \"Image Strength\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  double imageStrength;

  /// Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  num stepScheduleStart;

  /// Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
  ///
  /// Minimum value: 0
  /// Maximum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? stepScheduleEnd;

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
      other is ImageToImageRequestBody &&
          other.textPrompts == textPrompts &&
          other.initImage == initImage &&
          other.initImageMode == initImageMode &&
          other.imageStrength == imageStrength &&
          other.stepScheduleStart == stepScheduleStart &&
          other.stepScheduleEnd == stepScheduleEnd &&
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
      (textPrompts.hashCode) +
      (initImage.hashCode) +
      (initImageMode == null ? 0 : initImageMode!.hashCode) +
      (imageStrength.hashCode) +
      (stepScheduleStart.hashCode) +
      (stepScheduleEnd == null ? 0 : stepScheduleEnd!.hashCode) +
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
      'ImageToImageRequestBody[textPrompts=$textPrompts, initImage=$initImage, initImageMode=$initImageMode, imageStrength=$imageStrength, stepScheduleStart=$stepScheduleStart, stepScheduleEnd=$stepScheduleEnd, cfgScale=$cfgScale, clipGuidancePreset=$clipGuidancePreset, sampler=$sampler, samples=$samples, seed=$seed, steps=$steps, stylePreset=$stylePreset, extras=$extras]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'text_prompts'] = textPrompts;
    json[r'init_image'] = initImage;
    if (initImageMode != null) {
      json[r'init_image_mode'] = initImageMode;
    } else {
      json[r'init_image_mode'] = null;
    }
    json[r'image_strength'] = imageStrength;
    json[r'step_schedule_start'] = stepScheduleStart;
    if (stepScheduleEnd != null) {
      json[r'step_schedule_end'] = stepScheduleEnd;
    } else {
      json[r'step_schedule_end'] = null;
    }
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

  /// Returns a new [ImageToImageRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageToImageRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "ImageToImageRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageToImageRequestBody[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return ImageToImageRequestBody(
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        initImage: MultipartFile('', StreamController<List<int>>().stream,
            0), // No support for decoding binary content from JSON
        initImageMode: InitImageMode.fromJson(json[r'init_image_mode']),
        imageStrength: mapValueOfType<double>(json, r'image_strength') ?? 0.35,
        stepScheduleStart: json[r'step_schedule_start'] == null
            ? 0.65
            : num.parse(json[r'step_schedule_start'].toString()),
        stepScheduleEnd: json[r'step_schedule_end'] == null
            ? null
            : num.parse(json[r'step_schedule_end'].toString()),
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

  static List<ImageToImageRequestBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageToImageRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageToImageRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageToImageRequestBody> mapFromJson(dynamic json) {
    final map = <String, ImageToImageRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageToImageRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageToImageRequestBody-objects as value to a dart map
  static Map<String, List<ImageToImageRequestBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageToImageRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageToImageRequestBody.listFromJson(
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
    'init_image',
  };
}
