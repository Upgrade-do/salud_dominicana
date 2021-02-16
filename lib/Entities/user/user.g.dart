// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String? ?? 'id',
    name: json['name'] as String? ?? 'name',
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateTime.parse(json['dateOfBirth'] as String),
    imagePath: json['imagePath'] as String? ?? 'path',
    pets: (json['pets'] as List<dynamic>?)?.map((e) => e as String).toList() ??
        ['pets list'],
    settings: json['settings'] == null
        ? null
        : Settings.fromJson(json['settings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'imagePath': instance.imagePath,
      'pets': instance.pets,
      'settings': instance.settings?.toJson(),
    };
