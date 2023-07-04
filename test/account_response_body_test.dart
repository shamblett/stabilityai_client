//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:stabilityai_client/stabilityai_client.dart';
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
    final instance = AccountResponseBody.fromJson(body);

    test('Not a map', () {
      final instance = AccountResponseBody.fromJson('');
      expect(instance, isNull);
    });

    test('Required keys', () {
      expect(() => AccountResponseBody.fromJson(<String, dynamic>{}),
          throwsA(isA<AssertionError>()));
    });

    // The user's email
    // String email
    test('to test the property `email`', () {
      expect(instance?.email, 'me@here.com');
    });

    // The user's ID
    // String id
    test('to test the property `id`', () {
      expect(instance?.id, 'me');
    });

    // The user's organizations
    // List<OrganizationMembership> organizations (default value: const [])
    test('to test the property `organizations`', () {
      expect(instance?.organizations, [org1, org2]);
    });

    // The user's profile picture
    // String profilePicture
    test('to test the property `profilePicture`', () {
      expect(instance?.profilePicture, 'darticulate.com/profile_picture');
    });

    test('To JSON', () {
      expect(instance?.toJson().toString(),
          '{email: me@here.com, id: me, organizations: [OrganizationMembership[id=1, isDefault=true, name=org1, role=admin], OrganizationMembership[id=2, isDefault=false, name=org2, role=user]], profile_picture: darticulate.com/profile_picture}');
    });
  });
}
