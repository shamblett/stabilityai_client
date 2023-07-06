/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

import 'dart:convert';
import 'dart:io';

import 'package:stabilityai_client/stabilityai_client.dart';

/// An example of how to use the Stability API V1 to generate a new image from a text prompt

Future<void> main() async {
  // Create an API client with API key authentication
  final client = StabilityaiClient.getApiKeyAuthClient('YOUR-STABILITY-API-KEY');

  // Get an instance of the V1 generation API using our client
  final apiInstance = V1GenerationApi(client);

  // Other parameters
  final engineId = 'stable-diffusion-v1-5'; // String |
  final prompt = TextPrompt(
      text: 'Generate an image for the Dart programming language',
      weight: 0.85);
  final textToImageRequestBody = TextToImageRequestBody()
    ..textPrompts = [prompt]
    ..clipGuidancePreset = ClipGuidancePreset.NONE // Needed
    ..samples = 2; // Number of images
  final accept =
      'application/json'; // String | The format of the response.
  final stabilityClientID =
      'Your-Client-Id'; // String | Used to identify the source of requests, such as the client application or sub-organization. Optional, but recommended for organizational clarity.
  final stabilityClientVersion = StabilityaiClient
      .version; // String | Used to identify the version of the application or service making the requests. Optional, but recommended for organizational clarity.
  try {
    final result = await apiInstance.textToImage(
        engineId, textToImageRequestBody,
        accept: accept,
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    print('');
    final fileName = 'yourimage';
    var count = 1;
    if (result!.isNotEmpty) {
      print('Image details --> ');
      print('');
      for (final image in result) {
        print('Finish Reason : ${image.finishReason}');
        print('Seed: ${image.seed}');
        final png = base64Decode(image.base64!);
        final file = File('$fileName-$count.png');
        file.writeAsBytesSync(png);
        print('Your image is in the file ../$fileName-$count.png');
        count++;
      }
    } else {
      print('No image generated');
    }
  } catch (e) {
    print('Exception when calling V1 GenerationApi->textToImage: $e\n');
  }

  return;
}
