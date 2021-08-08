import 'unique_id.dart';

/// Validatable Interface for value objects
// ignore: one_member_abstracts
abstract class IValidatable {
  /// isValid processes the validate function
  bool isValid();
}

/// Entity Interface: every Entitiy must have an id
abstract class IEntity {
  /// [UniqueId] genereted with Uuid
  UniqueId get id;
}
