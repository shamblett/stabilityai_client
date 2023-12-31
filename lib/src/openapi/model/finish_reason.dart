//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../api.dart';

/// The result of the generation process. - `SUCCESS` indicates success - `ERROR` indicates an error - `CONTENT_FILTERED` indicates the result affected by the content filter and may be blurred.  This header is only present when the `Accept` is set to `image/png`.  Otherwise it is returned in the response body.
final class FinishReason {
  /// Instantiate a new enum with the provided [value].
  const FinishReason._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUCCESS = FinishReason._(r'SUCCESS');
  static const ERROR = FinishReason._(r'ERROR');
  static const CONTENT_FILTERED = FinishReason._(r'CONTENT_FILTERED');

  /// List of all possible values in this [enum][FinishReason].
  static const values = <FinishReason>[
    SUCCESS,
    ERROR,
    CONTENT_FILTERED,
  ];

  static FinishReason? fromJson(dynamic value) =>
      FinishReasonTypeTransformer().decode(value);

  static List<FinishReason> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FinishReason>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinishReason.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation final class that can [encode] an instance of [FinishReason] to String,
/// and [decode] dynamic data back to [FinishReason].
final class FinishReasonTypeTransformer {
  factory FinishReasonTypeTransformer() =>
      _instance ??= const FinishReasonTypeTransformer._();

  const FinishReasonTypeTransformer._();

  String encode(FinishReason data) => data.value;

  /// Decodes a [dynamic value][data] to a FinishReason.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FinishReason? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUCCESS':
          return FinishReason.SUCCESS;
        case r'ERROR':
          return FinishReason.ERROR;
        case r'CONTENT_FILTERED':
          return FinishReason.CONTENT_FILTERED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FinishReasonTypeTransformer] instance.
  static FinishReasonTypeTransformer? _instance;
}
