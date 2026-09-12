// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:books_online/core/api/api_client.dart' as _i964;
import 'package:books_online/core/config/app_config.dart' as _i560;
import 'package:books_online/core/config/register_module.dart' as _i687;
import 'package:books_online/core/routing/auth_guard.dart' as _i624;
import 'package:books_online/core/storage/local_storage.dart' as _i917;
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart'
    as _i291;
import 'package:books_online/features/auth/%20data/datasource/remote/auth_remote_datasource.dart'
    as _i946;
import 'package:books_online/features/auth/%20data/repository/auth_repository_impl.dart'
    as _i713;
import 'package:books_online/features/auth/domain/repository/auth_repository.dart'
    as _i882;
import 'package:books_online/features/auth/domain/usecase/login_usecase.dart'
    as _i355;
import 'package:books_online/features/auth/domain/usecase/refresh_token_usecase.dart'
    as _i647;
import 'package:books_online/features/auth/domain/usecase/register_usecase.dart'
    as _i80;
import 'package:books_online/features/auth/presentation/cubit/auth_cubit.dart'
    as _i63;
import 'package:books_online/features/home/data/data_source/remote/payment_realtime_data_source.dart'
    as _i322;
import 'package:books_online/features/home/data/data_source/remote/payment_remote_data_source.dart'
    as _i362;
import 'package:books_online/features/home/data/data_source/remote/remote_data_source.dart'
    as _i458;
import 'package:books_online/features/home/data/repository/book_repository_impl.dart'
    as _i75;
import 'package:books_online/features/home/data/repository/payment_repository_bank_impl.dart'
    as _i986;
import 'package:books_online/features/home/data/repository/payment_repository_impl.dart'
    as _i479;
import 'package:books_online/features/home/domain/repository/book_repository.dart'
    as _i827;
import 'package:books_online/features/home/domain/repository/payment_bank_repository.dart'
    as _i766;
import 'package:books_online/features/home/domain/repository/payment_repository.dart'
    as _i391;
import 'package:books_online/features/home/domain/usecase/book_detail_usecase.dart'
    as _i272;
import 'package:books_online/features/home/domain/usecase/book_usecase.dart'
    as _i598;
import 'package:books_online/features/home/domain/usecase/category_usecase.dart'
    as _i569;
import 'package:books_online/features/home/domain/usecase/create_paypal_order.dart'
    as _i403;
import 'package:books_online/features/home/domain/usecase/generate_bcel_qr_use_case.dart'
    as _i821;
import 'package:books_online/features/home/domain/usecase/generate_ib_qr_use_case.dart'
    as _i333;
import 'package:books_online/features/home/domain/usecase/generate_jdb_qr_use_case.dart'
    as _i882;
import 'package:books_online/features/home/domain/usecase/listen_payment_status_use_case.dart'
    as _i601;
import 'package:books_online/features/home/domain/usecase/subtitle_usecase.dart'
    as _i799;
import 'package:books_online/features/home/presentation/cubit/cubit_bank/payment_cubit.dart'
    as _i289;
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart'
    as _i141;
import 'package:books_online/features/profile/data/datasource/remote/profile_remote_data_source.dart'
    as _i826;
import 'package:books_online/features/profile/data/repository/profile_repository_impl.dart'
    as _i602;
import 'package:books_online/features/profile/domain/repository/profile_repository.dart'
    as _i760;
import 'package:books_online/features/profile/domain/usecase/change_password_usecase.dart'
    as _i661;
import 'package:books_online/features/profile/domain/usecase/get_me_use_case.dart'
    as _i695;
import 'package:books_online/features/profile/domain/usecase/get_my_payment_usecase.dart'
    as _i59;
import 'package:books_online/features/profile/domain/usecase/logout_usecase.dart'
    as _i788;
import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart'
    as _i768;
import 'package:books_online/features/search/data/data_source/remote/remote_data_source.dart'
    as _i635;
import 'package:books_online/features/search/data/repository_impl/search_repository_impl.dart'
    as _i372;
import 'package:books_online/features/search/domain/repository/search_repository.dart'
    as _i395;
import 'package:books_online/features/search/domain/usecase/search_usecase.dart'
    as _i464;
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart'
    as _i935;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    final appConfigModule = _$AppConfigModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    await gh.factoryAsync<_i917.LocalStorage>(
      () => registerModule.localStorage,
      preResolve: true,
    );
    gh.lazySingleton<_i560.AppConfig>(() => appConfigModule.appConfig);
    gh.lazySingleton<_i322.PaymentRealtimeDataSource>(
      () => _i322.PaymentRealtimeDataSourceImpl(),
    );
    gh.lazySingleton<_i291.AuthLocalDataSource>(
      () => _i291.AuthLocalDataSourceImpl(gh<_i917.LocalStorage>()),
    );
    gh.lazySingleton<_i601.ListenPaymentStatusUseCase>(
      () => _i601.ListenPaymentStatusUseCase(
        gh<_i322.PaymentRealtimeDataSource>(),
      ),
    );
    gh.lazySingleton<_i964.ApiClient>(
      () => _i964.ApiClient(gh<_i560.AppConfig>()),
    );
    gh.lazySingleton<_i624.AuthGuard>(
      () => _i624.AuthGuard(gh<_i291.AuthLocalDataSource>()),
    );
    gh.lazySingleton<_i362.PaymentRemoteDataSource>(
      () => _i362.PaymentRemoteDataSourceImpl(gh<_i964.ApiClient>()),
    );
    gh.lazySingleton<_i458.PaymentRemoteDataSource>(
      () => _i458.PaymentRemoteDataSourceImpl(gh<_i964.ApiClient>()),
    );
    gh.lazySingleton<_i826.ProfileRemoteDataSource>(
      () => _i826.ProfileRemoteDataSourceImpl(gh<_i964.ApiClient>()),
    );
    gh.lazySingleton<_i635.SearchRemoteDataSource>(
      () => _i635.SearchRemoteDataSourceImpl(gh<_i964.ApiClient>()),
    );
    gh.lazySingleton<_i946.AuthRemoteDataSource>(
      () => _i946.AuthRemoteDataSourceImpl(gh<_i964.ApiClient>()),
    );
    gh.lazySingleton<_i766.PaymentRepository>(
      () => _i986.PaymentRepositoryImpl(gh<_i362.PaymentRemoteDataSource>()),
    );
    gh.lazySingleton<_i760.ProfileRepository>(
      () => _i602.ProfileRepositoryImpl(
        gh<_i826.ProfileRemoteDataSource>(),
        gh<_i291.AuthLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i882.AuthRepository>(
      () => _i713.AuthRepositoryImpl(
        gh<_i946.AuthRemoteDataSource>(),
        gh<_i291.AuthLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i391.PaymentRepository>(
      () => _i479.PaymentRepositoryImpl(gh<_i458.PaymentRemoteDataSource>()),
    );
    gh.lazySingleton<_i395.SearchRepository>(
      () => _i372.SearchRepositoryImpl(gh<_i635.SearchRemoteDataSource>()),
    );
    gh.lazySingleton<_i827.BookRepository>(
      () => _i75.BookRepositoryImpl(gh<_i458.PaymentRemoteDataSource>()),
    );
    gh.lazySingleton<_i272.GetBookDetailUsecase>(
      () => _i272.GetBookDetailUsecase(gh<_i827.BookRepository>()),
    );
    gh.lazySingleton<_i569.GetAllCategoriesUsecase>(
      () => _i569.GetAllCategoriesUsecase(gh<_i827.BookRepository>()),
    );
    gh.lazySingleton<_i598.GetAllBooksUsecase>(
      () => _i598.GetAllBooksUsecase(gh<_i827.BookRepository>()),
    );
    gh.lazySingleton<_i799.GetBookSubtitleUsecase>(
      () => _i799.GetBookSubtitleUsecase(gh<_i827.BookRepository>()),
    );
    gh.lazySingleton<_i464.SearchBooksUseCase>(
      () => _i464.SearchBooksUseCase(gh<_i395.SearchRepository>()),
    );
    gh.lazySingleton<_i333.GenerateIbQrUseCase>(
      () => _i333.GenerateIbQrUseCase(gh<_i766.PaymentRepository>()),
    );
    gh.lazySingleton<_i882.GenerateJdbQrUseCase>(
      () => _i882.GenerateJdbQrUseCase(gh<_i766.PaymentRepository>()),
    );
    gh.lazySingleton<_i821.GenerateBcelQrUseCase>(
      () => _i821.GenerateBcelQrUseCase(gh<_i766.PaymentRepository>()),
    );
    gh.lazySingleton<_i695.GetMeUseCase>(
      () => _i695.GetMeUseCase(gh<_i760.ProfileRepository>()),
    );
    gh.lazySingleton<_i788.LogoutUseCase>(
      () => _i788.LogoutUseCase(gh<_i760.ProfileRepository>()),
    );
    gh.lazySingleton<_i661.ChangePasswordUseCase>(
      () => _i661.ChangePasswordUseCase(gh<_i760.ProfileRepository>()),
    );
    gh.factory<_i59.GetPaymentHistory>(
      () => _i59.GetPaymentHistory(gh<_i760.ProfileRepository>()),
    );
    gh.lazySingleton<_i647.RefreshTokenUseCase>(
      () => _i647.RefreshTokenUseCase(gh<_i882.AuthRepository>()),
    );
    gh.lazySingleton<_i80.RegisterUseCase>(
      () => _i80.RegisterUseCase(gh<_i882.AuthRepository>()),
    );
    gh.lazySingleton<_i355.LoginUseCase>(
      () => _i355.LoginUseCase(gh<_i882.AuthRepository>()),
    );
    gh.factory<_i403.CreatePaypalOrder>(
      () => _i403.CreatePaypalOrder(gh<_i391.PaymentRepository>()),
    );
    gh.factory<_i289.PaymentCubit>(
      () => _i289.PaymentCubit(
        gh<_i821.GenerateBcelQrUseCase>(),
        gh<_i882.GenerateJdbQrUseCase>(),
        gh<_i333.GenerateIbQrUseCase>(),
        gh<_i601.ListenPaymentStatusUseCase>(),
      ),
    );
    gh.factory<_i768.ProfileCubit>(
      () => _i768.ProfileCubit(
        gh<_i695.GetMeUseCase>(),
        gh<_i788.LogoutUseCase>(),
        gh<_i661.ChangePasswordUseCase>(),
        gh<_i59.GetPaymentHistory>(),
      ),
    );
    gh.factory<_i935.SearchCubit>(
      () => _i935.SearchCubit(
        gh<_i464.SearchBooksUseCase>(),
        gh<_i598.GetAllBooksUsecase>(),
        gh<_i569.GetAllCategoriesUsecase>(),
      ),
    );
    gh.factory<_i63.AuthCubit>(
      () => _i63.AuthCubit(
        gh<_i80.RegisterUseCase>(),
        gh<_i355.LoginUseCase>(),
        gh<_i647.RefreshTokenUseCase>(),
        gh<_i291.AuthLocalDataSource>(),
      ),
    );
    gh.factory<_i141.HomeCubit>(
      () => _i141.HomeCubit(
        gh<_i403.CreatePaypalOrder>(),
        gh<_i598.GetAllBooksUsecase>(),
        gh<_i272.GetBookDetailUsecase>(),
        gh<_i799.GetBookSubtitleUsecase>(),
        gh<_i569.GetAllCategoriesUsecase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i687.RegisterModule {}

class _$AppConfigModule extends _i560.AppConfigModule {}
