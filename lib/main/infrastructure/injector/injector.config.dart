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
import 'package:shared_preferences/shared_preferences.dart' as _i56;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i63;
import '../../../features/account/application/coordinators/account_coordinator.dart'
    as _i3;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i5;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i6;
import '../../../features/common/application/application.dart' as _i7;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i77;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i78;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i22;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i9;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i11;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i13;
import '../../../features/common/application/view_models/user_vm.dart' as _i21;
import '../../../features/common/domain/entities/event.dart' as _i23;
import '../../../features/common/domain/entities/user.dart' as _i20;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i64;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i15;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i57;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i61;
import '../../../features/common/domain/services/auth_service.dart' as _i66;
import '../../../features/common/infrastructure/providers/auth_string_provider.dart'
    as _i10;
import '../../../features/common/infrastructure/providers/date_time_beautify_provider.dart'
    as _i12;
import '../../../features/common/infrastructure/providers/duration_beautify_provider.dart'
    as _i14;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i65;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i16;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i58;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i62;
import '../../../features/home/application/application.dart' as _i39;
import '../../../features/home/application/blocs/home/home_bloc.dart' as _i67;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i70;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i72;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i74;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i76;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i71;
import '../../../features/home/application/coordinators/news_list_coordinator.dart'
    as _i41;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i50;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i25;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i28;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i31;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i34;
import '../../../features/home/application/providers/home_string_provider.dart'
    as _i17;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i73;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i46;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i54;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i59;
import '../../../features/home/application/view_models/event_vm.dart' as _i24;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i27;
import '../../../features/home/application/view_models/news_vm.dart' as _i30;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i33;
import '../../../features/home/domain/entities/news.dart' as _i29;
import '../../../features/home/domain/entities/news_category.dart' as _i26;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i44;
import '../../../features/home/domain/repositories/notification_repository.dart'
    as _i48;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i52;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i75;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i32;
import '../../../features/home/infrastructure/providers/home_string_provider.dart'
    as _i18;
import '../../../features/home/infrastructure/providers/news_list_string_provider.dart'
    as _i43;
import '../../../features/home/infrastructure/providers/news_string_provider.dart'
    as _i47;
import '../../../features/home/infrastructure/providers/onboarding_string_provider.dart'
    as _i55;
import '../../../features/home/infrastructure/providers/upcoming_events_string_provider.dart'
    as _i60;
import '../../../features/home/infrastructure/repositories/news_repository.dart'
    as _i45;
import '../../../features/home/infrastructure/repositories/notification_repository.dart'
    as _i49;
import '../../../features/home/infrastructure/repositories/onboarding_repository.dart'
    as _i53;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i68;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i69;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i35;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i37;
import '../../../features/my_events/infrastructure/providers/my_archived_events_string_provider.dart'
    as _i36;
import '../../../features/my_events/infrastructure/providers/my_events_string_provider.dart'
    as _i38;
import '../../../utils/mapper.dart' as _i19;
import '../../coordinators/account_coordinator.dart' as _i4;
import '../../coordinators/auth_coordinator.dart' as _i8;
import '../../coordinators/news_coordinator.dart' as _i40;
import '../../coordinators/news_list_coordinator.dart' as _i42;
import '../../coordinators/onboarding_coordinator.dart' as _i51;
import '../modules/shared_prefs_module.dart' as _i79;

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
  gh.lazySingleton<_i3.AccountCoordinator>(() => _i4.ProdAccountCoordinator());
  gh.lazySingleton<_i5.AccountStringProvider>(
      () => _i6.ProdAccountStringProvider());
  gh.lazySingleton<_i7.AuthCoordinator>(() => _i8.ProdAuthCoordinator());
  gh.lazySingleton<_i9.AuthStringProvider>(() => _i10.ProdAuthStringProvider());
  gh.lazySingleton<_i11.DateTimeBeautifyProvider>(
      () => _i12.ProdDateTimeBeautifyProvider());
  gh.lazySingleton<_i13.DurationBeautifyProvider>(
      () => _i14.ProdDurationBeautifyProvider());
  gh.lazySingleton<_i15.EventRepository>(() => _i16.TestEventRepository());
  gh.lazySingleton<_i17.HomeStringProvider>(
      () => _i18.ProdHomeStringProvider());
  gh.lazySingleton<_i19.Mapper<_i20.User, _i21.UserVM>>(
      () => _i22.UserToUserVMMapper());
  gh.lazySingleton<_i19.Mapper<_i23.Event, _i24.EventVM>>(
      () => _i25.EventToEventVMMapper(gh<_i11.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i19.Mapper<_i26.NewsCategory, _i27.NewsCategoryVM>>(
      () => _i28.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i19.Mapper<_i29.News, _i30.NewsVM>>(
      () => _i31.NewsToNewsVMMapper(
            gh<_i11.DateTimeBeautifyProvider>(),
            gh<_i13.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i19.Mapper<_i32.OnboardingTip, _i33.OnboardingTipVM>>(
      () => _i34.OnboardingTipToOnboardingTipVMMapper());
  gh.lazySingleton<_i35.MyArchivedEventsStringProvider>(
      () => _i36.ProdMyArchivedEventsStringProvider());
  gh.lazySingleton<_i37.MyEventsStringProvider>(
      () => _i38.ProdMyEventsStringProvider());
  gh.lazySingleton<_i39.NewsCoordinator>(() => _i40.ProdNewsCoordinator());
  gh.lazySingleton<_i41.NewsListCoordinator>(
      () => _i42.ProdNewsListCoordinator());
  gh.lazySingleton<_i39.NewsListStringProvider>(
      () => _i43.ProdNewsListStringProvider());
  gh.lazySingleton<_i44.NewsRepository>(() => _i45.TestNewsRepository());
  gh.lazySingleton<_i46.NewsStringProvider>(
      () => _i47.ProdNewsStringProvider());
  gh.lazySingleton<_i48.NotificationRepository>(
      () => _i49.ProdNotificationRepository());
  gh.lazySingleton<_i50.OnboardingCoordinator>(
      () => _i51.ProdOnboardingCoordinator());
  gh.lazySingleton<_i52.OnboardingRepository>(
      () => _i53.ProdOnboardingRepository());
  gh.lazySingleton<_i54.OnboardingStringProvider>(
      () => _i55.ProdOnboardingStringProvider());
  await gh.factoryAsync<_i56.SharedPreferences>(
    () => sharedPrefsModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i57.TicketRepository>(() => _i58.TestTicketRepository());
  gh.lazySingleton<_i59.UpcomingEventsStringProvider>(
      () => _i60.ProdUpcomingEventsStringProvider());
  gh.lazySingleton<_i61.UserRepository>(() => _i62.TestUserRepository());
  gh.factory<_i63.AccountBloc>(() => _i63.AccountBloc(
        gh<_i61.UserRepository>(),
        gh<_i5.AccountStringProvider>(),
        gh<_i3.AccountCoordinator>(),
        gh<_i19.Mapper<_i20.User, _i21.UserVM>>(),
      ));
  gh.lazySingleton<_i64.AuthRepository>(
      () => _i65.TestAuthRepository(gh<_i56.SharedPreferences>()));
  gh.lazySingleton<_i66.AuthService>(
      () => _i66.AuthService(gh<_i64.AuthRepository>()));
  gh.factory<_i67.HomeBloc>(() => _i67.HomeBloc(
        gh<_i48.NotificationRepository>(),
        gh<_i17.HomeStringProvider>(),
      ));
  gh.factory<_i68.MyArchivedEventsBloc>(() => _i68.MyArchivedEventsBloc(
        gh<_i57.TicketRepository>(),
        gh<_i15.EventRepository>(),
        gh<_i35.MyArchivedEventsStringProvider>(),
        gh<_i19.Mapper<_i23.Event, _i24.EventVM>>(),
      ));
  gh.factory<_i69.MyEventsBloc>(() => _i69.MyEventsBloc(
        gh<_i57.TicketRepository>(),
        gh<_i15.EventRepository>(),
        gh<_i37.MyEventsStringProvider>(),
        gh<_i19.Mapper<_i23.Event, _i24.EventVM>>(),
      ));
  gh.factory<_i70.NewsBloc>(() => _i70.NewsBloc(
        gh<_i44.NewsRepository>(),
        gh<_i46.NewsStringProvider>(),
        gh<_i71.NewsCoordinator>(),
        gh<_i19.Mapper<_i29.News, _i30.NewsVM>>(),
      ));
  gh.factory<_i72.NewsListBloc>(() => _i72.NewsListBloc(
        gh<_i44.NewsRepository>(),
        gh<_i73.NewsListStringProvider>(),
        gh<_i41.NewsListCoordinator>(),
        gh<_i19.Mapper<_i26.NewsCategory, _i27.NewsCategoryVM>>(),
        gh<_i19.Mapper<_i29.News, _i30.NewsVM>>(),
      ));
  gh.factory<_i74.OnboardingBloc>(() => _i74.OnboardingBloc(
        gh<_i52.OnboardingRepository>(),
        gh<_i19.Mapper<_i75.OnboardingTip, _i33.OnboardingTipVM>>(),
        gh<_i54.OnboardingStringProvider>(),
        gh<_i50.OnboardingCoordinator>(),
      ));
  gh.factory<_i76.UpcomingEventsBloc>(() => _i76.UpcomingEventsBloc(
        gh<_i15.EventRepository>(),
        gh<_i19.Mapper<_i23.Event, _i24.EventVM>>(),
        gh<_i59.UpcomingEventsStringProvider>(),
      ));
  gh.factory<_i77.AuthBloc>(() => _i77.AuthBloc(
        gh<_i66.AuthService>(),
        gh<_i9.AuthStringProvider>(),
        gh<_i78.AuthCoordinator>(),
      ));
  return getIt;
}

class _$SharedPrefsModule extends _i79.SharedPrefsModule {}
