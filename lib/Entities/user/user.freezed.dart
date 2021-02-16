// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String id = 'id',
      String name = 'name',
      DateTime? dateOfBirth,
      String imagePath = 'path',
      List<String> pets = const ['pets list'],
      Settings? settings}) {
    return _User(
      id: id,
      name: name,
      dateOfBirth: dateOfBirth,
      imagePath: imagePath,
      pets: pets,
      settings: settings,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;
  String get name;
  DateTime? get dateOfBirth;
  String get imagePath;
  List<String> get pets;
  Settings? get settings;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime? dateOfBirth,
      String imagePath,
      List<String> pets,
      Settings? settings});

  $SettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dateOfBirth = freezed,
    Object? imagePath = freezed,
    Object? pets = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTime?,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      pets: pets == freezed ? _value.pets : pets as List<String>,
      settings: settings == freezed ? _value.settings : settings as Settings?,
    ));
  }

  @override
  $SettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $SettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime? dateOfBirth,
      String imagePath,
      List<String> pets,
      Settings? settings});

  @override
  $SettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dateOfBirth = freezed,
    Object? imagePath = freezed,
    Object? pets = freezed,
    Object? settings = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTime?,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      pets: pets == freezed ? _value.pets : pets as List<String>,
      settings: settings == freezed ? _value.settings : settings as Settings?,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {this.id = 'id',
      this.name = 'name',
      this.dateOfBirth,
      this.imagePath = 'path',
      this.pets = const ['pets list'],
      this.settings});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @JsonKey(defaultValue: 'id')
  @override
  final String id;
  @JsonKey(defaultValue: 'name')
  @override
  final String name;
  @override
  final DateTime? dateOfBirth;
  @JsonKey(defaultValue: 'path')
  @override
  final String imagePath;
  @JsonKey(defaultValue: const ['pets list'])
  @override
  final List<String> pets;
  @override
  final Settings? settings;

  @override
  String toString() {
    return 'User(id: $id, name: $name, dateOfBirth: $dateOfBirth, imagePath: $imagePath, pets: $pets, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.pets, pets) ||
                const DeepCollectionEquality().equals(other.pets, pets)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(pets) ^
      const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String id,
      String name,
      DateTime? dateOfBirth,
      String imagePath,
      List<String> pets,
      Settings? settings}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime? get dateOfBirth;
  @override
  String get imagePath;
  @override
  List<String> get pets;
  @override
  Settings? get settings;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
