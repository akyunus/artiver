import 'package:artiver/domain/core/core_interfaces.dart';
import 'package:artiver/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review implements IEntity {
  const factory Review({
    required UniqueId id,
    required String body,
    required String articleId,
    required String date,
  }) = _Review;
}
