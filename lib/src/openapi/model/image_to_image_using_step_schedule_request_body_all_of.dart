//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageToImageUsingStepScheduleRequestBodyAllOf {
  /// Returns a new [ImageToImageUsingStepScheduleRequestBodyAllOf] instance.
  ImageToImageUsingStepScheduleRequestBodyAllOf({
    this.textPrompts = const [],
    required this.initImage,
    this.initImageMode,
    this.stepScheduleStart = 0.65,
    this.stepScheduleEnd,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageToImageUsingStepScheduleRequestBodyAllOf &&
          other.textPrompts == textPrompts &&
          other.initImage == initImage &&
          other.initImageMode == initImageMode &&
          other.stepScheduleStart == stepScheduleStart &&
          other.stepScheduleEnd == stepScheduleEnd;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (textPrompts.hashCode) +
      (initImage.hashCode) +
      (initImageMode == null ? 0 : initImageMode!.hashCode) +
      (stepScheduleStart.hashCode) +
      (stepScheduleEnd == null ? 0 : stepScheduleEnd!.hashCode);

  @override
  String toString() =>
      'ImageToImageUsingStepScheduleRequestBodyAllOf[textPrompts=$textPrompts, initImage=$initImage, initImageMode=$initImageMode, stepScheduleStart=$stepScheduleStart, stepScheduleEnd=$stepScheduleEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'text_prompts'] = this.textPrompts;
    json[r'init_image'] = this.initImage;
    if (this.initImageMode != null) {
      json[r'init_image_mode'] = this.initImageMode;
    } else {
      json[r'init_image_mode'] = null;
    }
    json[r'step_schedule_start'] = this.stepScheduleStart;
    if (this.stepScheduleEnd != null) {
      json[r'step_schedule_end'] = this.stepScheduleEnd;
    } else {
      json[r'step_schedule_end'] = null;
    }
    return json;
  }

  /// Returns a new [ImageToImageUsingStepScheduleRequestBodyAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageToImageUsingStepScheduleRequestBodyAllOf? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageToImageUsingStepScheduleRequestBodyAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageToImageUsingStepScheduleRequestBodyAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageToImageUsingStepScheduleRequestBodyAllOf(
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        initImage: MultipartFile('', StreamController<List<int>>().stream,
            0), // No support for decoding binary content from JSON
        initImageMode: InitImageMode.fromJson(json[r'init_image_mode']),
        stepScheduleStart: json[r'step_schedule_start'] == null
            ? 0.65
            : num.parse(json[r'step_schedule_start'].toString()),
        stepScheduleEnd: json[r'step_schedule_end'] == null
            ? null
            : num.parse(json[r'step_schedule_end'].toString()),
      );
    }
    return null;
  }

  static List<ImageToImageUsingStepScheduleRequestBodyAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageToImageUsingStepScheduleRequestBodyAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            ImageToImageUsingStepScheduleRequestBodyAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageToImageUsingStepScheduleRequestBodyAllOf> mapFromJson(
      dynamic json) {
    final map = <String, ImageToImageUsingStepScheduleRequestBodyAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ImageToImageUsingStepScheduleRequestBodyAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageToImageUsingStepScheduleRequestBodyAllOf-objects as value to a dart map
  static Map<String, List<ImageToImageUsingStepScheduleRequestBodyAllOf>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageToImageUsingStepScheduleRequestBodyAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            ImageToImageUsingStepScheduleRequestBodyAllOf.listFromJson(
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
