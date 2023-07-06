/*
 * Package : stabilityai_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 04/07/2023
 * Copyright :  S.Hamblett
 */

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:stabilityai_client/stabilityai_client.dart';

/// An example of how to use the Stability API V1 to generate a new image from a text prompt
/// and subsequently manipulate the image.

Future<void> main() async {
  final imagesGenerated = <Uint8List>[];
  final tmpDir = Directory.systemTemp.path;
  const fileNamePrefix = 'yourimage';

  // Create an API client with API key authentication
  final client =
      StabilityaiClient.getApiKeyAuthClient('YOUR-STABILITY-API-KEY');

  // Get an instance of the V1 generation API using our client
  final apiInstance = V1GenerationApi(client);

  // Other parameters

  // Engine Id, see the Engines API
  final engineId = 'stable-diffusion-v1-5';

  // The prompt with weight
  final prompt = TextPrompt(text: 'People playing darts', weight: 0.85);

  // Request body, clip guidance preset must be specified, samples is the number of images needed,
  // set other parameters as required.
  final textToImageRequestBody = TextToImageRequestBody()
    ..textPrompts = [prompt]
    ..clipGuidancePreset = ClipGuidancePreset.NONE // Needed
    ..samples = 2;

  // Must be application/json
  final accept = 'application/json';

  // Used to identify the source of requests, such as the client application or sub-organization.
  // Optional, but recommended for organizational clarity
  final stabilityClientID = 'Your-Client-Id';

  //  Used to identify the version of the application or service making the requests.
  //  Optional, but recommended for organizational clarity.
  final stabilityClientVersion = StabilityaiClient.version;

  // Make the call
  try {
    final result = await apiInstance.textToImage(
        engineId, textToImageRequestBody,
        accept: accept,
        stabilityClientID: stabilityClientID,
        stabilityClientVersion: stabilityClientVersion);
    print('');
    var count = 1;
    if (result!.isNotEmpty) {
      print('Image details --> ');
      print('');
      for (final image in result) {
        final fileName =
            '$tmpDir${Platform.pathSeparator}$fileNamePrefix-$count.png';
        print('Finish Reason : ${image.finishReason}');
        print('Seed: ${image.seed}');
        final png = base64Decode(image.base64!);
        imagesGenerated.add(png);
        final file = File(fileName);
        file.writeAsBytesSync(png);
        print('Your image is in the file $fileName');
        print('');
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
