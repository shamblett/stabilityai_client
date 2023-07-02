//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1GenerationApi {
  V1GenerationApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// image-to-image
  ///
  /// Modify an image based on a text prompt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [List<TextPrompt>] textPrompts (required):
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [MultipartFile] initImage (required):
  ///   Image used to initialize the diffusion process, in lieu of random noise.
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [InitImageMode] initImageMode:
  ///
  /// * [double] imageStrength:
  ///   How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
  ///
  /// * [num] stepScheduleStart:
  ///   Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
  ///
  /// * [num] stepScheduleEnd:
  ///   Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// * [ClipGuidancePreset] clipGuidancePreset:
  ///
  /// * [Sampler] sampler:
  ///
  /// * [int] samples:
  ///   Number of images to generate
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [StylePreset] stylePreset:
  ///
  /// * [Object] extras:
  ///   Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  Future<Response> imageToImageWithHttpInfo(
    String engineId,
    List<TextPrompt> textPrompts,
    MultipartFile initImage, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    InitImageMode? initImageMode,
    double? imageStrength,
    num? stepScheduleStart,
    num? stepScheduleEnd,
    num? cfgScale,
    ClipGuidancePreset? clipGuidancePreset,
    Sampler? sampler,
    int? samples,
    int? seed,
    int? steps,
    StylePreset? stylePreset,
    Object? extras,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/generation/{engine_id}/image-to-image'
        .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }
    if (organization != null) {
      headerParams[r'Organization'] = parameterToString(organization);
    }
    if (stabilityClientID != null) {
      headerParams[r'Stability-Client-ID'] =
          parameterToString(stabilityClientID);
    }
    if (stabilityClientVersion != null) {
      headerParams[r'Stability-Client-Version'] =
          parameterToString(stabilityClientVersion);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (textPrompts != null) {
      hasFields = true;
      mp.fields[r'text_prompts'] = parameterToString(textPrompts);
    }
    if (initImage != null) {
      hasFields = true;
      mp.fields[r'init_image'] = initImage.field;
      mp.files.add(initImage);
    }
    if (initImageMode != null) {
      hasFields = true;
      mp.fields[r'init_image_mode'] = parameterToString(initImageMode);
    }
    if (imageStrength != null) {
      hasFields = true;
      mp.fields[r'image_strength'] = parameterToString(imageStrength);
    }
    if (stepScheduleStart != null) {
      hasFields = true;
      mp.fields[r'step_schedule_start'] = parameterToString(stepScheduleStart);
    }
    if (stepScheduleEnd != null) {
      hasFields = true;
      mp.fields[r'step_schedule_end'] = parameterToString(stepScheduleEnd);
    }
    if (cfgScale != null) {
      hasFields = true;
      mp.fields[r'cfg_scale'] = parameterToString(cfgScale);
    }
    if (clipGuidancePreset != null) {
      hasFields = true;
      mp.fields[r'clip_guidance_preset'] =
          parameterToString(clipGuidancePreset);
    }
    if (sampler != null) {
      hasFields = true;
      mp.fields[r'sampler'] = parameterToString(sampler);
    }
    if (samples != null) {
      hasFields = true;
      mp.fields[r'samples'] = parameterToString(samples);
    }
    if (seed != null) {
      hasFields = true;
      mp.fields[r'seed'] = parameterToString(seed);
    }
    if (steps != null) {
      hasFields = true;
      mp.fields[r'steps'] = parameterToString(steps);
    }
    if (stylePreset != null) {
      hasFields = true;
      mp.fields[r'style_preset'] = parameterToString(stylePreset);
    }
    if (extras != null) {
      hasFields = true;
      mp.fields[r'extras'] = parameterToString(extras);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// image-to-image
  ///
  /// Modify an image based on a text prompt
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [List<TextPrompt>] textPrompts (required):
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [MultipartFile] initImage (required):
  ///   Image used to initialize the diffusion process, in lieu of random noise.
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [InitImageMode] initImageMode:
  ///
  /// * [double] imageStrength:
  ///   How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.
  ///
  /// * [num] stepScheduleStart:
  ///   Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
  ///
  /// * [num] stepScheduleEnd:
  ///   Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// * [ClipGuidancePreset] clipGuidancePreset:
  ///
  /// * [Sampler] sampler:
  ///
  /// * [int] samples:
  ///   Number of images to generate
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [StylePreset] stylePreset:
  ///
  /// * [Object] extras:
  ///   Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  Future<List<Image>?> imageToImage(
    String engineId,
    List<TextPrompt> textPrompts,
    MultipartFile initImage, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    InitImageMode? initImageMode,
    double? imageStrength,
    num? stepScheduleStart,
    num? stepScheduleEnd,
    num? cfgScale,
    ClipGuidancePreset? clipGuidancePreset,
    Sampler? sampler,
    int? samples,
    int? seed,
    int? steps,
    StylePreset? stylePreset,
    Object? extras,
  }) async {
    final response = await imageToImageWithHttpInfo(
      engineId,
      textPrompts,
      initImage,
      accept: accept,
      organization: organization,
      stabilityClientID: stabilityClientID,
      stabilityClientVersion: stabilityClientVersion,
      initImageMode: initImageMode,
      imageStrength: imageStrength,
      stepScheduleStart: stepScheduleStart,
      stepScheduleEnd: stepScheduleEnd,
      cfgScale: cfgScale,
      clipGuidancePreset: clipGuidancePreset,
      sampler: sampler,
      samples: samples,
      seed: seed,
      steps: steps,
      stylePreset: stylePreset,
      extras: extras,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Image>')
              as List)
          .cast<Image>()
          .toList();
    }
    return null;
  }

  /// image-to-image/masking
  ///
  /// Selectively modify portions of an image using a mask
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [MultipartFile] initImage (required):
  ///   Image used to initialize the diffusion process, in lieu of random noise.
  ///
  /// * [String] maskSource (required):
  ///   For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
  ///
  /// * [List<TextPrompt>] textPrompts (required):
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [MultipartFile] maskImage:
  ///   Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// * [ClipGuidancePreset] clipGuidancePreset:
  ///
  /// * [Sampler] sampler:
  ///
  /// * [int] samples:
  ///   Number of images to generate
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [StylePreset] stylePreset:
  ///
  /// * [Object] extras:
  ///   Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  Future<Response> maskingWithHttpInfo(
    String engineId,
    MultipartFile initImage,
    String maskSource,
    List<TextPrompt> textPrompts, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    MultipartFile? maskImage,
    num? cfgScale,
    ClipGuidancePreset? clipGuidancePreset,
    Sampler? sampler,
    int? samples,
    int? seed,
    int? steps,
    StylePreset? stylePreset,
    Object? extras,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/generation/{engine_id}/image-to-image/masking'
        .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }
    if (organization != null) {
      headerParams[r'Organization'] = parameterToString(organization);
    }
    if (stabilityClientID != null) {
      headerParams[r'Stability-Client-ID'] =
          parameterToString(stabilityClientID);
    }
    if (stabilityClientVersion != null) {
      headerParams[r'Stability-Client-Version'] =
          parameterToString(stabilityClientVersion);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (initImage != null) {
      hasFields = true;
      mp.fields[r'init_image'] = initImage.field;
      mp.files.add(initImage);
    }
    if (maskSource != null) {
      hasFields = true;
      mp.fields[r'mask_source'] = parameterToString(maskSource);
    }
    if (maskImage != null) {
      hasFields = true;
      mp.fields[r'mask_image'] = maskImage.field;
      mp.files.add(maskImage);
    }
    if (textPrompts != null) {
      hasFields = true;
      mp.fields[r'text_prompts'] = parameterToString(textPrompts);
    }
    if (cfgScale != null) {
      hasFields = true;
      mp.fields[r'cfg_scale'] = parameterToString(cfgScale);
    }
    if (clipGuidancePreset != null) {
      hasFields = true;
      mp.fields[r'clip_guidance_preset'] =
          parameterToString(clipGuidancePreset);
    }
    if (sampler != null) {
      hasFields = true;
      mp.fields[r'sampler'] = parameterToString(sampler);
    }
    if (samples != null) {
      hasFields = true;
      mp.fields[r'samples'] = parameterToString(samples);
    }
    if (seed != null) {
      hasFields = true;
      mp.fields[r'seed'] = parameterToString(seed);
    }
    if (steps != null) {
      hasFields = true;
      mp.fields[r'steps'] = parameterToString(steps);
    }
    if (stylePreset != null) {
      hasFields = true;
      mp.fields[r'style_preset'] = parameterToString(stylePreset);
    }
    if (extras != null) {
      hasFields = true;
      mp.fields[r'extras'] = parameterToString(extras);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// image-to-image/masking
  ///
  /// Selectively modify portions of an image using a mask
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [MultipartFile] initImage (required):
  ///   Image used to initialize the diffusion process, in lieu of random noise.
  ///
  /// * [String] maskSource (required):
  ///   For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
  ///
  /// * [List<TextPrompt>] textPrompts (required):
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [MultipartFile] maskImage:
  ///   Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  ///
  /// * [ClipGuidancePreset] clipGuidancePreset:
  ///
  /// * [Sampler] sampler:
  ///
  /// * [int] samples:
  ///   Number of images to generate
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [StylePreset] stylePreset:
  ///
  /// * [Object] extras:
  ///   Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.
  Future<List<Image>?> masking(
    String engineId,
    MultipartFile initImage,
    String maskSource,
    List<TextPrompt> textPrompts, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    MultipartFile? maskImage,
    num? cfgScale,
    ClipGuidancePreset? clipGuidancePreset,
    Sampler? sampler,
    int? samples,
    int? seed,
    int? steps,
    StylePreset? stylePreset,
    Object? extras,
  }) async {
    final response = await maskingWithHttpInfo(
      engineId,
      initImage,
      maskSource,
      textPrompts,
      accept: accept,
      organization: organization,
      stabilityClientID: stabilityClientID,
      stabilityClientVersion: stabilityClientVersion,
      maskImage: maskImage,
      cfgScale: cfgScale,
      clipGuidancePreset: clipGuidancePreset,
      sampler: sampler,
      samples: samples,
      seed: seed,
      steps: steps,
      stylePreset: stylePreset,
      extras: extras,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Image>')
              as List)
          .cast<Image>()
          .toList();
    }
    return null;
  }

  /// text-to-image
  ///
  /// Generate a new image from a text prompt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [TextToImageRequestBody] textToImageRequestBody (required):
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  Future<Response> textToImageWithHttpInfo(
    String engineId,
    TextToImageRequestBody textToImageRequestBody, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/generation/{engine_id}/text-to-image'
        .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody = textToImageRequestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }
    if (organization != null) {
      headerParams[r'Organization'] = parameterToString(organization);
    }
    if (stabilityClientID != null) {
      headerParams[r'Stability-Client-ID'] =
          parameterToString(stabilityClientID);
    }
    if (stabilityClientVersion != null) {
      headerParams[r'Stability-Client-Version'] =
          parameterToString(stabilityClientVersion);
    }

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// text-to-image
  ///
  /// Generate a new image from a text prompt
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [TextToImageRequestBody] textToImageRequestBody (required):
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  Future<List<Image>?> textToImage(
    String engineId,
    TextToImageRequestBody textToImageRequestBody, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
  }) async {
    final response = await textToImageWithHttpInfo(
      engineId,
      textToImageRequestBody,
      accept: accept,
      organization: organization,
      stabilityClientID: stabilityClientID,
      stabilityClientVersion: stabilityClientVersion,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Image>')
              as List)
          .cast<Image>()
          .toList();
    }
    return null;
  }

  /// image-to-image/upscale
  ///
  /// Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.  For upscaler engines that are ESRGAN-based, refer to the `RealESRGANUpscaleRequestBody` body option below. For upscaler engines that are Stable Diffusion Latent Upscaler-based, refer to the `LatentUpscalerUpscaleRequestBody` body option below.  For more details on the upscaler engines, refer to the [documentation on the Platform site.](https://platform.stability.ai/docs/features/image-upscaling?tab=python)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [MultipartFile] image (required):
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [int] width:
  ///   Desired width of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// * [int] height:
  ///   Desired height of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// * [List<TextPrompt>] textPrompts:
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  Future<Response> upscaleImageWithHttpInfo(
    String engineId,
    MultipartFile image, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    int? width,
    int? height,
    List<TextPrompt>? textPrompts,
    int? seed,
    int? steps,
    num? cfgScale,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/generation/{engine_id}/image-to-image/upscale'
        .replaceAll('{engine_id}', engineId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }
    if (organization != null) {
      headerParams[r'Organization'] = parameterToString(organization);
    }
    if (stabilityClientID != null) {
      headerParams[r'Stability-Client-ID'] =
          parameterToString(stabilityClientID);
    }
    if (stabilityClientVersion != null) {
      headerParams[r'Stability-Client-Version'] =
          parameterToString(stabilityClientVersion);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (width != null) {
      hasFields = true;
      mp.fields[r'width'] = parameterToString(width);
    }
    if (height != null) {
      hasFields = true;
      mp.fields[r'height'] = parameterToString(height);
    }
    if (textPrompts != null) {
      hasFields = true;
      mp.fields[r'text_prompts'] = parameterToString(textPrompts);
    }
    if (seed != null) {
      hasFields = true;
      mp.fields[r'seed'] = parameterToString(seed);
    }
    if (steps != null) {
      hasFields = true;
      mp.fields[r'steps'] = parameterToString(steps);
    }
    if (cfgScale != null) {
      hasFields = true;
      mp.fields[r'cfg_scale'] = parameterToString(cfgScale);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// image-to-image/upscale
  ///
  /// Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.  For upscaler engines that are ESRGAN-based, refer to the `RealESRGANUpscaleRequestBody` body option below. For upscaler engines that are Stable Diffusion Latent Upscaler-based, refer to the `LatentUpscalerUpscaleRequestBody` body option below.  For more details on the upscaler engines, refer to the [documentation on the Platform site.](https://platform.stability.ai/docs/features/image-upscaling?tab=python)
  ///
  /// Parameters:
  ///
  /// * [String] engineId (required):
  ///
  /// * [MultipartFile] image (required):
  ///
  /// * [String] accept:
  ///   The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  ///
  /// * [int] width:
  ///   Desired width of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// * [int] height:
  ///   Desired height of the output image.  Only one of `width` or `height` may be specified.
  ///
  /// * [List<TextPrompt>] textPrompts:
  ///   An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
  ///
  /// * [int] seed:
  ///   Random noise seed (omit this option or use `0` for a random seed)
  ///
  /// * [int] steps:
  ///   Number of diffusion steps to run
  ///
  /// * [num] cfgScale:
  ///   How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
  Future<List<Image>?> upscaleImage(
    String engineId,
    MultipartFile image, {
    String? accept,
    String? organization,
    String? stabilityClientID,
    String? stabilityClientVersion,
    int? width,
    int? height,
    List<TextPrompt>? textPrompts,
    int? seed,
    int? steps,
    num? cfgScale,
  }) async {
    final response = await upscaleImageWithHttpInfo(
      engineId,
      image,
      accept: accept,
      organization: organization,
      stabilityClientID: stabilityClientID,
      stabilityClientVersion: stabilityClientVersion,
      width: width,
      height: height,
      textPrompts: textPrompts,
      seed: seed,
      steps: steps,
      cfgScale: cfgScale,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Image>')
              as List)
          .cast<Image>()
          .toList();
    }
    return null;
  }
}
