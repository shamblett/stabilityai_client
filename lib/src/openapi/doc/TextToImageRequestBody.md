# openapi.model.TextToImageRequestBody

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**height** | **int** | Height of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> | [optional] [default to 512]
**width** | **int** | Width of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> | [optional] [default to 512]
**textPrompts** | [**List<TextPrompt>**](TextPrompt.md) | An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  <pre> \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] </pre> | [default to const []]
**cfgScale** | **num** | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]
**clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md) |  | [optional] 
**sampler** | [**Sampler**](Sampler.md) |  | [optional] 
**samples** | **int** | Number of images to generate | [optional] [default to 1]
**seed** | **int** | Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
**steps** | **int** | Number of diffusion steps to run | [optional] [default to 50]
**stylePreset** | [**StylePreset**](StylePreset.md) |  | [optional] 
**extras** | [**Object**](.md) | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


