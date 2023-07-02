//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Which sampler to use for the diffusion process. If this value is omitted we'll automatically select an appropriate sampler for you.
class Sampler {
  /// Instantiate a new enum with the provided [value].
  const Sampler._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DDIM = Sampler._(r'DDIM');
  static const DDPM = Sampler._(r'DDPM');
  static const kDPMPP2M = Sampler._(r'K_DPMPP_2M');
  static const kDPMPP2SANCESTRAL = Sampler._(r'K_DPMPP_2S_ANCESTRAL');
  static const kDPM2 = Sampler._(r'K_DPM_2');
  static const kDPM2ANCESTRAL = Sampler._(r'K_DPM_2_ANCESTRAL');
  static const K_EULER = Sampler._(r'K_EULER');
  static const K_EULER_ANCESTRAL = Sampler._(r'K_EULER_ANCESTRAL');
  static const K_HEUN = Sampler._(r'K_HEUN');
  static const K_LMS = Sampler._(r'K_LMS');

  /// List of all possible values in this [enum][Sampler].
  static const values = <Sampler>[
    DDIM,
    DDPM,
    kDPMPP2M,
    kDPMPP2SANCESTRAL,
    kDPM2,
    kDPM2ANCESTRAL,
    K_EULER,
    K_EULER_ANCESTRAL,
    K_HEUN,
    K_LMS,
  ];

  static Sampler? fromJson(dynamic value) => SamplerTypeTransformer().decode(value);

  static List<Sampler> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sampler>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sampler.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Sampler] to String,
/// and [decode] dynamic data back to [Sampler].
class SamplerTypeTransformer {
  factory SamplerTypeTransformer() => _instance ??= const SamplerTypeTransformer._();

  const SamplerTypeTransformer._();

  String encode(Sampler data) => data.value;

  /// Decodes a [dynamic value][data] to a Sampler.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Sampler? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DDIM': return Sampler.DDIM;
        case r'DDPM': return Sampler.DDPM;
        case r'K_DPMPP_2M': return Sampler.kDPMPP2M;
        case r'K_DPMPP_2S_ANCESTRAL': return Sampler.kDPMPP2SANCESTRAL;
        case r'K_DPM_2': return Sampler.kDPM2;
        case r'K_DPM_2_ANCESTRAL': return Sampler.kDPM2ANCESTRAL;
        case r'K_EULER': return Sampler.K_EULER;
        case r'K_EULER_ANCESTRAL': return Sampler.K_EULER_ANCESTRAL;
        case r'K_HEUN': return Sampler.K_HEUN;
        case r'K_LMS': return Sampler.K_LMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SamplerTypeTransformer] instance.
  static SamplerTypeTransformer? _instance;
}

