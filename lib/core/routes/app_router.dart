import '../../decoar.dart';
import '../../main.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: Routes.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
