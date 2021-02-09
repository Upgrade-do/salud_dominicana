// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InsuranceFailureTearOff {
  const _$InsuranceFailureTearOff();

// ignore: unused_element
  RetrieveInsuranceFailure retrieveFailure(
      {String description = 'Error retrieving todos'}) {
    return RetrieveInsuranceFailure(
      description: description,
    );
  }

// ignore: unused_element
  AddInsuranceFailure addFailure({String description = 'Error adding todo'}) {
    return AddInsuranceFailure(
      description: description,
    );
  }

// ignore: unused_element
  RemoveInsuranceFailure removeFailure(
      {String description = 'Error removing todo'}) {
    return RemoveInsuranceFailure(
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InsuranceFailure = _$InsuranceFailureTearOff();

/// @nodoc
mixin _$InsuranceFailure {
  String get description;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveInsuranceFailure value),
    @required TResult addFailure(AddInsuranceFailure value),
    @required TResult removeFailure(RemoveInsuranceFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveInsuranceFailure value),
    TResult addFailure(AddInsuranceFailure value),
    TResult removeFailure(RemoveInsuranceFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $InsuranceFailureCopyWith<InsuranceFailure> get copyWith;
}

/// @nodoc
abstract class $InsuranceFailureCopyWith<$Res> {
  factory $InsuranceFailureCopyWith(
          InsuranceFailure value, $Res Function(InsuranceFailure) then) =
      _$InsuranceFailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$InsuranceFailureCopyWithImpl<$Res>
    implements $InsuranceFailureCopyWith<$Res> {
  _$InsuranceFailureCopyWithImpl(this._value, this._then);

  final InsuranceFailure _value;
  // ignore: unused_field
  final $Res Function(InsuranceFailure) _then;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class $RetrieveInsuranceFailureCopyWith<$Res>
    implements $InsuranceFailureCopyWith<$Res> {
  factory $RetrieveInsuranceFailureCopyWith(RetrieveInsuranceFailure value,
          $Res Function(RetrieveInsuranceFailure) then) =
      _$RetrieveInsuranceFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RetrieveInsuranceFailureCopyWithImpl<$Res>
    extends _$InsuranceFailureCopyWithImpl<$Res>
    implements $RetrieveInsuranceFailureCopyWith<$Res> {
  _$RetrieveInsuranceFailureCopyWithImpl(RetrieveInsuranceFailure _value,
      $Res Function(RetrieveInsuranceFailure) _then)
      : super(_value, (v) => _then(v as RetrieveInsuranceFailure));

  @override
  RetrieveInsuranceFailure get _value =>
      super._value as RetrieveInsuranceFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RetrieveInsuranceFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RetrieveInsuranceFailure implements RetrieveInsuranceFailure {
  const _$RetrieveInsuranceFailure(
      {this.description = 'Error retrieving todos'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error retrieving todos')
  @override
  final String description;

  @override
  String toString() {
    return 'InsuranceFailure.retrieveFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RetrieveInsuranceFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $RetrieveInsuranceFailureCopyWith<RetrieveInsuranceFailure> get copyWith =>
      _$RetrieveInsuranceFailureCopyWithImpl<RetrieveInsuranceFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return retrieveFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieveFailure != null) {
      return retrieveFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveInsuranceFailure value),
    @required TResult addFailure(AddInsuranceFailure value),
    @required TResult removeFailure(RemoveInsuranceFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return retrieveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveInsuranceFailure value),
    TResult addFailure(AddInsuranceFailure value),
    TResult removeFailure(RemoveInsuranceFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieveFailure != null) {
      return retrieveFailure(this);
    }
    return orElse();
  }
}

abstract class RetrieveInsuranceFailure implements InsuranceFailure {
  const factory RetrieveInsuranceFailure({String description}) =
      _$RetrieveInsuranceFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $RetrieveInsuranceFailureCopyWith<RetrieveInsuranceFailure> get copyWith;
}

/// @nodoc
abstract class $AddInsuranceFailureCopyWith<$Res>
    implements $InsuranceFailureCopyWith<$Res> {
  factory $AddInsuranceFailureCopyWith(
          AddInsuranceFailure value, $Res Function(AddInsuranceFailure) then) =
      _$AddInsuranceFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$AddInsuranceFailureCopyWithImpl<$Res>
    extends _$InsuranceFailureCopyWithImpl<$Res>
    implements $AddInsuranceFailureCopyWith<$Res> {
  _$AddInsuranceFailureCopyWithImpl(
      AddInsuranceFailure _value, $Res Function(AddInsuranceFailure) _then)
      : super(_value, (v) => _then(v as AddInsuranceFailure));

  @override
  AddInsuranceFailure get _value => super._value as AddInsuranceFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(AddInsuranceFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$AddInsuranceFailure implements AddInsuranceFailure {
  const _$AddInsuranceFailure({this.description = 'Error adding todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error adding todo')
  @override
  final String description;

  @override
  String toString() {
    return 'InsuranceFailure.addFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddInsuranceFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $AddInsuranceFailureCopyWith<AddInsuranceFailure> get copyWith =>
      _$AddInsuranceFailureCopyWithImpl<AddInsuranceFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return addFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveInsuranceFailure value),
    @required TResult addFailure(AddInsuranceFailure value),
    @required TResult removeFailure(RemoveInsuranceFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveInsuranceFailure value),
    TResult addFailure(AddInsuranceFailure value),
    TResult removeFailure(RemoveInsuranceFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddInsuranceFailure implements InsuranceFailure {
  const factory AddInsuranceFailure({String description}) =
      _$AddInsuranceFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $AddInsuranceFailureCopyWith<AddInsuranceFailure> get copyWith;
}

/// @nodoc
abstract class $RemoveInsuranceFailureCopyWith<$Res>
    implements $InsuranceFailureCopyWith<$Res> {
  factory $RemoveInsuranceFailureCopyWith(RemoveInsuranceFailure value,
          $Res Function(RemoveInsuranceFailure) then) =
      _$RemoveInsuranceFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RemoveInsuranceFailureCopyWithImpl<$Res>
    extends _$InsuranceFailureCopyWithImpl<$Res>
    implements $RemoveInsuranceFailureCopyWith<$Res> {
  _$RemoveInsuranceFailureCopyWithImpl(RemoveInsuranceFailure _value,
      $Res Function(RemoveInsuranceFailure) _then)
      : super(_value, (v) => _then(v as RemoveInsuranceFailure));

  @override
  RemoveInsuranceFailure get _value => super._value as RemoveInsuranceFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RemoveInsuranceFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RemoveInsuranceFailure implements RemoveInsuranceFailure {
  const _$RemoveInsuranceFailure({this.description = 'Error removing todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error removing todo')
  @override
  final String description;

  @override
  String toString() {
    return 'InsuranceFailure.removeFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveInsuranceFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $RemoveInsuranceFailureCopyWith<RemoveInsuranceFailure> get copyWith =>
      _$RemoveInsuranceFailureCopyWithImpl<RemoveInsuranceFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return removeFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveInsuranceFailure value),
    @required TResult addFailure(AddInsuranceFailure value),
    @required TResult removeFailure(RemoveInsuranceFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    return removeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveInsuranceFailure value),
    TResult addFailure(AddInsuranceFailure value),
    TResult removeFailure(RemoveInsuranceFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveInsuranceFailure implements InsuranceFailure {
  const factory RemoveInsuranceFailure({String description}) =
      _$RemoveInsuranceFailure;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $RemoveInsuranceFailureCopyWith<RemoveInsuranceFailure> get copyWith;
}
