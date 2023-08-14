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
import 'package:shared_preferences/shared_preferences.dart' as _i48;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i55;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i3;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i4;
import '../../../features/common/application/application.dart' as _i5;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i71;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i72;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i26;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i7;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i9;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i11;
import '../../../features/common/application/view_models/user_vm.dart' as _i25;
import '../../../features/common/domain/entities/event.dart' as _i27;
import '../../../features/common/domain/entities/user.dart' as _i24;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i56;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i13;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i49;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i53;
import '../../../features/common/domain/services/auth_service.dart' as _i58;
import '../../../features/common/infrastructure/providers/auth_string_provider.dart'
    as _i8;
import '../../../features/common/infrastructure/providers/date_time_beautify_provider.dart'
    as _i10;
import '../../../features/common/infrastructure/providers/duration_beautify_provider.dart'
    as _i12;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i57;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i14;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i50;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i54;
import '../../../features/home/application/application.dart' as _i33;
import '../../../features/home/application/blocs/home/home_bloc.dart' as _i59;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i64;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i66;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i68;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i70;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i65;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i42;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i29;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i32;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i20;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i23;
import '../../../features/home/application/providers/home_string_provider.dart'
    as _i15;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i67;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i38;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i46;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i51;
import '../../../features/home/application/view_models/event_vm.dart' as _i28;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i31;
import '../../../features/home/application/view_models/news_vm.dart' as _i19;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i22;
import '../../../features/home/domain/entities/news.dart' as _i18;
import '../../../features/home/domain/entities/news_category.dart' as _i30;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i36;
import '../../../features/home/domain/repositories/notification_repository.dart'
    as _i40;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i44;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i69;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i21;
import '../../../features/home/infrastructure/providers/home_string_provider.dart'
    as _i16;
import '../../../features/home/infrastructure/providers/news_list_string_provider.dart'
    as _i35;
import '../../../features/home/infrastructure/providers/news_string_provider.dart'
    as _i39;
import '../../../features/home/infrastructure/providers/onboarding_string_provider.dart'
    as _i47;
import '../../../features/home/infrastructure/providers/upcoming_events_string_provider.dart'
    as _i52;
import '../../../features/home/infrastructure/repositories/news_repository.dart'
    as _i37;
import '../../../features/home/infrastructure/repositories/notification_repository.dart'
    as _i41;
import '../../../features/home/infrastructure/repositories/onboarding_repository.dart'
    as _i45;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i60;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i62;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i61;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i63;
import '../../../utils/mapper.dart' as _i17;
import '../../coordinators/auth_coordinator.dart' as _i6;
import '../../coordinators/news_coordinator.dart' as _i34;
import '../../coordinators/onboarding_coordinator.dart' as _i43;
import '../modules/shared_prefs_module.dart' as _i73;

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
  gh.lazySingleton<_i5.AuthCoordinator>(() => _i6.ProdAuthCoordinator());
  gh.lazySingleton<_i7.AuthStringProvider>(() => _i8.ProdAuthStringProvider());
  gh.lazySingleton<_i9.DateTimeBeautifyProvider>(
      () => _i10.ProdDateTimeBeautifyProvider());
  gh.lazySingleton<_i11.DurationBeautifyProvider>(
      () => _i12.ProdDurationBeautifyProvider());
  gh.lazySingleton<_i13.EventRepository>(() => _i14.TestEventRepository());
  gh.lazySingleton<_i15.HomeStringProvider>(
      () => _i16.ProdHomeStringProvider());
  gh.lazySingleton<_i17.Mapper<_i18.News, _i19.NewsVM>>(
      () => _i20.NewsToNewsVMMapper(
            gh<_i9.DateTimeBeautifyProvider>(),
            gh<_i11.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i17.Mapper<_i21.OnboardingTip, _i22.OnboardingTipVM>>(
      () => _i23.OnboardingTipToOnboardingTipVMMapper());
  gh.lazySingleton<_i17.Mapper<_i24.User, _i25.UserVM>>(
      () => _i26.UserToUserVMMapper());
  gh.lazySingleton<_i17.Mapper<_i27.Event, _i28.EventVM>>(
      () => _i29.EventToEventVMMapper(gh<_i9.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i17.Mapper<_i30.NewsCategory, _i31.NewsCategoryVM>>(
      () => _i32.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i33.NewsCoordinator>(() => _i34.ProdNewsCoordinator());
  gh.lazySingleton<_i33.NewsListStringProvider>(
      () => _i35.ProdNewsListStringProvider());
  gh.lazySingleton<_i36.NewsRepository>(() => _i37.TestNewsRepository());
  gh.lazySingleton<_i38.NewsStringProvider>(
      () => _i39.ProdNewsStringProvider());
  gh.lazySingleton<_i40.NotificationRepository>(
      () => _i41.ProdNotificationRepository());
  gh.lazySingleton<_i42.OnboardingCoordinator>(
      () => _i43.ProdOnboardingCoordinator());
  gh.lazySingleton<_i44.OnboardingRepository>(
      () => _i45.ProdOnboardingRepository());
  gh.lazySingleton<_i46.OnboardingStringProvider>(
      () => _i47.ProdOnboardingStringProvider());
  await gh.factoryAsync<_i48.SharedPreferences>(
    () => sharedPrefsModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i49.TicketRepository>(() => _i50.TestTicketRepository());
  gh.lazySingleton<_i51.UpcomingEventsStringProvider>(
      () => _i52.ProdUpcomingEventsStringProvider());
  gh.lazySingleton<_i53.UserRepository>(() => _i54.TestUserRepository());
  gh.factory<_i55.AccountBloc>(() => _i55.AccountBloc(
        gh<_i53.UserRepository>(),
        gh<_i3.AccountStringProvider>(),
        gh<_i17.Mapper<_i24.User, _i25.UserVM>>(),
      ));
  gh.lazySingleton<_i56.AuthRepository>(
      () => _i57.TestAuthRepository(gh<_i48.SharedPreferences>()));
  gh.lazySingleton<_i58.AuthService>(
      () => _i58.AuthService(gh<_i56.AuthRepository>()));
  gh.factory<_i59.HomeBloc>(() => _i59.HomeBloc(
        gh<_i40.NotificationRepository>(),
        gh<_i15.HomeStringProvider>(),
      ));
  gh.factory<_i60.MyArchivedEventsBloc>(() => _i60.MyArchivedEventsBloc(
        gh<_i49.TicketRepository>(),
        gh<_i13.EventRepository>(),
        gh<_i61.MyArchivedEventsStringProvider>(),
        gh<_i17.Mapper<_i27.Event, _i28.EventVM>>(),
      ));
  gh.factory<_i62.MyEventsBloc>(() => _i62.MyEventsBloc(
        gh<_i49.TicketRepository>(),
        gh<_i13.EventRepository>(),
        gh<_i63.MyEventsStringProvider>(),
        gh<_i17.Mapper<_i27.Event, _i28.EventVM>>(),
      ));
  gh.factory<_i64.NewsBloc>(() => _i64.NewsBloc(
        gh<_i36.NewsRepository>(),
        gh<_i38.NewsStringProvider>(),
        gh<_i65.NewsCoordinator>(),
        gh<_i17.Mapper<_i18.News, _i19.NewsVM>>(),
      ));
  gh.factory<_i66.NewsListBloc>(() => _i66.NewsListBloc(
        gh<_i36.NewsRepository>(),
        gh<_i67.NewsListStringProvider>(),
        gh<_i17.Mapper<_i30.NewsCategory, _i31.NewsCategoryVM>>(),
        gh<_i17.Mapper<_i18.News, _i19.NewsVM>>(),
      ));
  gh.factory<_i68.OnboardingBloc>(() => _i68.OnboardingBloc(
        gh<_i44.OnboardingRepository>(),
        gh<_i17.Mapper<_i69.OnboardingTip, _i22.OnboardingTipVM>>(),
        gh<_i46.OnboardingStringProvider>(),
        gh<_i42.OnboardingCoordinator>(),
      ));
  gh.factory<_i70.UpcomingEventsBloc>(() => _i70.UpcomingEventsBloc(
        gh<_i13.EventRepository>(),
        gh<_i17.Mapper<_i27.Event, _i28.EventVM>>(),
        gh<_i51.UpcomingEventsStringProvider>(),
      ));
  gh.factory<_i71.AuthBloc>(() => _i71.AuthBloc(
        gh<_i58.AuthService>(),
        gh<_i7.AuthStringProvider>(),
        gh<_i72.AuthCoordinator>(),
      ));
  return getIt;
}

class _$SharedPrefsModule extends _i73.SharedPrefsModule {}
