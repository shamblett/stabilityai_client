//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RealESRGANUpscaleRequestBody {
  /// Returns a new [RealESRGANUpscaleRequestBody] instance.
  RealESRGANUpscaleRequestBody({
    required this.image,
    this.width,
    this.height,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RealESRGANUpscaleRequestBody &&
          other.image == image &&
          other.width == width &&
          other.height == height;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (image.hashCode) +
      (width == null ? 0 : width!.hashCode) +
      (height == null ? 0 : height!.hashCode);

  @override
  String toString() =>
      'RealESRGANUpscaleRequestBody[image=$image, width=$width, height=$height]';

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
    return json;
  }

  /// Returns a new [RealESRGANUpscaleRequestBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RealESRGANUpscaleRequestBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "RealESRGANUpscaleRequestBody[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RealESRGANUpscaleRequestBody[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return RealESRGANUpscaleRequestBody(
        image: MultipartFile('', StreamController<List<int>>().stream,
            0), // No support for decoding binary content from JSON
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<RealESRGANUpscaleRequestBody> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RealESRGANUpscaleRequestBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RealESRGANUpscaleRequestBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RealESRGANUpscaleRequestBody> mapFromJson(dynamic json) {
    final map = <String, RealESRGANUpscaleRequestBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RealESRGANUpscaleRequestBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RealESRGANUpscaleRequestBody-objects as value to a dart map
  static Map<String, List<RealESRGANUpscaleRequestBody>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RealESRGANUpscaleRequestBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RealESRGANUpscaleRequestBody.listFromJson(
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
