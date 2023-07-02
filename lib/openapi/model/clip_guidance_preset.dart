//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ClipGuidancePreset {
  /// Instantiate a new enum with the provided [value].
  const ClipGuidancePreset._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FAST_BLUE = ClipGuidancePreset._(r'FAST_BLUE');
  static const FAST_GREEN = ClipGuidancePreset._(r'FAST_GREEN');
  static const NONE = ClipGuidancePreset._(r'NONE');
  static const SIMPLE = ClipGuidancePreset._(r'SIMPLE');
  static const SLOW = ClipGuidancePreset._(r'SLOW');
  static const SLOWER = ClipGuidancePreset._(r'SLOWER');
  static const SLOWEST = ClipGuidancePreset._(r'SLOWEST');

  /// List of all possible values in this [enum][ClipGuidancePreset].
  static const values = <ClipGuidancePreset>[
    FAST_BLUE,
    FAST_GREEN,
    NONE,
    SIMPLE,
    SLOW,
    SLOWER,
    SLOWEST,
  ];

  static ClipGuidancePreset? fromJson(dynamic value) => ClipGuidancePresetTypeTransformer().decode(value);

  static List<ClipGuidancePreset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClipGuidancePreset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClipGuidancePreset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClipGuidancePreset] to String,
/// and [decode] dynamic data back to [ClipGuidancePreset].
class ClipGuidancePresetTypeTransformer {
  factory ClipGuidancePresetTypeTransformer() => _instance ??= const ClipGuidancePresetTypeTransformer._();

  const ClipGuidancePresetTypeTransformer._();

  String encode(ClipGuidancePreset data) => data.value;

  /// Decodes a [dynamic value][data] to a ClipGuidancePreset.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClipGuidancePreset? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FAST_BLUE': return ClipGuidancePreset.FAST_BLUE;
        case r'FAST_GREEN': return ClipGuidancePreset.FAST_GREEN;
        case r'NONE': return ClipGuidancePreset.NONE;
        case r'SIMPLE': return ClipGuidancePreset.SIMPLE;
        case r'SLOW': return ClipGuidancePreset.SLOW;
        case r'SLOWER': return ClipGuidancePreset.SLOWER;
        case r'SLOWEST': return ClipGuidancePreset.SLOWEST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClipGuidancePresetTypeTransformer] instance.
  static ClipGuidancePresetTypeTransformer? _instance;
}

