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
  final client = ApiClient(
      authentication: ApiKeyAuth('header', 'Authorization')..apiKey = '');

  // Get an instance of the V1 engines API using our client
  final apiInstance = V1EnginesApi(client);

  // Set the remaining parameters

  // Allows for requests to be scoped to an organization other than the user's
  // default.  If not provided, the user's default organization will be used.
  //final organization = ''; //'''org-123456';
  // Used to identify the source of requests, such as the client application or sub-organization.
  // Optional, but recommended for organizational clarity.
  final stabilityClientID = 'my-great-plugin';
  // Used to identify the version of the application or service making the requests.
  // Optional, but recommended for organizational clarity.
  final stabilityClientVersion = '1.0.0';

  try {
    final result = await apiInstance.listEngines(
        //organization: organization,
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->listEngines: $e\n');
  }
}
