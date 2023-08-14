// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i40;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i47;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i3;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i4;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i5;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i8;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i14;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i7;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i18;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i25;
import '../../../features/common/application/view_models/user_vm.dart' as _i13;
import '../../../features/common/domain/entities/event.dart' as _i15;
import '../../../features/common/domain/entities/user.dart' as _i12;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i48;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i9;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i41;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i45;
import '../../../features/common/domain/services/auth_service.dart' as _i6;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i49;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i10;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i42;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i46;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i29;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i33;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i35;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i43;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i32;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i39;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i17;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i21;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i24;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i28;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i34;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i31;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i38;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i44;
import '../../../features/home/application/view_models/event_vm.dart' as _i16;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i20;
import '../../../features/home/application/view_models/news_vm.dart' as _i23;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i27;
import '../../../features/home/domain/entities/news.dart' as _i22;
import '../../../features/home/domain/entities/news_category.dart' as _i19;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i30;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i36;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i37;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i26;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i50;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i52;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i51;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i53;
import '../../../utils/mapper.dart' as _i11;
import '../modules/shared_prefs_module.dart' as _i54;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.lazySingleton<_i3.AccountStringProvider>(
      () => _i4.ProdAccountStringProvider());
  gh.factory<_i5.AuthBloc>(() => _i5.AuthBloc(
        gh<_i6.AuthService>(),
        gh<_i7.AuthStringProvider>(),
        gh<_i8.AuthCoordinator>(),
      ));
  gh.lazySingleton<_i9.EventRepository>(() => _i10.TestEventRepository());
  gh.lazySingleton<_i11.Mapper<_i12.User, _i13.UserVM>>(
      () => _i14.UserToUserVMMapper());
  gh.lazySingleton<_i11.Mapper<_i15.Event, _i16.EventVM>>(
      () => _i17.EventToEventVMMapper(gh<_i18.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i11.Mapper<_i19.NewsCategory, _i20.NewsCategoryVM>>(
      () => _i21.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i11.Mapper<_i22.News, _i23.NewsVM>>(
      () => _i24.NewsToNewsVMMapper(
            gh<_i18.DateTimeBeautifyProvider>(),
            gh<_i25.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i11.Mapper<_i26.OnboardingTip, _i27.OnboardingTipVM>>(
      () => _i28.OnboardingTipToOnboardingTipVMMapper());
  gh.factory<_i29.NewsBloc>(() => _i29.NewsBloc(
        gh<_i30.NewsRepository>(),
        gh<_i31.NewsStringProvider>(),
        gh<_i32.NewsCoordinator>(),
        gh<_i11.Mapper<_i22.News, _i23.NewsVM>>(),
      ));
  gh.factory<_i33.NewsListBloc>(() => _i33.NewsListBloc(
        gh<_i30.NewsRepository>(),
        gh<_i34.NewsListStringProvider>(),
        gh<_i11.Mapper<_i19.NewsCategory, _i20.NewsCategoryVM>>(),
        gh<_i11.Mapper<_i22.News, _i23.NewsVM>>(),
      ));
  gh.factory<_i35.OnboardingBloc>(() => _i35.OnboardingBloc(
        gh<_i36.OnboardingRepository>(),
        gh<_i11.Mapper<_i37.OnboardingTip, _i27.OnboardingTipVM>>(),
        gh<_i38.OnboardingStringProvider>(),
        gh<_i39.OnboardingCoordinator>(),
      ));
  await gh.factoryAsync<_i40.SharedPreferences>(
    () => sharedPrefsModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i41.TicketRepository>(() => _i42.TestTicketRepository());
  gh.factory<_i43.UpcomingEventsBloc>(() => _i43.UpcomingEventsBloc(
        gh<_i9.EventRepository>(),
        gh<_i11.Mapper<_i15.Event, _i16.EventVM>>(),
        gh<_i44.UpcomingEventsStringProvider>(),
      ));
  gh.lazySingleton<_i45.UserRepository>(() => _i46.TestUserRepository());
  gh.factory<_i47.AccountBloc>(() => _i47.AccountBloc(
        gh<_i45.UserRepository>(),
        gh<_i3.AccountStringProvider>(),
        gh<_i11.Mapper<_i12.User, _i13.UserVM>>(),
      ));
  gh.lazySingleton<_i48.AuthRepository>(
      () => _i49.TestAuthRepository(gh<_i40.SharedPreferences>()));
  gh.factory<_i50.MyArchivedEventsBloc>(() => _i50.MyArchivedEventsBloc(
        gh<_i41.TicketRepository>(),
        gh<_i9.EventRepository>(),
        gh<_i51.MyArchivedEventsStringProvider>(),
        gh<_i11.Mapper<_i15.Event, _i16.EventVM>>(),
      ));
  gh.factory<_i52.MyEventsBloc>(() => _i52.MyEventsBloc(
        gh<_i41.TicketRepository>(),
        gh<_i9.EventRepository>(),
        gh<_i53.MyEventsStringProvider>(),
        gh<_i11.Mapper<_i15.Event, _i16.EventVM>>(),
      ));
  return getIt;
}

class _$SharedPrefsModule extends _i54.SharedPrefsModule {}
