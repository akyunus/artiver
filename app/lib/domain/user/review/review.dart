import 'package:artiver/domain/core/core_interfaces.dart';
import 'package:artiver/domain/core/unique_id.dart';
import 'package:artiver/domain/user/review/review_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

/// a user's review on an article
@freezed
abstract class Review with _$Review implements IEntity {
  const factory Review({
    required UniqueId id,
    required ReviewBody body,
    required UniqueId articleId,
    required String date,
  }) = _Review;
}
