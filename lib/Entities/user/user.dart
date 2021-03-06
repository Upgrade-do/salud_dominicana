import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salud_dominicana/Entities/settings/settings.dart';

import '../settings/settings.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    @Default('id') String id,
    @Default('name') String name,
    DateTime? dateOfBirth,
    @Default('path') String imagePath,
    @Default(['pets list']) List<String> pets,
    Settings? settings,
  }) = _User;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
