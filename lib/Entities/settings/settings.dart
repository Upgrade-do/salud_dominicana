import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {

const factory Settings ({
  @Default(false) bool allowNewsletter,
  @Default(false) bool allowNotifications,
}) = _Settings;

factory Settings.fromJson(Map<String, dynamic> json) =>
_$SettingsFromJson(json);
}