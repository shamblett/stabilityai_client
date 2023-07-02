//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TextToImageRequestBodyAllOf {
  /// Returns a new [TextToImageRequestBodyAllOf] instance.
  TextToImageRequestBodyAllOf({
    this.height = 512,
    this.width = 512,
    this.textPrompts = const [],
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextToImageRequestBodyAllOf &&
          other.height == height &&
          other.width == width &&
          other.textPrompts == textPrompts;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (height.hashCode) + (width.hashCode) + (textPrompts.hashCode);

  @override
  String toString() =>
      'TextToImageRequestBodyAllOf[height=$height, width=$width, textPrompts=$textPrompts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'height'] = this.height;
    json[r'width'] = this.width;
    json[r'text_prompts'] = this.textPrompts;
    return json;
  }

  /// Returns a new [TextToImageRequestBodyAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TextToImageRequestBodyAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TextToImageRequestBodyAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TextToImageRequestBodyAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TextToImageRequestBodyAllOf(
        height: mapValueOfType<int>(json, r'height') ?? 512,
        width: mapValueOfType<int>(json, r'width') ?? 512,
        textPrompts: TextPrompt.listFromJson(json[r'text_prompts']),
      );
    }
    return null;
  }

  static List<TextToImageRequestBodyAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TextToImageRequestBodyAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TextToImageRequestBodyAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TextToImageRequestBodyAllOf> mapFromJson(dynamic json) {
    final map = <String, TextToImageRequestBodyAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TextToImageRequestBodyAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TextToImageRequestBodyAllOf-objects as value to a dart map
  static Map<String, List<TextToImageRequestBodyAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TextToImageRequestBodyAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TextToImageRequestBodyAllOf.listFromJson(
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
