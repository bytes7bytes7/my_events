// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i18;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i58;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i65;
import '../../../features/account/application/coordinators/account_coordinator.dart'
    as _i3;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i5;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i6;
import '../../../features/common/application/application.dart' as _i7;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i79;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i80;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i24;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i9;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i11;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i13;
import '../../../features/common/application/view_models/user_vm.dart' as _i23;
import '../../../features/common/domain/entities/event.dart' as _i28;
import '../../../features/common/domain/entities/user.dart' as _i22;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i66;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i15;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i59;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i63;
import '../../../features/common/domain/services/auth_service.dart' as _i68;
import '../../../features/common/infrastructure/providers/auth_string_provider.dart'
    as _i10;
import '../../../features/common/infrastructure/providers/date_time_beautify_provider.dart'
    as _i12;
import '../../../features/common/infrastructure/providers/duration_beautify_provider.dart'
    as _i14;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i67;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i16;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i60;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i64;
import '../../../features/home/application/application.dart' as _i41;
import '../../../features/home/application/blocs/home/home_bloc.dart' as _i69;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i72;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i74;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i76;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i78;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i73;
import '../../../features/home/application/coordinators/news_list_coordinator.dart'
    as _i43;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i52;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i30;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i33;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i36;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i27;
import '../../../features/home/application/providers/home_string_provider.dart'
    as _i19;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i75;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i48;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i56;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i61;
import '../../../features/home/application/view_models/event_vm.dart' as _i29;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i32;
import '../../../features/home/application/view_models/news_vm.dart' as _i35;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i26;
import '../../../features/home/domain/entities/news.dart' as _i34;
import '../../../features/home/domain/entities/news_category.dart' as _i31;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i46;
import '../../../features/home/domain/repositories/notification_repository.dart'
    as _i50;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i54;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i77;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i25;
import '../../../features/home/infrastructure/providers/home_string_provider.dart'
    as _i20;
import '../../../features/home/infrastructure/providers/news_list_string_provider.dart'
    as _i45;
import '../../../features/home/infrastructure/providers/news_string_provider.dart'
    as _i49;
import '../../../features/home/infrastructure/providers/onboarding_string_provider.dart'
    as _i57;
import '../../../features/home/infrastructure/providers/upcoming_events_string_provider.dart'
    as _i62;
import '../../../features/home/infrastructure/repositories/news_repository.dart'
    as _i47;
import '../../../features/home/infrastructure/repositories/notification_repository.dart'
    as _i51;
import '../../../features/home/infrastructure/repositories/onboarding_repository.dart'
    as _i55;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i70;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i71;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i37;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i39;
import '../../../features/my_events/infrastructure/providers/my_archived_events_string_provider.dart'
    as _i38;
import '../../../features/my_events/infrastructure/providers/my_events_string_provider.dart'
    as _i40;
import '../../../utils/mapper.dart' as _i21;
import '../../coordinators/account_coordinator.dart' as _i4;
import '../../coordinators/auth_coordinator.dart' as _i8;
import '../../coordinators/news_coordinator.dart' as _i42;
import '../../coordinators/news_list_coordinator.dart' as _i44;
import '../../coordinators/onboarding_coordinator.dart' as _i53;
import '../modules/shared_prefs_module.dart' as _i81;
import '../router/router.dart' as _i82;

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
  final routerModule = _$RouterModule();
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
  gh.singleton<_i17.GlobalKey<_i17.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i18.GoRouter>(
      routerModule.router(gh<_i17.GlobalKey<_i17.NavigatorState>>()));
  gh.lazySingleton<_i19.HomeStringProvider>(
      () => _i20.ProdHomeStringProvider());
  gh.lazySingleton<_i21.Mapper<_i22.User, _i23.UserVM>>(
      () => _i24.UserToUserVMMapper());
  gh.lazySingleton<_i21.Mapper<_i25.OnboardingTip, _i26.OnboardingTipVM>>(
      () => _i27.OnboardingTipToOnboardingTipVMMapper());
  gh.lazySingleton<_i21.Mapper<_i28.Event, _i29.EventVM>>(
      () => _i30.EventToEventVMMapper(gh<_i11.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i21.Mapper<_i31.NewsCategory, _i32.NewsCategoryVM>>(
      () => _i33.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i21.Mapper<_i34.News, _i35.NewsVM>>(
      () => _i36.NewsToNewsVMMapper(
            gh<_i11.DateTimeBeautifyProvider>(),
            gh<_i13.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i37.MyArchivedEventsStringProvider>(
      () => _i38.ProdMyArchivedEventsStringProvider());
  gh.lazySingleton<_i39.MyEventsStringProvider>(
      () => _i40.ProdMyEventsStringProvider());
  gh.lazySingleton<_i41.NewsCoordinator>(() => _i42.ProdNewsCoordinator());
  gh.lazySingleton<_i43.NewsListCoordinator>(
      () => _i44.ProdNewsListCoordinator());
  gh.lazySingleton<_i41.NewsListStringProvider>(
      () => _i45.ProdNewsListStringProvider());
  gh.lazySingleton<_i46.NewsRepository>(() => _i47.TestNewsRepository());
  gh.lazySingleton<_i48.NewsStringProvider>(
      () => _i49.ProdNewsStringProvider());
  gh.lazySingleton<_i50.NotificationRepository>(
      () => _i51.ProdNotificationRepository());
  gh.lazySingleton<_i52.OnboardingCoordinator>(
      () => _i53.ProdOnboardingCoordinator());
  gh.lazySingleton<_i54.OnboardingRepository>(
      () => _i55.ProdOnboardingRepository());
  gh.lazySingleton<_i56.OnboardingStringProvider>(
      () => _i57.ProdOnboardingStringProvider());
  await gh.factoryAsync<_i58.SharedPreferences>(
    () => sharedPrefsModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i59.TicketRepository>(() => _i60.TestTicketRepository());
  gh.lazySingleton<_i61.UpcomingEventsStringProvider>(
      () => _i62.ProdUpcomingEventsStringProvider());
  gh.lazySingleton<_i63.UserRepository>(() => _i64.TestUserRepository());
  gh.factory<_i65.AccountBloc>(() => _i65.AccountBloc(
        gh<_i63.UserRepository>(),
        gh<_i5.AccountStringProvider>(),
        gh<_i3.AccountCoordinator>(),
        gh<_i21.Mapper<_i22.User, _i23.UserVM>>(),
      ));
  gh.lazySingleton<_i66.AuthRepository>(
      () => _i67.TestAuthRepository(gh<_i58.SharedPreferences>()));
  gh.lazySingleton<_i68.AuthService>(
      () => _i68.AuthService(gh<_i66.AuthRepository>()));
  gh.factory<_i69.HomeBloc>(() => _i69.HomeBloc(
        gh<_i50.NotificationRepository>(),
        gh<_i19.HomeStringProvider>(),
      ));
  gh.factory<_i70.MyArchivedEventsBloc>(() => _i70.MyArchivedEventsBloc(
        gh<_i59.TicketRepository>(),
        gh<_i15.EventRepository>(),
        gh<_i37.MyArchivedEventsStringProvider>(),
        gh<_i21.Mapper<_i28.Event, _i29.EventVM>>(),
      ));
  gh.factory<_i71.MyEventsBloc>(() => _i71.MyEventsBloc(
        gh<_i59.TicketRepository>(),
        gh<_i15.EventRepository>(),
        gh<_i39.MyEventsStringProvider>(),
        gh<_i21.Mapper<_i28.Event, _i29.EventVM>>(),
      ));
  gh.factory<_i72.NewsBloc>(() => _i72.NewsBloc(
        gh<_i46.NewsRepository>(),
        gh<_i48.NewsStringProvider>(),
        gh<_i73.NewsCoordinator>(),
        gh<_i21.Mapper<_i34.News, _i35.NewsVM>>(),
      ));
  gh.factory<_i74.NewsListBloc>(() => _i74.NewsListBloc(
        gh<_i46.NewsRepository>(),
        gh<_i75.NewsListStringProvider>(),
        gh<_i43.NewsListCoordinator>(),
        gh<_i21.Mapper<_i31.NewsCategory, _i32.NewsCategoryVM>>(),
        gh<_i21.Mapper<_i34.News, _i35.NewsVM>>(),
      ));
  gh.factory<_i76.OnboardingBloc>(() => _i76.OnboardingBloc(
        gh<_i54.OnboardingRepository>(),
        gh<_i21.Mapper<_i77.OnboardingTip, _i26.OnboardingTipVM>>(),
        gh<_i56.OnboardingStringProvider>(),
        gh<_i52.OnboardingCoordinator>(),
      ));
  gh.factory<_i78.UpcomingEventsBloc>(() => _i78.UpcomingEventsBloc(
        gh<_i15.EventRepository>(),
        gh<_i21.Mapper<_i28.Event, _i29.EventVM>>(),
        gh<_i61.UpcomingEventsStringProvider>(),
      ));
  gh.factory<_i79.AuthBloc>(() => _i79.AuthBloc(
        gh<_i68.AuthService>(),
        gh<_i9.AuthStringProvider>(),
        gh<_i80.AuthCoordinator>(),
      ));
  return getIt;
}

class _$SharedPrefsModule extends _i81.SharedPrefsModule {}

class _$RouterModule extends _i82.RouterModule {}
