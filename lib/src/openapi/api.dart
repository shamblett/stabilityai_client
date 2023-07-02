//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/v1_engines_api.dart';
part 'api/v1_generation_api.dart';
part 'api/v1_user_api.dart';

part 'model/account_response_body.dart';
part 'model/balance_response_body.dart';
part 'model/clip_guidance_preset.dart';
part 'model/engine.dart';
part 'model/error.dart';
part 'model/finish_reason.dart';
part 'model/generation_request_optional_params.dart';
part 'model/image.dart';
part 'model/image_to_image_request_body.dart';
part 'model/image_to_image_using_image_strength_request_body.dart';
part 'model/image_to_image_using_image_strength_request_body_all_of.dart';
part 'model/image_to_image_using_step_schedule_request_body.dart';
part 'model/image_to_image_using_step_schedule_request_body_all_of.dart';
part 'model/init_image_mode.dart';
part 'model/latent_upscaler_upscale_request_body.dart';
part 'model/masking_request_body.dart';
part 'model/masking_using_init_image_alpha_request_body.dart';
part 'model/masking_using_init_image_alpha_request_body_all_of.dart';
part 'model/masking_using_mask_image_request_body.dart';
part 'model/masking_using_mask_image_request_body_all_of.dart';
part 'model/organization_membership.dart';
part 'model/real_esrgan_upscale_request_body.dart';
part 'model/sampler.dart';
part 'model/style_preset.dart';
part 'model/text_prompt.dart';
part 'model/text_to_image_request_body.dart';
part 'model/text_to_image_request_body_all_of.dart';
part 'model/upscale_image_request.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
