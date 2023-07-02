//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MaskingUsingInitImageAlphaRequestBodyAllOf {
  /// Returns a new [MaskingUsingInitImageAlphaRequestBodyAllOf] instance.
  MaskingUsingInitImageAlphaRequestBodyAllOf({
    this.textPrompts = const [],
    required this.initImage,
    required this.maskSource,
  });

  /// An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ```
  List<TextPrompt> textPrompts;

  /// Image used to initialize the diffusion process, in lieu of random noise.
  MultipartFile initImage;

  /// For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
  String maskSource;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaskingUsingInitImageAlphaRequestBodyAllOf &&
          other.textPrompts == textPrompts &&
          other.initImage == initImage &&
          other.maskSource == maskSource;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (textPrompts.hashCode) + (initImage.hashCode) + (maskSource.hashCode);

  @override
  String toString() =>
      'MaskingUsingInitImageAlphaRequestBodyAllOf[textPrompts=$textPrompts, initImage=$initImage, maskSource=$maskSource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'text_prompts'] = this.textPrompts;
    json[r'init_image'] = this.initImage;
    json[r'mask_source'] = this.maskSource;
    return json;
  }

  /// Returns a new [MaskingUsingInitImageAlphaRequestBodyAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MaskingUsingInitImageAlphaRequestBodyAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MaskingUsingInitImageAlphaRequestBodyAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MaskingUsingInitImageAlphaRequestBodyAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MaskingUsingInitImageAlphaRequestBodyAllOf(
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
        initImage: null, // No support for decoding binary content from JSON
        maskSource: mapValueOfType<String>(json, r'mask_source')!,
      );
    }
    return null;
  }

  static List<MaskingUsingInitImageAlphaRequestBodyAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MaskingUsingInitImageAlphaRequestBodyAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MaskingUsingInitImageAlphaRequestBodyAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MaskingUsingInitImageAlphaRequestBodyAllOf> mapFromJson(
      dynamic json) {
    final map = <String, MaskingUsingInitImageAlphaRequestBodyAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            MaskingUsingInitImageAlphaRequestBodyAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MaskingUsingInitImageAlphaRequestBodyAllOf-objects as value to a dart map
  static Map<String, List<MaskingUsingInitImageAlphaRequestBodyAllOf>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MaskingUsingInitImageAlphaRequestBodyAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            MaskingUsingInitImageAlphaRequestBodyAllOf.listFromJson(
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
    'mask_source',
  };
}
