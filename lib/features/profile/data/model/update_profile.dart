import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile.freezed.dart';
part 'update_profile.g.dart';

@freezed
class UpdateProfileRequest with _$UpdateProfileRequest {
  const factory UpdateProfileRequest({required String name, String? imagePath}) = _UpdateProfileRequest;

  const UpdateProfileRequest._();

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

  Future<FormData> toFormData() async {
    return FormData.fromMap({'name': name, if (imagePath != null && imagePath!.isNotEmpty) 'profile': await MultipartFile.fromFile(imagePath!)});
  }
}
