/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

import 'package:stabilityai_client/stabilityai_client.dart';

void main() {
  final client = ApiClient(
      authentication: ApiKeyAuth('apikey', '')); // Api Key authentication
  final apiInstance = V1EnginesApi(client);
  // Allows for requests to be scoped to an organization other than the user's
  // default.  If not provided, the user's default organization will be used.
  final organization = 'org-123456';
  // Used to identify the source of requests, such as the client application or sub-organization.
  // Optional, but recommended for organizational clarity.
  final stabilityClientID = 'my-great-plugin';
  // Used to identify the version of the application or service making the requests.
  // Optional, but recommended for organizational clarity.
  final stabilityClientVersion = '1.0.0';

  try {
    final result = apiInstance.listEngines(
        organization: organization,
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    print(result);
  } catch (e) {
    print('Exception when calling V1EnginesApi->listEngines: $e\n');
  }
}
