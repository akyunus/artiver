import 'package:artiver/domain/core/value_failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

import 'value_objects.dart';

/// Universal Unique Id value object
class UniqueId extends ValueObject<String> {
  /// We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(Either.right(const Uuid().v1()));
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert(uniqueIdStr.isEmpty, 'UniqueId string can not be empty');
    return UniqueId._(
      right(uniqueIdStr),
    );
  }
  const UniqueId._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}
