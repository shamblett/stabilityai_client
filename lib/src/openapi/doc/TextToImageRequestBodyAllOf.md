# openapi.model.TextToImageRequestBodyAllOf

## Load the model package
```dart
import 'package:stabilityai_client/stabilityai_client.dart';
```

## Properties
 Name            | Type                                  | Description                                                                                                                                                                                                                                                                                                                                                                                                                | Notes                       
-----------------|---------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------
 **height**      | **int**                               | Height of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> | [optional] [default to 512] 
 **width**       | **int**                               | Width of the image in pixels.  Must be in increments of 64 and pass the following validation: - For 768 engines: <span style='display: flex; justify-content: flex-start; gap:8px'>589,824 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span> - All other engines: <span style='display: flex; justify-content: flex-start; gap:8px'>262,144 <span>≤</span> `height * width` <span>≤</span> 1,048,576</span>  | [optional] [default to 512] 
 **textPrompts** | [**List<TextPrompt>**](TextPrompt.md) | An array of text prompts to use for generation.  Given a text prompt with the text `A lighthouse on a cliff` and a weight of `0.5`, it would be represented as:  <pre> \"text_prompts\": [   {     \"text\": \"A lighthouse on a cliff\",     \"weight\": 0.5   } ] </pre>                                                                                                                                                 | [default to const []]       

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


