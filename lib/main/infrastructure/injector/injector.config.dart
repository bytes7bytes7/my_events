// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i61;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i87;
import '../../../features/account/application/coordinators/account_coordinator.dart'
    as _i68;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i3;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i4;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i88;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i70;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i34;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i5;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i7;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i9;
import '../../../features/common/application/view_models/user_vm.dart' as _i33;
import '../../../features/common/domain/domain.dart' as _i89;
import '../../../features/common/domain/entities/event.dart' as _i20;
import '../../../features/common/domain/entities/user.dart' as _i32;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i72;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i11;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i62;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i66;
import '../../../features/common/domain/services/auth_service.dart' as _i74;
import '../../../features/common/infrastructure/providers/auth_string_provider.dart'
    as _i6;
import '../../../features/common/infrastructure/providers/date_time_beautify_provider.dart'
    as _i8;
import '../../../features/common/infrastructure/providers/duration_beautify_provider.dart'
    as _i10;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i73;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i12;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i63;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i67;
import '../../../features/home/application/application.dart' as _i47;
import '../../../features/home/application/blocs/home/home_bloc.dart' as _i75;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i81;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i82;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i84;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i86;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i43;
import '../../../features/home/application/coordinators/news_list_coordinator.dart'
    as _i45;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i55;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i22;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i25;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i28;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i31;
import '../../../features/home/application/providers/home_string_provider.dart'
    as _i15;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i83;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i51;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i59;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i64;
import '../../../features/home/application/view_models/event_vm.dart' as _i21;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i24;
import '../../../features/home/application/view_models/news_vm.dart' as _i27;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i30;
import '../../../features/home/domain/entities/news.dart' as _i26;
import '../../../features/home/domain/entities/news_category.dart' as _i23;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i49;
import '../../../features/home/domain/repositories/notification_repository.dart'
    as _i53;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i57;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i85;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i29;
import '../../../features/home/infrastructure/providers/home_string_provider.dart'
    as _i16;
import '../../../features/home/infrastructure/providers/news_list_string_provider.dart'
    as _i48;
import '../../../features/home/infrastructure/providers/news_string_provider.dart'
    as _i52;
import '../../../features/home/infrastructure/providers/onboarding_string_provider.dart'
    as _i60;
import '../../../features/home/infrastructure/providers/upcoming_events_string_provider.dart'
    as _i65;
import '../../../features/home/infrastructure/repositories/news_repository.dart'
    as _i50;
import '../../../features/home/infrastructure/repositories/notification_repository.dart'
    as _i54;
import '../../../features/home/infrastructure/repositories/onboarding_repository.dart'
    as _i58;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i78;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i80;
import '../../../features/my_events/application/coordinators/coordinators.dart'
    as _i79;
import '../../../features/my_events/application/coordinators/my_archived_events_coordinator.dart'
    as _i35;
import '../../../features/my_events/application/coordinators/my_events_coordinator.dart'
    as _i39;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i37;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i41;
import '../../../features/my_events/infrastructure/providers/my_archived_events_string_provider.dart'
    as _i38;
import '../../../features/my_events/infrastructure/providers/my_events_string_provider.dart'
    as _i42;
import '../../../utils/mapper.dart' as _i19;
import '../../application/application.dart' as _i17;
import '../../application/blocs/main/main_bloc.dart' as _i76;
import '../../application/coordinators/main_coordinator.dart' as _i77;
import '../coordinators/account_coordinator.dart' as _i69;
import '../coordinators/auth_coordinator.dart' as _i71;
import '../coordinators/main_coordinator.dart' as _i18;
import '../coordinators/my_archived_events_coordinator.dart' as _i36;
import '../coordinators/my_events_coordinator.dart' as _i40;
import '../coordinators/news_coordinator.dart' as _i44;
import '../coordinators/news_list_coordinator.dart' as _i46;
import '../coordinators/onboarding_coordinator.dart' as _i56;
import '../modules/shared_prefs_module.dart' as _i90;
import '../router/router.dart' as _i91;

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
  gh.lazySingleton<_i3.AccountStringProvider>(
      () => _i4.ProdAccountStringProvider());
  gh.lazySingleton<_i5.AuthStringProvider>(() => _i6.ProdAuthStringProvider());
  gh.lazySingleton<_i7.DateTimeBeautifyProvider>(
      () => _i8.ProdDateTimeBeautifyProvider());
  gh.lazySingleton<_i9.DurationBeautifyProvider>(
      () => _i10.ProdDurationBeautifyProvider());
  gh.lazySingleton<_i11.EventRepository>(() => _i12.TestEventRepository());
  gh.singleton<_i13.GlobalKey<_i13.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i14.GoRouter>(
      routerModule.router(gh<_i13.GlobalKey<_i13.NavigatorState>>()));
  gh.lazySingleton<_i15.HomeStringProvider>(
      () => _i16.ProdHomeStringProvider());
  gh.lazySingleton<_i17.MainCoordinator>(
      () => _i18.ProdMainCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i19.Mapper<_i20.Event, _i21.EventVM>>(
      () => _i22.EventToEventVMMapper(gh<_i7.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i19.Mapper<_i23.NewsCategory, _i24.NewsCategoryVM>>(
      () => _i25.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i19.Mapper<_i26.News, _i27.NewsVM>>(
      () => _i28.NewsToNewsVMMapper(
            gh<_i7.DateTimeBeautifyProvider>(),
            gh<_i9.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i19.Mapper<_i29.OnboardingTip, _i30.OnboardingTipVM>>(
      () => _i31.OnboardingTipToOnboardingTipVMMapper());
  gh.lazySingleton<_i19.Mapper<_i32.User, _i33.UserVM>>(
      () => _i34.UserToUserVMMapper());
  gh.lazySingleton<_i35.MyArchivedEventsCoordinator>(() =>
      _i36.ProdMyArchivedEventsCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i37.MyArchivedEventsStringProvider>(
      () => _i38.ProdMyArchivedEventsStringProvider());
  gh.lazySingleton<_i39.MyEventsCoordinator>(
      () => _i40.ProdMyEventsCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i41.MyEventsStringProvider>(
      () => _i42.ProdMyEventsStringProvider());
  gh.lazySingleton<_i43.NewsCoordinator>(
      () => _i44.ProdNewsCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i45.NewsListCoordinator>(
      () => _i46.ProdNewsListCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i47.NewsListStringProvider>(
      () => _i48.ProdNewsListStringProvider());
  gh.lazySingleton<_i49.NewsRepository>(() => _i50.TestNewsRepository());
  gh.lazySingleton<_i51.NewsStringProvider>(
      () => _i52.ProdNewsStringProvider());
  gh.lazySingleton<_i53.NotificationRepository>(
      () => _i54.ProdNotificationRepository());
  gh.lazySingleton<_i55.OnboardingCoordinator>(
      () => _i56.ProdOnboardingCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i57.OnboardingRepository>(
      () => _i58.ProdOnboardingRepository());
  gh.lazySingleton<_i59.OnboardingStringProvider>(
      () => _i60.ProdOnboardingStringProvider());
  await gh.factoryAsync<_i61.SharedPreferences>(
    () => sharedPrefsModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i62.TicketRepository>(() => _i63.TestTicketRepository());
  gh.lazySingleton<_i64.UpcomingEventsStringProvider>(
      () => _i65.ProdUpcomingEventsStringProvider());
  gh.lazySingleton<_i66.UserRepository>(() => _i67.TestUserRepository());
  gh.lazySingleton<_i68.AccountCoordinator>(
      () => _i69.ProdAccountCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i70.AuthCoordinator>(
      () => _i71.ProdAuthCoordinator(goRouter: gh<_i14.GoRouter>()));
  gh.lazySingleton<_i72.AuthRepository>(
      () => _i73.TestAuthRepository(gh<_i61.SharedPreferences>()));
  gh.lazySingleton<_i74.AuthService>(
      () => _i74.AuthService(gh<_i72.AuthRepository>()));
  gh.factory<_i75.HomeBloc>(() => _i75.HomeBloc(
        gh<_i53.NotificationRepository>(),
        gh<_i15.HomeStringProvider>(),
      ));
  gh.factory<_i76.MainBloc>(() => _i76.MainBloc(gh<_i77.MainCoordinator>()));
  gh.factory<_i78.MyArchivedEventsBloc>(() => _i78.MyArchivedEventsBloc(
        gh<_i62.TicketRepository>(),
        gh<_i11.EventRepository>(),
        gh<_i37.MyArchivedEventsStringProvider>(),
        gh<_i79.MyArchivedEventsCoordinator>(),
        gh<_i19.Mapper<_i20.Event, _i21.EventVM>>(),
      ));
  gh.factory<_i80.MyEventsBloc>(() => _i80.MyEventsBloc(
        gh<_i62.TicketRepository>(),
        gh<_i11.EventRepository>(),
        gh<_i41.MyEventsStringProvider>(),
        gh<_i39.MyEventsCoordinator>(),
        gh<_i19.Mapper<_i20.Event, _i21.EventVM>>(),
      ));
  gh.factory<_i81.NewsBloc>(() => _i81.NewsBloc(
        gh<_i49.NewsRepository>(),
        gh<_i51.NewsStringProvider>(),
        gh<_i43.NewsCoordinator>(),
        gh<_i19.Mapper<_i26.News, _i27.NewsVM>>(),
      ));
  gh.factory<_i82.NewsListBloc>(() => _i82.NewsListBloc(
        gh<_i49.NewsRepository>(),
        gh<_i83.NewsListStringProvider>(),
        gh<_i45.NewsListCoordinator>(),
        gh<_i19.Mapper<_i23.NewsCategory, _i24.NewsCategoryVM>>(),
        gh<_i19.Mapper<_i26.News, _i27.NewsVM>>(),
      ));
  gh.factory<_i84.OnboardingBloc>(() => _i84.OnboardingBloc(
        gh<_i57.OnboardingRepository>(),
        gh<_i19.Mapper<_i85.OnboardingTip, _i30.OnboardingTipVM>>(),
        gh<_i59.OnboardingStringProvider>(),
        gh<_i55.OnboardingCoordinator>(),
      ));
  gh.factory<_i86.UpcomingEventsBloc>(() => _i86.UpcomingEventsBloc(
        gh<_i11.EventRepository>(),
        gh<_i19.Mapper<_i20.Event, _i21.EventVM>>(),
        gh<_i64.UpcomingEventsStringProvider>(),
      ));
  gh.factory<_i87.AccountBloc>(() => _i87.AccountBloc(
        gh<_i74.AuthService>(),
        gh<_i66.UserRepository>(),
        gh<_i3.AccountStringProvider>(),
        gh<_i68.AccountCoordinator>(),
        gh<_i19.Mapper<_i32.User, _i33.UserVM>>(),
      ));
  gh.factory<_i88.AuthBloc>(() => _i88.AuthBloc(
        gh<_i89.AuthService>(),
        gh<_i5.AuthStringProvider>(),
        gh<_i70.AuthCoordinator>(),
      ));
  return getIt;
}

class _$SharedPrefsModule extends _i90.SharedPrefsModule {}

class _$RouterModule extends _i91.RouterModule {}
