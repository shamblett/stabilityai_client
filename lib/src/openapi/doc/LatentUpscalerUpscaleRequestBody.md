# openapi.model.LatentUpscalerUpscaleRequestBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | [**MultipartFile**](MultipartFile.md) |  | 
**width** | **int** | Desired width of the output image.  Only one of `width` or `height` may be specified. | [optional] 
**height** | **int** | Desired height of the output image.  Only one of `width` or `height` may be specified. | [optional] 
**textPrompts** | [**List<TextPrompt>**](TextPrompt.md) | An array of text prompts to use for generation.  Due to how arrays are represented in `multipart/form-data` requests, prompts must adhere to the format `text_prompts[index][text|weight]`, where `index` is some integer used to tie the text and weight together.  While `index` does not have to be sequential, duplicate entries  will override previous entries, so it is recommended to use sequential indices.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as: ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 ```  To add another prompt to that request simply provide the values under a new `index`:  ``` text_prompts[0][text]: \"A lighthouse on a cliff\" text_prompts[0][weight]: 0.5 text_prompts[1][text]: \"land, ground, dirt, grass\" text_prompts[1][weight]: -0.9 ``` | [optional] [default to const []]
**seed** | **int** | Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
**steps** | **int** | Number of diffusion steps to run | [optional] [default to 50]
**cfgScale** | **num** | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

