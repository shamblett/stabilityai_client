# openapi.api.V1EnginesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.stability.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listEngines**](V1EnginesApi.md#listengines) | **GET** /v1/engines/list | list


# **listEngines**
> List<Engine> listEngines(organization, stabilityClientID, stabilityClientVersion)

list

List all engines available to your organization/user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: STABILITY_API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('STABILITY_API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = V1EnginesApi();
final organization = org-123456; // String | Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
final stabilityClientID = my-great-plugin; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
final stabilityClientVersion = 1.2.1; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.

try {
    final result = api_instance.listEngines(organization, stabilityClientID, stabilityClientVersion);
    print(result);
} catch (e) {
    print('Exception when calling V1EnginesApi->listEngines: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used. | [optional] 
 **stabilityClientID** | **String**| Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity. | [optional] 
 **stabilityClientVersion** | **String**| Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity. | [optional] 

### Return type

[**List<Engine>**](Engine.md)

### Authorization

[STABILITY_API_KEY](../README.md#STABILITY_API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

