//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

final class Image {
  /// Returns a new [Image] instance.
  Image({
    this.base64,
    this.finishReason,
    this.seed,
  });

  /// Image encoded in base64
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base64;

  ImageFinishReasonEnum? finishReason;

  /// The seed associated with this image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? seed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Image &&
          other.base64 == base64 &&
          other.finishReason == finishReason &&
          other.seed == seed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (base64 == null ? 0 : base64!.hashCode) +
      (finishReason == null ? 0 : finishReason!.hashCode) +
      (seed == null ? 0 : seed!.hashCode);

  @override
  String toString() =>
      'Image[base64=$base64, finishReason=$finishReason, seed=$seed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (base64 != null) {
      json[r'base64'] = base64;
    } else {
      json[r'base64'] = null;
    }
    if (finishReason != null) {
      json[r'finishReason'] = finishReason;
    } else {
      json[r'finishReason'] = null;
    }
    if (seed != null) {
      json[r'seed'] = seed;
    } else {
      json[r'seed'] = null;
    }
    return json;
  }

  /// Returns a new [Image] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Image? fromJson(dynamic value) {
    if (value is Map) {
      var json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "Image[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Image[$key]" has a null value in JSON.');
        }
        return true;
      }());

      // Strip artifacts
      json = json[r'artifacts'][0];

      return Image(
        base64: mapValueOfType<String>(json, r'base64'),
        finishReason: ImageFinishReasonEnum.fromJson(json[r'finishReason']),
        seed:
            json[r'seed'] == null ? null : num.parse(json[r'seed'].toString()),
      );
    }
    return null;
  }

  static List<Image> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Image>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Image.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Image> mapFromJson(dynamic json) {
    final map = <String, Image>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Image.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Image-objects as value to a dart map
  static Map<String, List<Image>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Image>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Image.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

final class ImageFinishReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const ImageFinishReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = ImageFinishReasonEnum._(r'SUCCESS');
  static const ERROR = ImageFinishReasonEnum._(r'ERROR');
  static const CONTENT_FILTERED = ImageFinishReasonEnum._(r'CONTENT_FILTERED');

  /// List of all possible values in this [enum][ImageFinishReasonEnum].
  static const values = <ImageFinishReasonEnum>[
    SUCCESS,
    ERROR,
    CONTENT_FILTERED,
  ];

  static ImageFinishReasonEnum? fromJson(dynamic value) =>
      ImageFinishReasonEnumTypeTransformer().decode(value);

  static List<ImageFinishReasonEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageFinishReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageFinishReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation final class that can [encode] an instance of [ImageFinishReasonEnum] to String,
/// and [decode] dynamic data back to [ImageFinishReasonEnum].
final class ImageFinishReasonEnumTypeTransformer {
  factory ImageFinishReasonEnumTypeTransformer() =>
      _instance ??= const ImageFinishReasonEnumTypeTransformer._();

  const ImageFinishReasonEnumTypeTransformer._();

  String encode(ImageFinishReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImageFinishReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImageFinishReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return ImageFinishReasonEnum.SUCCESS;
        case r'ERROR':
          return ImageFinishReasonEnum.ERROR;
        case r'CONTENT_FILTERED':
          return ImageFinishReasonEnum.CONTENT_FILTERED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImageFinishReasonEnumTypeTransformer] instance.
  static ImageFinishReasonEnumTypeTransformer? _instance;
}
