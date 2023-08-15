// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i17;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/account/application/blocs/account/account_bloc.dart'
    as _i86;
import '../../../features/account/application/coordinators/account_coordinator.dart'
    as _i70;
import '../../../features/account/application/providers/account_string_provider.dart'
    as _i3;
import '../../../features/account/infrastructure/providers/account_string_provider.dart'
    as _i4;
import '../../../features/common/application/blocs/auth/auth_bloc.dart' as _i87;
import '../../../features/common/application/coordinators/auth_coordinator.dart'
    as _i72;
import '../../../features/common/application/mappers/user_to_user_vm_mapper.dart'
    as _i37;
import '../../../features/common/application/providers/auth_string_provider.dart'
    as _i8;
import '../../../features/common/application/providers/date_time_beautify_provider.dart'
    as _i10;
import '../../../features/common/application/providers/duration_beautify_provider.dart'
    as _i12;
import '../../../features/common/application/view_models/user_vm.dart' as _i36;
import '../../../features/common/domain/domain.dart' as _i88;
import '../../../features/common/domain/entities/event.dart' as _i23;
import '../../../features/common/domain/entities/user.dart' as _i35;
import '../../../features/common/domain/repositories/auth_repository.dart'
    as _i5;
import '../../../features/common/domain/repositories/event_repository.dart'
    as _i14;
import '../../../features/common/domain/repositories/ticket_repository.dart'
    as _i64;
import '../../../features/common/domain/repositories/user_repository.dart'
    as _i68;
import '../../../features/common/domain/services/auth_service.dart' as _i7;
import '../../../features/common/infrastructure/providers/auth_string_provider.dart'
    as _i9;
import '../../../features/common/infrastructure/providers/date_time_beautify_provider.dart'
    as _i11;
import '../../../features/common/infrastructure/providers/duration_beautify_provider.dart'
    as _i13;
import '../../../features/common/infrastructure/repositories/auth_repository.dart'
    as _i6;
import '../../../features/common/infrastructure/repositories/event_repository.dart'
    as _i15;
import '../../../features/common/infrastructure/repositories/ticket_repository.dart'
    as _i65;
import '../../../features/common/infrastructure/repositories/user_repository.dart'
    as _i69;
import '../../../features/home/application/application.dart' as _i50;
import '../../../features/home/application/blocs/home/home_bloc.dart' as _i74;
import '../../../features/home/application/blocs/news/news_bloc.dart' as _i80;
import '../../../features/home/application/blocs/news_list/news_list_bloc.dart'
    as _i81;
import '../../../features/home/application/blocs/onboarding/onboarding_bloc.dart'
    as _i83;
import '../../../features/home/application/blocs/upcoming_events/upcoming_events_bloc.dart'
    as _i85;
import '../../../features/home/application/coordinators/news_coordinator.dart'
    as _i46;
import '../../../features/home/application/coordinators/news_list_coordinator.dart'
    as _i48;
import '../../../features/home/application/coordinators/onboarding_coordinator.dart'
    as _i58;
import '../../../features/home/application/mappers/event_to_event_vm_mapper.dart'
    as _i25;
import '../../../features/home/application/mappers/news_category_to_news_category_vm_mapper.dart'
    as _i28;
import '../../../features/home/application/mappers/news_to_news_vm_mapper.dart'
    as _i31;
import '../../../features/home/application/mappers/onboarding_tip_to_onboarding_tip_vm_mapper.dart'
    as _i34;
import '../../../features/home/application/providers/home_string_provider.dart'
    as _i18;
import '../../../features/home/application/providers/news_list_string_provider.dart'
    as _i82;
import '../../../features/home/application/providers/news_string_provider.dart'
    as _i54;
import '../../../features/home/application/providers/onboarding_string_provider.dart'
    as _i62;
import '../../../features/home/application/providers/upcoming_events_string_provider.dart'
    as _i66;
import '../../../features/home/application/view_models/event_vm.dart' as _i24;
import '../../../features/home/application/view_models/news_category_vm.dart'
    as _i27;
import '../../../features/home/application/view_models/news_vm.dart' as _i30;
import '../../../features/home/application/view_models/onboarding_tip_vm.dart'
    as _i33;
import '../../../features/home/domain/entities/news.dart' as _i29;
import '../../../features/home/domain/entities/news_category.dart' as _i26;
import '../../../features/home/domain/repositories/news_repository.dart'
    as _i52;
import '../../../features/home/domain/repositories/notification_repository.dart'
    as _i56;
import '../../../features/home/domain/repositories/onboarding_repository.dart'
    as _i60;
import '../../../features/home/domain/value_objects/onboarding_tip.dart'
    as _i84;
import '../../../features/home/domain/value_objects/value_objects.dart' as _i32;
import '../../../features/home/infrastructure/providers/home_string_provider.dart'
    as _i19;
import '../../../features/home/infrastructure/providers/news_list_string_provider.dart'
    as _i51;
import '../../../features/home/infrastructure/providers/news_string_provider.dart'
    as _i55;
import '../../../features/home/infrastructure/providers/onboarding_string_provider.dart'
    as _i63;
import '../../../features/home/infrastructure/providers/upcoming_events_string_provider.dart'
    as _i67;
import '../../../features/home/infrastructure/repositories/news_repository.dart'
    as _i53;
import '../../../features/home/infrastructure/repositories/notification_repository.dart'
    as _i57;
import '../../../features/home/infrastructure/repositories/onboarding_repository.dart'
    as _i61;
import '../../../features/my_events/application/blocs/my_archived_events/my_archived_events_bloc.dart'
    as _i77;
import '../../../features/my_events/application/blocs/my_events/my_events_bloc.dart'
    as _i79;
import '../../../features/my_events/application/coordinators/coordinators.dart'
    as _i78;
import '../../../features/my_events/application/coordinators/my_archived_events_coordinator.dart'
    as _i38;
import '../../../features/my_events/application/coordinators/my_events_coordinator.dart'
    as _i42;
import '../../../features/my_events/application/providers/my_archived_events_string_provider.dart'
    as _i40;
import '../../../features/my_events/application/providers/my_events_string_provider.dart'
    as _i44;
import '../../../features/my_events/infrastructure/providers/my_archived_events_string_provider.dart'
    as _i41;
import '../../../features/my_events/infrastructure/providers/my_events_string_provider.dart'
    as _i45;
import '../../../utils/mapper.dart' as _i22;
import '../../application/application.dart' as _i20;
import '../../application/blocs/main/main_bloc.dart' as _i75;
import '../../application/coordinators/main_coordinator.dart' as _i76;
import '../coordinators/account_coordinator.dart' as _i71;
import '../coordinators/auth_coordinator.dart' as _i73;
import '../coordinators/main_coordinator.dart' as _i21;
import '../coordinators/my_archived_events_coordinator.dart' as _i39;
import '../coordinators/my_events_coordinator.dart' as _i43;
import '../coordinators/news_coordinator.dart' as _i47;
import '../coordinators/news_list_coordinator.dart' as _i49;
import '../coordinators/onboarding_coordinator.dart' as _i59;
import '../router/router.dart' as _i89;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final routerModule = _$RouterModule();
  gh.lazySingleton<_i3.AccountStringProvider>(
      () => _i4.ProdAccountStringProvider());
  gh.lazySingleton<_i5.AuthRepository>(() => _i6.TestAuthRepository());
  gh.lazySingleton<_i7.AuthService>(
      () => _i7.AuthService(gh<_i5.AuthRepository>()));
  gh.lazySingleton<_i8.AuthStringProvider>(() => _i9.ProdAuthStringProvider());
  gh.lazySingleton<_i10.DateTimeBeautifyProvider>(
      () => _i11.ProdDateTimeBeautifyProvider());
  gh.lazySingleton<_i12.DurationBeautifyProvider>(
      () => _i13.ProdDurationBeautifyProvider());
  gh.lazySingleton<_i14.EventRepository>(() => _i15.TestEventRepository());
  gh.singleton<_i16.GlobalKey<_i16.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i17.GoRouter>(
      routerModule.router(gh<_i16.GlobalKey<_i16.NavigatorState>>()));
  gh.lazySingleton<_i18.HomeStringProvider>(
      () => _i19.ProdHomeStringProvider());
  gh.lazySingleton<_i20.MainCoordinator>(
      () => _i21.ProdMainCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i22.Mapper<_i23.Event, _i24.EventVM>>(
      () => _i25.EventToEventVMMapper(gh<_i10.DateTimeBeautifyProvider>()));
  gh.lazySingleton<_i22.Mapper<_i26.NewsCategory, _i27.NewsCategoryVM>>(
      () => _i28.NewsCategoryToNewsCategoryVMMapper());
  gh.lazySingleton<_i22.Mapper<_i29.News, _i30.NewsVM>>(
      () => _i31.NewsToNewsVMMapper(
            gh<_i10.DateTimeBeautifyProvider>(),
            gh<_i12.DurationBeautifyProvider>(),
          ));
  gh.lazySingleton<_i22.Mapper<_i32.OnboardingTip, _i33.OnboardingTipVM>>(
      () => _i34.OnboardingTipToOnboardingTipVMMapper());
  gh.lazySingleton<_i22.Mapper<_i35.User, _i36.UserVM>>(
      () => _i37.UserToUserVMMapper());
  gh.lazySingleton<_i38.MyArchivedEventsCoordinator>(() =>
      _i39.ProdMyArchivedEventsCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i40.MyArchivedEventsStringProvider>(
      () => _i41.ProdMyArchivedEventsStringProvider());
  gh.lazySingleton<_i42.MyEventsCoordinator>(
      () => _i43.ProdMyEventsCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i44.MyEventsStringProvider>(
      () => _i45.ProdMyEventsStringProvider());
  gh.lazySingleton<_i46.NewsCoordinator>(
      () => _i47.ProdNewsCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i48.NewsListCoordinator>(
      () => _i49.ProdNewsListCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i50.NewsListStringProvider>(
      () => _i51.ProdNewsListStringProvider());
  gh.lazySingleton<_i52.NewsRepository>(() => _i53.TestNewsRepository());
  gh.lazySingleton<_i54.NewsStringProvider>(
      () => _i55.ProdNewsStringProvider());
  gh.lazySingleton<_i56.NotificationRepository>(
      () => _i57.ProdNotificationRepository());
  gh.lazySingleton<_i58.OnboardingCoordinator>(
      () => _i59.ProdOnboardingCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i60.OnboardingRepository>(
      () => _i61.ProdOnboardingRepository());
  gh.lazySingleton<_i62.OnboardingStringProvider>(
      () => _i63.ProdOnboardingStringProvider());
  gh.lazySingleton<_i64.TicketRepository>(() => _i65.TestTicketRepository());
  gh.lazySingleton<_i66.UpcomingEventsStringProvider>(
      () => _i67.ProdUpcomingEventsStringProvider());
  gh.lazySingleton<_i68.UserRepository>(() => _i69.TestUserRepository());
  gh.lazySingleton<_i70.AccountCoordinator>(
      () => _i71.ProdAccountCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.lazySingleton<_i72.AuthCoordinator>(
      () => _i73.ProdAuthCoordinator(goRouter: gh<_i17.GoRouter>()));
  gh.factory<_i74.HomeBloc>(() => _i74.HomeBloc(
        gh<_i56.NotificationRepository>(),
        gh<_i18.HomeStringProvider>(),
      ));
  gh.factory<_i75.MainBloc>(() => _i75.MainBloc(gh<_i76.MainCoordinator>()));
  gh.factory<_i77.MyArchivedEventsBloc>(() => _i77.MyArchivedEventsBloc(
        gh<_i64.TicketRepository>(),
        gh<_i14.EventRepository>(),
        gh<_i40.MyArchivedEventsStringProvider>(),
        gh<_i78.MyArchivedEventsCoordinator>(),
        gh<_i22.Mapper<_i23.Event, _i24.EventVM>>(),
      ));
  gh.factory<_i79.MyEventsBloc>(() => _i79.MyEventsBloc(
        gh<_i64.TicketRepository>(),
        gh<_i14.EventRepository>(),
        gh<_i44.MyEventsStringProvider>(),
        gh<_i42.MyEventsCoordinator>(),
        gh<_i22.Mapper<_i23.Event, _i24.EventVM>>(),
      ));
  gh.factory<_i80.NewsBloc>(() => _i80.NewsBloc(
        gh<_i52.NewsRepository>(),
        gh<_i54.NewsStringProvider>(),
        gh<_i46.NewsCoordinator>(),
        gh<_i22.Mapper<_i29.News, _i30.NewsVM>>(),
      ));
  gh.factory<_i81.NewsListBloc>(() => _i81.NewsListBloc(
        gh<_i52.NewsRepository>(),
        gh<_i82.NewsListStringProvider>(),
        gh<_i48.NewsListCoordinator>(),
        gh<_i22.Mapper<_i26.NewsCategory, _i27.NewsCategoryVM>>(),
        gh<_i22.Mapper<_i29.News, _i30.NewsVM>>(),
      ));
  gh.factory<_i83.OnboardingBloc>(() => _i83.OnboardingBloc(
        gh<_i60.OnboardingRepository>(),
        gh<_i22.Mapper<_i84.OnboardingTip, _i33.OnboardingTipVM>>(),
        gh<_i62.OnboardingStringProvider>(),
        gh<_i58.OnboardingCoordinator>(),
      ));
  gh.factory<_i85.UpcomingEventsBloc>(() => _i85.UpcomingEventsBloc(
        gh<_i14.EventRepository>(),
        gh<_i22.Mapper<_i23.Event, _i24.EventVM>>(),
        gh<_i66.UpcomingEventsStringProvider>(),
      ));
  gh.factory<_i86.AccountBloc>(() => _i86.AccountBloc(
        gh<_i7.AuthService>(),
        gh<_i68.UserRepository>(),
        gh<_i3.AccountStringProvider>(),
        gh<_i70.AccountCoordinator>(),
        gh<_i22.Mapper<_i35.User, _i36.UserVM>>(),
      ));
  gh.factory<_i87.AuthBloc>(() => _i87.AuthBloc(
        gh<_i88.AuthService>(),
        gh<_i8.AuthStringProvider>(),
        gh<_i72.AuthCoordinator>(),
      ));
  return getIt;
}

class _$RouterModule extends _i89.RouterModule {}
