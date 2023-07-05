/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

import 'package:stabilityai_client/stabilityai_client.dart';

/// An example of how to use the Stability API V1 to list
/// all engines available to your organization/user.
///
Future<void> main() async {
  // Create an API client with API key authentication
  final client = StabilityaiClient.getApiKeyAuthClient('YOUR-API-KEY');

  // Get an instance of the V1 engines API using our client
  final apiInstance = V1EnginesApi(client);

  // Set the remaining parameters

  // Use the default organisation, i.e we don't set one.

  // Used to identify the source of requests, such as the client application or sub-organization.
  // Optional, but recommended for organizational clarity.
  final stabilityClientID = 'Your-Client-Id';
  // Used to identify the version of the application or service making the requests.
  // Optional, but recommended for organizational clarity.
  final stabilityClientVersion = StabilityaiClient.version;

  try {
    final result = await apiInstance.listEngines(
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    if (result!.isNotEmpty) {
      for (final engine in result) {
        print(engine);
      }
    } else {
      print("No engines listed");
    }
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->listEngines: $e\n');
  }
}
