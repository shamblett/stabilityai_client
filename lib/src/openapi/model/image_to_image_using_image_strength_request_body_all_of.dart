//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

final class ImageToImageUsingImageStrengthRequestBodyAllOf {
  /// Returns a new [ImageToImageUsingImageStrengthRequestBodyAllOf] instance.
  ImageToImageUsingImageStrengthRequestBodyAllOf({
    this.textPrompts = const [],
    required this.initImage,
    this.initImageMode,
    this.imageStrength = 0.35,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageToImageUsingImageStrengthRequestBodyAllOf &&
          other.textPrompts == textPrompts &&
          other.initImage == initImage &&
          other.initImageMode == initImageMode &&
          other.imageStrength == imageStrength;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (textPrompts.hashCode) +
      (initImage.hashCode) +
      (initImageMode == null ? 0 : initImageMode!.hashCode) +
      (imageStrength.hashCode);

  @override
  String toString() =>
      'ImageToImageUsingImageStrengthRequestBodyAllOf[textPrompts=$textPrompts, initImage=$initImage, initImageMode=$initImageMode, imageStrength=$imageStrength]';

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
    return json;
  }

  /// Returns a new [ImageToImageUsingImageStrengthRequestBodyAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageToImageUsingImageStrengthRequestBodyAllOf? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "ImageToImageUsingImageStrengthRequestBodyAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageToImageUsingImageStrengthRequestBodyAllOf[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return ImageToImageUsingImageStrengthRequestBodyAllOf(
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        initImage: MultipartFile('', StreamController<List<int>>().stream,
            0), // No support for decoding binary content from JSON
        initImageMode: InitImageMode.fromJson(json[r'init_image_mode']),
        imageStrength: mapValueOfType<double>(json, r'image_strength') ?? 0.35,
      );
    }
    return null;
  }

  static List<ImageToImageUsingImageStrengthRequestBodyAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageToImageUsingImageStrengthRequestBodyAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            ImageToImageUsingImageStrengthRequestBodyAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageToImageUsingImageStrengthRequestBodyAllOf>
      mapFromJson(dynamic json) {
    final map = <String, ImageToImageUsingImageStrengthRequestBodyAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageToImageUsingImageStrengthRequestBodyAllOf.fromJson(
            entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageToImageUsingImageStrengthRequestBodyAllOf-objects as value to a dart map
  static Map<String, List<ImageToImageUsingImageStrengthRequestBodyAllOf>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map =
        <String, List<ImageToImageUsingImageStrengthRequestBodyAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            ImageToImageUsingImageStrengthRequestBodyAllOf.listFromJson(
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
