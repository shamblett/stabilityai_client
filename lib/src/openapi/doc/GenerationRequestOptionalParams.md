# openapi.model.GenerationRequestOptionalParams

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cfgScale** | **num** | How strictly the diffusion process adheres to the prompt text (higher values keep your image closer to your prompt) | [optional] [default to 7]
**clipGuidancePreset** | [**ClipGuidancePreset**](ClipGuidancePreset.md) |  | [optional] 
**sampler** | [**Sampler**](Sampler.md) |  | [optional] 
**samples** | **int** | Number of images to generate | [optional] [default to 1]
**seed** | **int** | Random noise seed (omit this option or use `0` for a random seed) | [optional] [default to 0]
**steps** | **int** | Number of diffusion steps to run | [optional] [default to 50]
**stylePreset** | [**StylePreset**](StylePreset.md) |  | [optional] 
**extras** | [**Object**](.md) | Extra parameters passed to the engine. These parameters are used for in-development or experimental features and may change without warning, so please use with caution. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


