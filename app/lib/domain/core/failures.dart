import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Immutable class that handles some common value failures*.
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  /// ValueFailure for an empty value
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  /// ValueFailure for a value exceeding maximum allowed length
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  /// ValueFailure for a value is not in a valid email format
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  /// ValueFailure for short Password
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
