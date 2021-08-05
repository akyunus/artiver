import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core_interfaces.dart';
import '../../core/unique_id.dart';
import 'review_body.dart';

part 'review.freezed.dart';

/// a user's review on an article
@freezed
abstract class Review with _$Review implements IEntity {
  /// Factory
  const factory Review({
    required UniqueId id,
    required ReviewBody body,
    required UniqueId articleId,
    required String date,
  }) = _Review;
}
