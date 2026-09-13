import 'package:injectable/injectable.dart';
import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/profile/data/model/payment_history_response_model.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';

@injectable
class GetPaymentHistory {
  GetPaymentHistory(this.repository);

  final ProfileRepository repository;

  Future<ApiResponse<PaymentHistoryResponseModel>> call({int page = 1, int limit = 20}) {
    return repository.getPaymentHistory(page: page, limit: limit);
  }
}
