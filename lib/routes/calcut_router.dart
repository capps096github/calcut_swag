// for app analytics
import '../swag_exporter.dart';

// FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

final calcutRouterProvider = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CalcutSwagConnect(),
      routes: [
        // ? --------- shirts ---------
        GoRoute(
          path: 'shirts',
          builder: (context, state) => const CalcutShirt(),
        ),
      ],
    ),
  ],

  // turn off the # in the URLs on the web
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: initialLocation,
  //  here our firebase analytics observers
  observers: [
    // FirebaseAnalyticsObserver(analytics: _analytics),
  ],
  restorationScopeId: "calcut_swag",
  errorBuilder: (context, state) => ErrorWidget(state.error.toString()),
);
