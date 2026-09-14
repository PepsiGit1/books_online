import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/profile/data/model/payment_history_model.dart';
import 'package:books_online/features/profile/data/model/payment_history_response_model.dart';
import 'package:books_online/features/profile/data/model/payment_meta_model.dart';
import 'package:books_online/features/profile/data/model/update_profile.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiResponse<UserModel>> getMe();
  Future<ApiResponse<bool>> logout();
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword});
  Future<ApiResponse<PaymentHistoryResponseModel>> getPaymentHistory({int page = 1, int limit = 20});
  Future<ApiResponse<UserModel>> updateProfile({required String name, String? imagePath});
  Future<ApiResponse<List<BookModel>>> getMyBooks({required String userId});
}

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiClient apiClient;

  ProfileRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ApiResponse<UserModel>> getMe() async {
    try {
      final response = await apiClient.get('/user/me');

      final data = response.data['data'];

      return ApiResponse.success(UserModel.fromJson(data as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<bool>> logout() async {
    try {
      await apiClient.post(ApiEndpoints.logout);

      return ApiResponse.success(true);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword}) async {
    try {
      await apiClient.put(ApiEndpoints.changePassword, data: {'currentPassword': currentPassword, 'newPassword': newPassword});

      return ApiResponse.success(true);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PaymentHistoryResponseModel>> getPaymentHistory({int page = 1, int limit = 20}) async {
    try {
      final response = await apiClient.get(ApiEndpoints.myPayment, queryParameters: {'page': page, 'limit': limit});

      final data = response.data['data'] as List;

      final meta = response.data['meta'] as Map<String, dynamic>;

      final result = PaymentHistoryResponseModel(
        data: data.map((item) => PaymentHistoryModel.fromJson(item as Map<String, dynamic>)).toList(),
        meta: PaymentMetaModel.fromJson(meta),
      );

      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<UserModel>> updateProfile({required String name, String? imagePath}) async {
    try {
      final request = UpdateProfileRequest(name: name, imagePath: imagePath);

      final response = await apiClient.put(ApiEndpoints.updateProfile, data: await request.toFormData());

      print('UPDATE RESPONSE: ${response.data}');

      final user = UserModel.fromJson(response.data['data']);

      return ApiResponse.success(user);
    } catch (e) {
      print('UPDATE ERROR: $e');

      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<List<BookModel>>> getMyBooks({required String userId}) async {
    try {
      final response = await apiClient.get('${ApiEndpoints.myLibrary}$userId');

      final data = response.data['data'] as List;

      final books = data.map((json) => BookModel.fromJson(json as Map<String, dynamic>)).toList();

      return ApiResponse.success(books);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
