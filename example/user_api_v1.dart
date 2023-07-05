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
  final client =
      StabilityaiClient.getApiKeyAuthClient('YOUR-STABILITY-API-KEY');

  // Get an instance of the V1 engines API using our client
  final apiInstance = V1UserApi(client);

  try {
    var result = await apiInstance.userAccount();
    print('User account details');
    print('');
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->userAccount: $e\n');
  }

  try {
    var result = await apiInstance.userBalance();
    print('User balance details');
    print('');
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->userBalance: $e\n');
  }
}
