/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

import 'package:stabilityai_client/stabilityai_client.dart';

/// An example of how to use the Stability API V1 to get
/// information about the account associated with the provided API key.

Future<void> main() async {
  // Create an API client with API key authentication
  final client = StabilityaiClient.getApiKeyAuthClient('YOUR-API-KEY');

  // Get an instance of the V1 engines API using our client
  final apiInstance = V1UserApi(client);

  try {
    final result = await apiInstance.userAccount();
    print('User account details -->');
    print('');
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->userAccount: $e\n');
  }

  try {
    // Used to identify the source of requests, such as the client application or sub-organization.
    // Optional, but recommended for organizational clarity.
    final stabilityClientID = 'Your-Client-Id';
    // Used to identify the version of the application or service making the requests.
    // Optional, but recommended for organizational clarity.
    final stabilityClientVersion = StabilityaiClient.version;
    final result = await apiInstance.userBalance(
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    print('');
    print('User balance details --> ');
    print('');
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->userBalance: $e\n');
  }
}
