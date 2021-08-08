import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

/// Body text for a review of an article
class ReviewBody extends ValueObject<String> {
  ///
  factory ReviewBody(String input) {
    assert(input.isEmpty, '');
    return ReviewBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ReviewBody._(this.value);

  /// The lenght of a review text can not exceed [maxLength]
  static const maxLength = 1000;

  @override
  final Either<ValueFailure<String>, String> value;
}
