//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../api.dart';

/// Whether to use `image_strength` or `step_schedule_*` to control how much influence the `init_image` has on the result.
final class InitImageMode {
  /// Instantiate a new enum with the provided [value].
  const InitImageMode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IMAGE_STRENGTH = InitImageMode._(r'IMAGE_STRENGTH');
  static const STEP_SCHEDULE = InitImageMode._(r'STEP_SCHEDULE');

  /// List of all possible values in this [enum][InitImageMode].
  static const values = <InitImageMode>[
    IMAGE_STRENGTH,
    STEP_SCHEDULE,
  ];

  static InitImageMode? fromJson(dynamic value) =>
      InitImageModeTypeTransformer().decode(value);

  static List<InitImageMode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <InitImageMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitImageMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation final class that can [encode] an instance of [InitImageMode] to String,
/// and [decode] dynamic data back to [InitImageMode].
final class InitImageModeTypeTransformer {
  factory InitImageModeTypeTransformer() =>
      _instance ??= const InitImageModeTypeTransformer._();

  const InitImageModeTypeTransformer._();

  String encode(InitImageMode data) => data.value;

  /// Decodes a [dynamic value][data] to a InitImageMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InitImageMode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IMAGE_STRENGTH':
          return InitImageMode.IMAGE_STRENGTH;
        case r'STEP_SCHEDULE':
          return InitImageMode.STEP_SCHEDULE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InitImageModeTypeTransformer] instance.
  static InitImageModeTypeTransformer? _instance;
}
