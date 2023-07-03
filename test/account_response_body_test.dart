//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:stabilityai_client/src/openapi/api.dart';
import 'package:test/test.dart';

// tests for AccountResponseBody
void main() {
  group('test AccountResponseBody', () {
    final org1 = OrganizationMembership(
        id: '1', isDefault: true, name: 'org1', role: 'admin');
    final org2 = OrganizationMembership(
        id: '2', isDefault: false, name: 'org2', role: 'user');
    final body = <String, dynamic>{
      'email': 'me@here.com',
      'id': 'me',
      'organizations': <dynamic>[org1.toJson(), org2.toJson()],
      'profile_picture': 'darticulate.com/profile_picture'
    };

    test('Not a map', () {
      final instance = AccountResponseBody.fromJson('');
      expect(instance, isNull);
    });

    test('Required keys', () {
      expect(() => AccountResponseBody.fromJson(<String, dynamic>{}),
          throwsA(isA<AssertionError>()));
    });

    final instance = AccountResponseBody.fromJson(body);

    // The user's email
    // String email
    test('to test the property `email`', () async {
      expect(instance?.email, 'me@here.com');
    });

    // The user's ID
    // String id
    test('to test the property `id`', () async {
      expect(instance?.id, 'me');
    });

    // The user's organizations
    // List<OrganizationMembership> organizations (default value: const [])
    test('to test the property `organizations`', () async {
      expect(instance?.organizations, [org1, org2]);
    });

    // The user's profile picture
    // String profilePicture
    test('to test the property `profilePicture`', () async {
      expect(instance?.profilePicture, 'darticulate.com/profile_picture');
    });
  });
}
