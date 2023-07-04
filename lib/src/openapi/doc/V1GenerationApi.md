# openapi.api.V1GenerationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToImage**](V1GenerationApi.md#imagetoimage) | **POST** /v1/generation/{engine_id}/image-to-image | image-to-image
[**masking**](V1GenerationApi.md#masking) | **POST** /v1/generation/{engine_id}/image-to-image/masking | image-to-image/masking
[**textToImage**](V1GenerationApi.md#texttoimage) | **POST** /v1/generation/{engine_id}/text-to-image | text-to-image
[**upscaleImage**](V1GenerationApi.md#upscaleimage) | **POST** /v1/generation/{engine_id}/image-to-image/upscale | image-to-image/upscale


# **imageToImage**
> List<Image> imageToImage(engineId, textPrompts, initImage, accept, organization, stabilityClientID, stabilityClientVersion, initImageMode, imageStrength, stepScheduleStart, stepScheduleEnd, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras)

image-to-image

Modify an image based on a text prompt

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = V1GenerationApi();
final engineId = stable-diffusion-v1-5; // String | 
final textPrompts = []; // List<TextPrompt> | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
final initImage = BINARY_DATA_HERE; // MultipartFile | Image used to initialize the diffusion process, in lieu of random noise.
final accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final initImageMode = ; // InitImageMode | 
final imageStrength = 3.4; // double | How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`. 
final stepScheduleStart = 8.14; // num | Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.)
final stepScheduleEnd = 8.14; // num | Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.
final cfgScale = 8.14; // num | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
final clipGuidancePreset = ; // ClipGuidancePreset | 
final sampler = ; // Sampler | 
final samples = 56; // int | Number of images to generate
final seed = 56; // int | Random noise seed (omit this option or use `0` for a random seed)
final steps = 56; // int | Number of diffusion steps to run
final stylePreset = ; // StylePreset | 
final extras = Object; // Object | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.

try {
    final result = api_instance.imageToImage(engineId, textPrompts, initImage, accept, organization, stabilityClientID, stabilityClientVersion, initImageMode, imageStrength, stepScheduleStart, stepScheduleEnd, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras);
    print(result);
} catch (e) {
    print('Exception when calling V1GenerationApi->imageToImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **textPrompts** | [**List<TextPrompt>**](TextPrompt.md)| An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ``` | 
 **initImage** | **MultipartFile**| Image used to initialize the diffusion process, in lieu of random noise. | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **initImageMode** | [**InitImageMode**](InitImageMode.md)|  | [optional] 
 **imageStrength** | **double**| How much influence the `init_image` has on the diffusion process. Values close to `1` will yield images very similar to the `init_image` while values close to `0` will yield images wildly different than the `init_image`. The behavior of this is meant to mirror DreamStudio's \\\"Image Strength\\\" slider.  <br/> <br/> This parameter is just an alternate way to set `step_schedule_start`, which is done via the calculation `1 - image_strength`. For example, passing in an Image Strength of 35% (`0.35`) would result in a `step_schedule_start` of `0.65`.  | [optional] [default to 0.35]
 **stepScheduleStart** | **num**| Skips a proportion of the start of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps.  (e.g. a value of `0` would simply return you the init_image, where a value of `1` would return you a completely different image.) | [optional] [default to 0.65]
 **stepScheduleEnd** | **num**| Skips a proportion of the end of the diffusion steps, allowing the init_image to influence the final generated image.  Lower values will result in more influence from the init_image, while higher values will result in more influence from the diffusion steps. | [optional] 
 **cfgScale** | **num**| How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]
 **clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md)|  | [optional] 
 **sampler** | [**Sampler**](Sampler.md)|  | [optional] 
 **samples** | **int**| Number of images to generate | [optional] [default to 1]
 **seed** | **int**| Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
 **steps** | **int**| Number of diffusion steps to run | [optional] [default to 50]
 **stylePreset** | [**StylePreset**](StylePreset.md)|  | [optional] 
 **extras** | [**Object**](Object.md)| Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

### Return type

[**List<Image>**](Image.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masking**
> List<Image> masking(engineId, initImage, maskSource, textPrompts, accept, organization, stabilityClientID, stabilityClientVersion, maskImage, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras)

image-to-image/masking

Selectively modify portions of an image using a mask

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = V1GenerationApi();
final engineId = stable-inpainting-512-v2-0; // String | 
final initImage = BINARY_DATA_HERE; // MultipartFile | Image used to initialize the diffusion process, in lieu of random noise.
final maskSource = maskSource_example; // String | For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged
final textPrompts = []; // List<TextPrompt> | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
final accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final maskImage = BINARY_DATA_HERE; // MultipartFile | Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted.
final cfgScale = 8.14; // num | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)
final clipGuidancePreset = ; // ClipGuidancePreset | 
final sampler = ; // Sampler | 
final samples = 56; // int | Number of images to generate
final seed = 56; // int | Random noise seed (omit this option or use `0` for a random seed)
final steps = 56; // int | Number of diffusion steps to run
final stylePreset = ; // StylePreset | 
final extras = Object; // Object | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution.

try {
    final result = api_instance.masking(engineId, initImage, maskSource, textPrompts, accept, organization, stabilityClientID, stabilityClientVersion, maskImage, cfgScale, clipGuidancePreset, sampler, samples, seed, steps, stylePreset, extras);
    print(result);
} catch (e) {
    print('Exception when calling V1GenerationApi->masking: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **initImage** | **MultipartFile**| Image used to initialize the diffusion process, in lieu of random noise. | 
 **maskSource** | **String**| For any given pixel, the mask determines the strength of generation on a linear scale.  This parameter determines where to source the mask from: - `MASK_IMAGE_WHITE` will use the white pixels of the mask_image as the mask, where white pixels are completely replaced and black pixels are unchanged - `MASK_IMAGE_BLACK` will use the black pixels of the mask_image as the mask, where black pixels are completely replaced and white pixels are unchanged - `INIT_IMAGE_ALPHA` will use the alpha channel of the init_image as the mask, where fully transparent pixels are completely replaced and fully opaque pixels are unchanged | 
 **textPrompts** | [**List<TextPrompt>**](TextPrompt.md)| An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ``` | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **maskImage** | **MultipartFile**| Optional grayscale mask that allows for influence over which pixels are eligible for diffusion and at what strength. Must be the same dimensions as the `init_image`. Use the `mask_source` option to specify whether the white or black pixels should be inpainted. | [optional] 
 **cfgScale** | **num**| How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]
 **clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md)|  | [optional] 
 **sampler** | [**Sampler**](Sampler.md)|  | [optional] 
 **samples** | **int**| Number of images to generate | [optional] [default to 1]
 **seed** | **int**| Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
 **steps** | **int**| Number of diffusion steps to run | [optional] [default to 50]
 **stylePreset** | [**StylePreset**](StylePreset.md)|  | [optional] 
 **extras** | [**Object**](Object.md)| Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

### Return type

[**List<Image>**](Image.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textToImage**
> List<Image> textToImage(engineId, textToImageRequestBody, accept, organization, stabilityClientID, stabilityClientVersion)

text-to-image

Generate a new image from a text prompt

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = V1GenerationApi();
final engineId = stable-diffusion-v1-5; // String | 
final textToImageRequestBody = TextToImageRequestBody(); // TextToImageRequestBody | 
final accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.

try {
    final result = api_instance.textToImage(engineId, textToImageRequestBody, accept, organization, stabilityClientID, stabilityClientVersion);
    print(result);
} catch (e) {
    print('Exception when calling V1GenerationApi->textToImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **textToImageRequestBody** | [**TextToImageRequestBody**](TextToImageRequestBody.md)|  | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 

### Return type

[**List<Image>**](Image.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upscaleImage**
> List<Image> upscaleImage(engineId, image, accept, organization, stabilityClientID, stabilityClientVersion, width, height, textPrompts, seed, steps, cfgScale)

image-to-image/upscale

Create a higher resolution version of an input image.  This operation outputs an image with a maximum pixel count of **4,194,304**. This is equivalent to dimensions such as `2048x2048` and `4096x1024`.  By default, the input image will be upscaled by a factor of 2.  For additional control over the output dimensions, a `width` or `height` parameter may be specified.  For upscaler engines that are ESRGAN-based, refer to the `RealESRGANUpscaleRequestBody` body option below. For upscaler engines that are Stable Diffusion Latent Upscaler-based, refer to the `LatentUpscalerUpscaleRequestBody` body option below.  For more details on the upscaler engines, refer to the [documentation on the Platform site.](https://platform.stability.ai/docs/features/image-upscaling?tab=python) 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = V1GenerationApi();
final engineId = esrgan-v1-x2plus; // String | 
final image = BINARY_DATA_HERE; // MultipartFile | 
final accept = accept_example; // String | The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image.
final organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
final width = 56; // int | Desired width of the output image.  Only one of `width` or `height` may be specified.
final height = 56; // int | Desired height of the output image.  Only one of `width` or `height` may be specified.
final textPrompts = []; // List<TextPrompt> | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ```
final seed = 56; // int | Random noise seed (omit this option or use `0` for a random seed)
final steps = 56; // int | Number of diffusion steps to run
final cfgScale = 8.14; // num | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt)

try {
    final result = api_instance.upscaleImage(engineId, image, accept, organization, stabilityClientID, stabilityClientVersion, width, height, textPrompts, seed, steps, cfgScale);
    print(result);
} catch (e) {
    print('Exception when calling V1GenerationApi->upscaleImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineId** | **String**|  | 
 **image** | **MultipartFile**|  | 
 **accept** | **String**| The format of the response.  Leave blank for JSON, or set to 'image/png' for a PNG image. | [optional] [default to 'application/json']
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 
 **width** | **int**| Desired width of the output image.  Only one of `width` or `height` may be specified. | [optional] 
 **height** | **int**| Desired height of the output image.  Only one of `width` or `height` may be specified. | [optional] 
 **textPrompts** | [**List<TextPrompt>**](TextPrompt.md)| An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \\\"A lighthouse on a cliff\\\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \\\"land, ground, dirt, grass\\\" text_prompts[1][weight]: -0.9 ``` | [optional] 
 **seed** | **int**| Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
 **steps** | **int**| Number of diffusion steps to run | [optional] [default to 50]
 **cfgScale** | **num**| How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]

### Return type

[**List<Image>**](Image.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
