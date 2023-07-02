//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Pass in a style preset to guide the image model towards a particular style. This list of style presets is subject to change.
class StylePreset {
  /// Instantiate a new enum with the provided [value].
  const StylePreset._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const enhance = StylePreset._(r'enhance');
  static const anime = StylePreset._(r'anime');
  static const photographic = StylePreset._(r'photographic');
  static const digitalArt = StylePreset._(r'digital-art');
  static const comicBook = StylePreset._(r'comic-book');
  static const fantasyArt = StylePreset._(r'fantasy-art');
  static const lineArt = StylePreset._(r'line-art');
  static const analogFilm = StylePreset._(r'analog-film');
  static const neonPunk = StylePreset._(r'neon-punk');
  static const isometric = StylePreset._(r'isometric');
  static const lowPoly = StylePreset._(r'low-poly');
  static const origami = StylePreset._(r'origami');
  static const modelingCompound = StylePreset._(r'modeling-compound');
  static const cinematic = StylePreset._(r'cinematic');
  static const n3dModel = StylePreset._(r'3d-model');
  static const pixelArt = StylePreset._(r'pixel-art');
  static const tileTexture = StylePreset._(r'tile-texture');

  /// List of all possible values in this [enum][StylePreset].
  static const values = <StylePreset>[
    enhance,
    anime,
    photographic,
    digitalArt,
    comicBook,
    fantasyArt,
    lineArt,
    analogFilm,
    neonPunk,
    isometric,
    lowPoly,
    origami,
    modelingCompound,
    cinematic,
    n3dModel,
    pixelArt,
    tileTexture,
  ];

  static StylePreset? fromJson(dynamic value) =>
      StylePresetTypeTransformer().decode(value);

  static List<StylePreset> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StylePreset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StylePreset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StylePreset] to String,
/// and [decode] dynamic data back to [StylePreset].
class StylePresetTypeTransformer {
  factory StylePresetTypeTransformer() =>
      _instance ??= const StylePresetTypeTransformer._();

  const StylePresetTypeTransformer._();

  String encode(StylePreset data) => data.value;

  /// Decodes a [dynamic value][data] to a StylePreset.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StylePreset? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'enhance':
          return StylePreset.enhance;
        case r'anime':
          return StylePreset.anime;
        case r'photographic':
          return StylePreset.photographic;
        case r'digital-art':
          return StylePreset.digitalArt;
        case r'comic-book':
          return StylePreset.comicBook;
        case r'fantasy-art':
          return StylePreset.fantasyArt;
        case r'line-art':
          return StylePreset.lineArt;
        case r'analog-film':
          return StylePreset.analogFilm;
        case r'neon-punk':
          return StylePreset.neonPunk;
        case r'isometric':
          return StylePreset.isometric;
        case r'low-poly':
          return StylePreset.lowPoly;
        case r'origami':
          return StylePreset.origami;
        case r'modeling-compound':
          return StylePreset.modelingCompound;
        case r'cinematic':
          return StylePreset.cinematic;
        case r'3d-model':
          return StylePreset.n3dModel;
        case r'pixel-art':
          return StylePreset.pixelArt;
        case r'tile-texture':
          return StylePreset.tileTexture;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StylePresetTypeTransformer] instance.
  static StylePresetTypeTransformer? _instance;
}
