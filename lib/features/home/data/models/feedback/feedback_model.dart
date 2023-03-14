import 'package:freezed_annotation/freezed_annotation.dart';
part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    @Default(1) int id,
    @Default('') String name,
    @Default('') String message,
    @Default('') String createdAt,
  }) = _FeedBackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}
