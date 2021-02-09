

import 'package:salud_dominicana/Entities/settings/settings.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory  User({
    String id,
    String name,
    DateTime dateOfBirth,
    String imagePath,
    List<String> pets,
    Settings settings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

