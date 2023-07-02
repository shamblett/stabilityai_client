//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class V1UserApi {
  V1UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// account
  ///
  /// Get information about the account associated with the provided API key
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/account';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// account
  ///
  /// Get information about the account associated with the provided API key
  Future<AccountResponseBody?> userAccount() async {
    final response = await userAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountResponseBody',) as AccountResponseBody;
    
    }
    return null;
  }

  /// balance
  ///
  /// Get the credit balance of the account/organization associated with the API key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  Future<Response> userBalanceWithHttpInfo({ String? organization, String? stabilityClientID, String? stabilityClientVersion, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/user/balance';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (organization != null) {
      headerParams[r'Organization'] = parameterToString(organization);
    }
    if (stabilityClientID != null) {
      headerParams[r'Stability-Client-ID'] = parameterToString(stabilityClientID);
    }
    if (stabilityClientVersion != null) {
      headerParams[r'Stability-Client-Version'] = parameterToString(stabilityClientVersion);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// balance
  ///
  /// Get the credit balance of the account/organization associated with the API key
  ///
  /// Parameters:
  ///
  /// * [String] organization:
  ///   Allows for requests to be scoped to an organization other than the user's default.  If not provided, the user's default organization will be used.
  ///
  /// * [String] stabilityClientID:
  ///   Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  ///
  /// * [String] stabilityClientVersion:
  ///   Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  Future<BalanceResponseBody?> userBalance({ String? organization, String? stabilityClientID, String? stabilityClientVersion, }) async {
    final response = await userBalanceWithHttpInfo( organization: organization, stabilityClientID: stabilityClientID, stabilityClientVersion: stabilityClientVersion, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BalanceResponseBody',) as BalanceResponseBody;
    
    }
    return null;
  }
}
