import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SplashScreenWidget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: LoginScreenWidget.routeName,
          path: LoginScreenWidget.routePath,
          builder: (context, params) => LoginScreenWidget(),
        ),
        FFRoute(
          name: MyBookingsWidget.routeName,
          path: MyBookingsWidget.routePath,
          builder: (context, params) => MyBookingsWidget(),
        ),
        FFRoute(
          name: MeetingRoomFilterWidget.routeName,
          path: MeetingRoomFilterWidget.routePath,
          builder: (context, params) => MeetingRoomFilterWidget(
            branchCode: params.getParam(
              'branchCode',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AppointVisitorWidget.routeName,
          path: AppointVisitorWidget.routePath,
          builder: (context, params) => AppointVisitorWidget(),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: ProfileScreenWidget.routeName,
          path: ProfileScreenWidget.routePath,
          builder: (context, params) => ProfileScreenWidget(),
        ),
        FFRoute(
          name: BookingConfirmationWidget.routeName,
          path: BookingConfirmationWidget.routePath,
          builder: (context, params) => BookingConfirmationWidget(
            startTime: params.getParam(
              'startTime',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: BookingSuccessWidget.routeName,
          path: BookingSuccessWidget.routePath,
          builder: (context, params) => BookingSuccessWidget(),
        ),
        FFRoute(
          name: VisitorListWidget.routeName,
          path: VisitorListWidget.routePath,
          builder: (context, params) => VisitorListWidget(),
        ),
        FFRoute(
          name: AppointVisitorFormWidget.routeName,
          path: AppointVisitorFormWidget.routePath,
          builder: (context, params) => AppointVisitorFormWidget(),
        ),
        FFRoute(
          name: VisitorDetailsWidget.routeName,
          path: VisitorDetailsWidget.routePath,
          builder: (context, params) => VisitorDetailsWidget(),
        ),
        FFRoute(
          name: VisitorQRCodeWidget.routeName,
          path: VisitorQRCodeWidget.routePath,
          builder: (context, params) => VisitorQRCodeWidget(),
        ),
        FFRoute(
          name: VisitorRegistrationSuccessWidget.routeName,
          path: VisitorRegistrationSuccessWidget.routePath,
          builder: (context, params) => VisitorRegistrationSuccessWidget(),
        ),
        FFRoute(
          name: CafeteriaHomeWidget.routeName,
          path: CafeteriaHomeWidget.routePath,
          builder: (context, params) => CafeteriaHomeWidget(),
        ),
        FFRoute(
          name: FoodDetailsWidget.routeName,
          path: FoodDetailsWidget.routePath,
          builder: (context, params) => FoodDetailsWidget(),
        ),
        FFRoute(
          name: CartWidget.routeName,
          path: CartWidget.routePath,
          builder: (context, params) => CartWidget(),
        ),
        FFRoute(
          name: OrderSuccessWidget.routeName,
          path: OrderSuccessWidget.routePath,
          builder: (context, params) => OrderSuccessWidget(),
        ),
        FFRoute(
          name: ParkingDashboardWidget.routeName,
          path: ParkingDashboardWidget.routePath,
          builder: (context, params) => ParkingDashboardWidget(),
        ),
        FFRoute(
          name: AvailableSlotsWidget.routeName,
          path: AvailableSlotsWidget.routePath,
          builder: (context, params) => AvailableSlotsWidget(),
        ),
        FFRoute(
          name: ParkingConfirmationWidget.routeName,
          path: ParkingConfirmationWidget.routePath,
          builder: (context, params) => ParkingConfirmationWidget(),
        ),
        FFRoute(
          name: ActiveParkingWidget.routeName,
          path: ActiveParkingWidget.routePath,
          builder: (context, params) => ActiveParkingWidget(),
        ),
        FFRoute(
          name: NotificationDetailsWidget.routeName,
          path: NotificationDetailsWidget.routePath,
          builder: (context, params) => NotificationDetailsWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: ActivityHomeScreen2Widget.routeName,
          path: ActivityHomeScreen2Widget.routePath,
          builder: (context, params) => ActivityHomeScreen2Widget(),
        ),
        FFRoute(
          name: GenerateQRSaveWidget.routeName,
          path: GenerateQRSaveWidget.routePath,
          builder: (context, params) => GenerateQRSaveWidget(),
        ),
        FFRoute(
          name: OtpWidget.routeName,
          path: OtpWidget.routePath,
          builder: (context, params) => OtpWidget(),
        ),
        FFRoute(
          name: RedesignThisVehiclePageWidget.routeName,
          path: RedesignThisVehiclePageWidget.routePath,
          builder: (context, params) => RedesignThisVehiclePageWidget(),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: DashboardShimmerWidget.routeName,
          path: DashboardShimmerWidget.routePath,
          builder: (context, params) => DashboardShimmerWidget(),
        ),
        FFRoute(
          name: LocationSearchWidget.routeName,
          path: LocationSearchWidget.routePath,
          builder: (context, params) => LocationSearchWidget(),
        ),
        FFRoute(
          name: RoomDashboardWidget.routeName,
          path: RoomDashboardWidget.routePath,
          builder: (context, params) => RoomDashboardWidget(),
        ),
        FFRoute(
          name: AddVisitorWidget.routeName,
          path: AddVisitorWidget.routePath,
          builder: (context, params) => AddVisitorWidget(),
        ),
        FFRoute(
          name: EnterpriseDesignSystemWidget.routeName,
          path: EnterpriseDesignSystemWidget.routePath,
          builder: (context, params) => EnterpriseDesignSystemWidget(),
        ),
        FFRoute(
          name: AllAvailableRoomsWidget.routeName,
          path: AllAvailableRoomsWidget.routePath,
          builder: (context, params) => AllAvailableRoomsWidget(),
        ),
        FFRoute(
          name: MeetingRoomFilterCopyWidget.routeName,
          path: MeetingRoomFilterCopyWidget.routePath,
          builder: (context, params) => MeetingRoomFilterCopyWidget(
            branchCode: params.getParam(
              'branchCode',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: VisitorManagementWidget.routeName,
          path: VisitorManagementWidget.routePath,
          builder: (context, params) => VisitorManagementWidget(),
        ),
        FFRoute(
          name: AddNewVisitorWidget.routeName,
          path: AddNewVisitorWidget.routePath,
          builder: (context, params) => AddNewVisitorWidget(
            visitorPhoto: params.getParam(
              'visitorPhoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: CaptureVisitorPhotoWidget.routeName,
          path: CaptureVisitorPhotoWidget.routePath,
          builder: (context, params) => CaptureVisitorPhotoWidget(),
        ),
        FFRoute(
          name: ReviewPhotoWidget.routeName,
          path: ReviewPhotoWidget.routePath,
          builder: (context, params) => ReviewPhotoWidget(
            visitorPhoto: params.getParam(
              'visitorPhoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: VisitorPassWidget.routeName,
          path: VisitorPassWidget.routePath,
          builder: (context, params) => VisitorPassWidget(
            visitorId: params.getParam(
              'visitorId',
              ParamType.int,
            ),
            visitId: params.getParam(
              'visitId',
              ParamType.int,
            ),
            qrToken: params.getParam(
              'qrToken',
              ParamType.String,
            ),
            qrImageUrl: params.getParam(
              'qrImageUrl',
              ParamType.String,
            ),
            visitorName: params.getParam(
              'visitorName',
              ParamType.String,
            ),
            company: params.getParam(
              'company',
              ParamType.String,
            ),
            visitDate: params.getParam(
              'visitDate',
              ParamType.String,
            ),
            startTime: params.getParam(
              'startTime',
              ParamType.String,
            ),
            endTime: params.getParam(
              'endTime',
              ParamType.String,
            ),
            hostName: params.getParam(
              'hostName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ScanVisitorQRWidget.routeName,
          path: ScanVisitorQRWidget.routePath,
          builder: (context, params) => ScanVisitorQRWidget(),
        ),
        FFRoute(
          name: VisitorVerificationCardWidget.routeName,
          path: VisitorVerificationCardWidget.routePath,
          builder: (context, params) => VisitorVerificationCardWidget(),
        ),
        FFRoute(
          name: CheckInSuccessWidget.routeName,
          path: CheckInSuccessWidget.routePath,
          builder: (context, params) => CheckInSuccessWidget(),
        ),
        FFRoute(
          name: CheckOutVerificationWidget.routeName,
          path: CheckOutVerificationWidget.routePath,
          builder: (context, params) => CheckOutVerificationWidget(),
        ),
        FFRoute(
          name: ActivityHomeScreen2CopyWidget.routeName,
          path: ActivityHomeScreen2CopyWidget.routePath,
          builder: (context, params) => ActivityHomeScreen2CopyWidget(),
        ),
        FFRoute(
          name: NewScreen1Widget.routeName,
          path: NewScreen1Widget.routePath,
          builder: (context, params) => NewScreen1Widget(),
        ),
        FFRoute(
          name: UpcomingBookingsListWidget.routeName,
          path: UpcomingBookingsListWidget.routePath,
          builder: (context, params) => UpcomingBookingsListWidget(),
        ),
        FFRoute(
          name: NewVisitorRegistrationWidget.routeName,
          path: NewVisitorRegistrationWidget.routePath,
          builder: (context, params) => NewVisitorRegistrationWidget(),
        ),
        FFRoute(
          name: NewVistorModuleWidget.routeName,
          path: NewVistorModuleWidget.routePath,
          builder: (context, params) => NewVistorModuleWidget(),
        ),
        FFRoute(
          name: NewScreen4Widget.routeName,
          path: NewScreen4Widget.routePath,
          builder: (context, params) => NewScreen4Widget(),
        ),
        FFRoute(
          name: TestchckWidget.routeName,
          path: TestchckWidget.routePath,
          builder: (context, params) => TestchckWidget(),
        ),
        FFRoute(
          name: VisitorCheckInWidget.routeName,
          path: VisitorCheckInWidget.routePath,
          builder: (context, params) => VisitorCheckInWidget(),
        ),
        FFRoute(
          name: VisitorCheckOutWidget.routeName,
          path: VisitorCheckOutWidget.routePath,
          builder: (context, params) => VisitorCheckOutWidget(),
        ),
        FFRoute(
          name: VisitorSuccessWidget.routeName,
          path: VisitorSuccessWidget.routePath,
          builder: (context, params) => VisitorSuccessWidget(),
        ),
        FFRoute(
          name: AddNewVisitorAutofillWidget.routeName,
          path: AddNewVisitorAutofillWidget.routePath,
          builder: (context, params) => AddNewVisitorAutofillWidget(
            visitorPhoto: params.getParam(
              'visitorPhoto',
              ParamType.FFUploadedFile,
            ),
            phone: params.getParam(
              'phone',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CreateVisitorWidget.routeName,
          path: CreateVisitorWidget.routePath,
          builder: (context, params) => CreateVisitorWidget(),
        ),
        FFRoute(
          name: AppointmentSuccessWidget.routeName,
          path: AppointmentSuccessWidget.routePath,
          builder: (context, params) => AppointmentSuccessWidget(),
        ),
        FFRoute(
          name: VisitorAppointmentsListWidget.routeName,
          path: VisitorAppointmentsListWidget.routePath,
          builder: (context, params) => VisitorAppointmentsListWidget(),
        ),
        FFRoute(
          name: AppointmentDetailsWidget.routeName,
          path: AppointmentDetailsWidget.routePath,
          builder: (context, params) => AppointmentDetailsWidget(),
        ),
        FFRoute(
          name: NewScreen12Widget.routeName,
          path: NewScreen12Widget.routePath,
          builder: (context, params) => NewScreen12Widget(),
        ),
        FFRoute(
          name: CreateAppointmentNewWidget.routeName,
          path: CreateAppointmentNewWidget.routePath,
          builder: (context, params) => CreateAppointmentNewWidget(
            visitorId: params.getParam(
              'visitorId',
              ParamType.int,
            ),
            vehicle: params.getParam(
              'vehicle',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
