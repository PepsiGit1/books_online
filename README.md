# Books Online

Generated with flutter_blueprint using **BLoC** (Business Logic Component) pattern.

## Getting Started

```bash
flutter pub get
flutter run
script_generate: dart run build_runner build --delete-conflicting-outputs
script_generate_folder: mkdir -p lib/features/your_page/{data/{datasource,model,repository},domain/{repository,usecase},presentation/{cubit,page,widgets}}
script_generate_file: touch lib/features/profile/data/datasource/profile_remote_data_source.dart \
      lib/features/profile/data/repository/profile_repository_impl.dart \
      lib/features/profile/domain/repository/profile_repository.dart \
      lib/features/profile/domain/usecase/get_me_use_case.dart \
      lib/features/profile/presentation/cubit/profile_cubit.dart \
      lib/features/profile/presentation/cubit/profile_state.dart \
      lib/features/profile/presentation/page/profile_page.dart
```

- State management: bloc
- Platform target: mobile

## BLoC Features

- ✅ Event-driven architecture
- ✅ Clear separation of business logic and UI
- ✅ Reactive state management with streams
- ✅ Easy to test with bloc_test
- ✅ Predictable state transitions
- ✅ Great for complex apps and enterprise teams

